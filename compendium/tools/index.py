#!/usr/bin/env python3
"""Generate the graded index of the compendium from its LaTeX source and the module metadata.

Usage: index.py TEXDIR CHAPTERS.tsv LEANDIRS OUTDIR
LEANDIRS is one directory or several separated by ':'; declarations are looked up in all of them.
Numbers follow LaTeX: sections count continuously (lettered after \\appendix) and the five boxed
environments share one counter within each section.
"""
import re, sys, pathlib, collections, csv

tex, chapters_tsv, out = pathlib.Path(sys.argv[1]), pathlib.Path(sys.argv[2]), pathlib.Path(sys.argv[4])
leandirs = [pathlib.Path(d) for d in sys.argv[3].split(':') if d]
CHAPTERS = {r['chapter_label']: r for r in csv.DictReader(open(chapters_tsv), delimiter='\t')}
order = ['front'] + [p.stem for p in sorted((tex / 'parts').glob('*.tex'))] + ['back', 'instruments']
GRADE = {'chtheorem': 'THEOREM', 'chconditional': 'CONDITIONAL', 'chwall': 'OPEN',
         'chdefinition': 'DEFINITION', 'chtable': 'TABLE'}

def balanced(s, i, open_, close_):
    depth = 0
    for j in range(i, len(s)):
        if s[j] == open_: depth += 1
        elif s[j] == close_:
            depth -= 1
            if depth == 0: return s[i+1:j], j + 1
    return s[i+1:], len(s)

def arg_after(s, pos, name):
    m = re.compile(r'\\' + name + r'\{').search(s, pos)
    if not m: return None, pos
    a, e = balanced(s, m.end() - 1, '{', '}')
    return a, e

# declarations present in the Lean sources: names declared by a keyword, with their namespaces
declared = set()
kw = re.compile(r'^\s*(?:@\[[^\]]*\]\s*)?(?:private\s+|protected\s+|noncomputable\s+)*(?:theorem|def|abbrev|structure|opaque|axiom|inductive|instance|lemma|class)\s+([^\s:({\[]+)', re.M)
for leandir in leandirs:
    for p in leandir.rglob('*.lean'):
        if '.lake' in p.parts: continue
        txt = p.read_text(errors='ignore')
        ns = [m.group(1) for m in re.finditer(r'^namespace\s+(\S+)', txt, re.M)]
        for m in kw.finditer(txt):
            n = m.group(1)
            declared.add(n.split('.')[-1])
            for q in ns: declared.add(q + '.' + n)
def lean_exists(name):
    return name in declared or name.split('.')[-1] in declared

secnum = 0; appendix = False; instruments = False; part = ('', 'Front matter'); slug = 'front'
rows = []; sections = []
for f in order:
    path = tex / (f + '.tex') if f in ('front', 'back', 'instruments') else tex / 'parts' / (f + '.tex')
    s = path.read_text()
    slug = f
    token = re.compile(r'\\part\*\{|\\appendix\b|\\section\{|\\begin\{(chtheorem|chconditional|chwall|chdefinition|chtable)\}')
    pos = 0; cur = None; k = 0
    while True:
        m = token.search(s, pos)
        if not m: break
        t = m.group(0)
        if t.startswith(r'\part*'):
            title, e = balanced(s, m.end() - 1, '{', '}')
            title = re.sub(r'\\\\\[5pt\]\{\\large ([^}]*)\}', r' — \1', title)
            num = re.match(r'Part ([IVX]+)\.\s*(.*)', title)
            part = (num.group(1), num.group(2)) if num else ('', title)
            if title.strip() == 'Instruments':
                instruments = True; appendix = False; secnum = 0; part = ('Instr', 'Instruments')
            pos = e
        elif t.startswith(r'\appendix'):
            appendix = True; secnum = 0; part = ('App', 'Appendices'); pos = m.end()
        elif t.startswith(r'\section{'):
            title, e = balanced(s, m.end() - 1, '{', '}')
            secnum += 1; k = 0
            label = re.match(r'\s*\\label\{([^}]*)\}', s[e:e+400])
            sid = label.group(1)[4:] if label and label.group(1).startswith('mod:') else ''
            number = f'I.{secnum}' if instruments else (chr(64 + secnum) if appendix else str(secnum))
            ch = CHAPTERS.get(sid, {})
            meta = {'row_address': ch.get('record', '')}
            leans = ch.get('lean', '').split()
            cur = dict(file=slug, part=part, number=number, title=title, module=sid,
                       record=meta.get('row_address', ''), lean=leans,
                       lean_found=[n for n in leans if lean_exists(n)])
            sections.append(cur); pos = e
        else:
            env = m.group(1)
            k += 1
            opt = ''
            e = m.end()
            if s[e:e+1] == '[': opt, e = balanced(s, e, '[', ']')
            endpos = s.find(r'\end{' + env + '}', e)
            nxt = token.search(s, endpos)
            limit = nxt.start() if nxt else len(s)
            standing, _ = arg_after(s[:limit], endpos, 'chstanding')
            deps_from, p2 = arg_after(s[:limit], endpos, 'chdeps')
            deps_used, _ = (arg_after(s[:limit], p2 - 1, '') if False else (None, None))
            if deps_from is not None:
                d2 = re.compile(r'\\chdeps\{').search(s, endpos)
                a, e2 = balanced(s, d2.end() - 1, '{', '}'); b, _ = balanced(s, e2, '{', '}')
                deps_from, deps_used = a, b
            number = f"{cur['number']}.{k}" if cur else f'?.{k}'
            rows.append(dict(file=slug, part=part, section=cur['number'] if cur else '', section_title=cur['title'] if cur else '',
                             number=number, grade=GRADE[env], title=opt.strip(), standing=(standing or '').strip(),
                             premises=(deps_from or '').strip(), used_by=(deps_used or '').strip(),
                             record=cur['record'] if cur else '', lean=' '.join(cur['lean']) if cur else ''))
            pos = endpos + 1

out.mkdir(parents=True, exist_ok=True)
def clean(x):
    x = re.sub(r'\\(emph|textit|textbf|texttt)\{([^}]*)\}', r'\2', x)
    x = x.replace('~', ' ').replace(r'\,', ' ').replace('\n', ' ')
    return re.sub(r'\s+', ' ', x).strip().replace('|', '\\|')
with open(out / 'statements.tsv', 'w', newline='') as fh:
    w = csv.writer(fh, delimiter='\t')
    w.writerow(['number', 'grade', 'part', 'section', 'title', 'standing', 'premises', 'used_by', 'lean'])
    for r in rows:
        w.writerow([r['number'], r['grade'], r['part'][0], r['section_title'] and clean(r['section_title']), clean(r['title']),
                    clean(r['standing']), clean(r['premises']), clean(r['used_by']), r['lean']])

GROUPS = [('Foundations', ['I', 'II', 'III', 'IV', 'V']), ('The six cells', ['VI', 'VII', 'VIII', 'IX', 'X', 'XI']),
          ('Applications', ['XII', 'XIII', 'XIV', 'XV']), ('Scorecard', ['XVI']), ('Appendices', ['App']), ('Instruments', ['Instr'])]
files = collections.OrderedDict()
for s in sections:
    files.setdefault(s['file'], s['part'])
tally = collections.defaultdict(collections.Counter)
for r in rows: tally[r['part'][0]][r['grade']] += 1
sec_lean = collections.Counter((s['part'][0], bool(s['lean']), bool(s['lean_found'])) for s in sections)

def part_page(fname, part):
    lines = [f"# Part {part[0]}. {clean(part[1])}" if part[0] not in ('', 'App', 'Instr') else f"# {part[1]}", '',
             f"PDF: [`pdf/{fname}.pdf`](../pdf/{fname}.pdf)" if part[0] not in ('', 'App') else 'PDF: [`pdf/compendium.pdf`](../pdf/compendium.pdf)', '',
             '| Theorems | Conditional theorems | Open results | Tables | Definitions |', '|---|---|---|---|---|',
             '| {THEOREM} | {CONDITIONAL} | {OPEN} | {TABLE} | {DEFINITION} |'.format(**{g: tally[part[0]][g] for g in GRADE.values()}), '']
    for s in [x for x in sections if x['file'] == fname]:
        mine = [r for r in rows if r['file'] == fname and r['section'] == s['number']]
        head = f"## {s['number']}. {clean(s['title'])}"
        lines.append(head)
        meta = []
        if s['lean']:
            names = ', '.join(f"`{n}`" + ('' if n in s['lean_found'] else ' (not found in the package)') for n in s['lean'])
            meta.append('Lean: ' + names)
        else:
            meta.append('Lean: none')
        lines.append(' · '.join(meta)); lines.append('')
        if mine:
            lines += ['| No. | Grade | Statement | Standing |', '|---|---|---|---|']
            for r in mine:
                lines.append(f"| {r['number']} | {r['grade']} | {clean(r['title']) or '—'} | {clean(r['standing']) or '—'} |")
            lines.append('')
    return '\n'.join(lines) + '\n'

for fname, part in files.items():
    if fname == 'front': continue
    (out / f'{fname}.md').write_text(part_page(fname, part))

tot = collections.Counter(r['grade'] for r in rows)
lean_secs = sum(1 for s in sections if s['lean']); lean_ok = sum(1 for s in sections if s['lean'] and len(s['lean_found']) == len(s['lean']))
idx = ['# Index of the compendium', '',
       'Generated from the LaTeX source in `compendium/tex` and `compendium/index/chapters.tsv` by `compendium/tools/index.py`; do not edit by hand. Every boxed statement of the compendium is listed with its number, its grade as the text boxes it, and its standing line. `statements.tsv` holds the same rows with premises and users.', '',
       '| Grade | Count |', '|---|---|'] + [f'| {g} | {tot[g]} |' for g in ['THEOREM', 'CONDITIONAL', 'OPEN', 'TABLE', 'DEFINITION']] + [
       '', f'{len(sections)} numbered chapters; {lean_secs} name Lean declarations, and for {lean_ok} of them every named declaration is found in the Lean sources: the packages of `compendium/lean`, and for the alpha chapter the Letter\'s file in `papers/alpha/lean`.', '']
for gname, romans in GROUPS:
    idx += [f'## {gname}', '', '| Part | Pages | Theorems | Conditional | Open |', '|---|---|---|---|---|']
    for fname, part in files.items():
        if part[0] in romans:
            t = tally[part[0]]
            label = {'App': 'Appendices and the two appendix chapters', 'Instr': 'Instruments: the instrument chapters the Parts list'}.get(part[0], f'{part[0]}. {clean(part[1])}')
            idx.append(f"| [{label}]({fname}.md) | [PDF](../pdf/{fname}.pdf) | {t['THEOREM']} | {t['CONDITIONAL']} | {t['OPEN']} |" if part[0] != 'App'
                       else f"| [{label}]({fname}.md) | [PDF](../pdf/compendium.pdf) | {t['THEOREM']} | {t['CONDITIONAL']} | {t['OPEN']} |")
    idx.append('')
(out / 'README.md').write_text('\n'.join(idx) + '\n')
# the boxed statements of this release by Part, for Table 237.1 in Part XVI
ROMAN = ['I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX', 'X', 'XI', 'XII', 'XIII', 'XIV', 'XV', 'XVI']
lean_by = collections.Counter(r['part'][0] for r in rows if r['grade'] == 'THEOREM' and r['lean'])
def bp_row(label, keys):
    t = sum((tally[k] for k in keys), collections.Counter())
    return (f"{label} & {t['THEOREM']} & {sum(lean_by[k] for k in keys)} & {t['CONDITIONAL']} & {t['OPEN']} & {t['TABLE']} & {t['DEFINITION']} \\\\")
bp = ['% Generated by compendium/tools/index.py from the boxed statements; do not edit by hand.',
      '% Rows of Table 237.1: Part, theorems, of them tied to Lean, conditional theorems, open results, tables, definitions.']
bp += [bp_row(k, [k]) for k in ROMAN if k in tally]
bp += [bp_row('appendices', ['App'])] if 'App' in tally else []
bp += [bp_row('instruments', ['Instr'])] if 'Instr' in tally else []
others = [k for k in tally if k not in ROMAN + ['App', 'Instr']]
bp += [bp_row('front matter', others)] if others else []
bp += ['\\hline', bp_row('all', list(tally))]
BY_PART = '\n'.join(bp[2:])
lean_thm = sum(1 for r in rows if r['grade'] == 'THEOREM' and r['lean'])
(out / 'counts.tex').write_text(
    '% Generated by compendium/tools/index.py from the boxed statements; do not edit by hand.\n'
    f"\\newcommand{{\\atlasTheorems}}{{{tot['THEOREM']}}}\n"
    f"\\newcommand{{\\atlasConditionals}}{{{tot['CONDITIONAL']}}}\n"
    f"\\newcommand{{\\atlasOpen}}{{{tot['OPEN']}}}\n"
    f"\\newcommand{{\\atlasTheoremsLean}}{{{lean_thm}}}\n"
    '% The rows of Table 237.1: Part, theorems, of them tied to Lean, conditional theorems, open results, tables, definitions.\n'
    f"\\newcommand{{\\atlasByPartRows}}{{%\n{BY_PART}}}\n")
print('sections', len(sections), 'statements', len(rows), dict(tot), 'lean sections', lean_secs, 'all found', lean_ok)
