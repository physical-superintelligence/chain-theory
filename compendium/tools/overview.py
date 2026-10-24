#!/usr/bin/env python3
"""Generate compendium/OVERVIEW.md: for each Part, the first paragraph of its introduction and its
theorems and conditional theorems by title, from compendium/tex and compendium/index/statements.tsv.

Usage: overview.py COMPENDIUMDIR [OUTFILE]   (OUTFILE defaults to COMPENDIUMDIR/OVERVIEW.md)
"""
import re,pathlib,csv,collections,sys
root=pathlib.Path(sys.argv[1]); T=root/'tex/parts'
rows=list(csv.DictReader(open(root/'index/statements.tsv'),delimiter='\t'))
def md(t):
    t=re.sub(r'\\label\{[^}]*\}','',t); t=re.sub(r'\\cite\{[^}]*\}','',t)
    t=re.sub(r'\\(?:mod)?ref\{[^}]*\}','',t)
    for a,b in [(r'\\emph\{([^}]*)\}',r'*\1*'),(r'\\textit\{([^}]*)\}',r'*\1*'),(r'\\textbf\{([^}]*)\}',r'**\1**')]: t=re.sub(a,b,t)
    t=re.sub(r'\$([^$]*)\$',lambda m:m.group(1).replace('\\times','×').replace('\\to','→').replace('\\le','≤').replace('\\ge','≥').replace('\\alpha','α').replace('^{-1}','⁻¹').replace('{','').replace('}',''),t)
    t=t.replace('~',' ').replace('``','"').replace("''",'"').replace('\\,',' ').replace('---','—').replace('--','–')
    return re.sub(r'\s+',' ',t).strip()
def n(k,word): return f'{k} {word}' + ('' if k==1 else 's')
parts=[]
for p in sorted(T.glob('*.tex')):
    s=p.read_text()
    title=re.search(r'\\part\*\{(.*?)\}\s*\n',s).group(1)
    title=re.sub(r'\\\\\[5pt\]\{\\large (.*)\}$',r': \1',title)
    m=re.search(r'\\section\*\{Introduction to Part [IVX]+\}(.*?)(?=\\section)',s,re.S)
    first=''
    if m:
        txt=re.sub(r'\\addcontentsline\{[^}]*\}\{[^}]*\}\{[^}]*\}|\\label\{[^}]*\}','',m.group(1)).strip()
        txt=re.sub(r'\\par\\noindent\\fbox\{\\parbox\{[^}]*\}\{.*?\}\}\\par(\\medskip)?','',txt,flags=re.S).strip()  # editorial notes boxed at the head of a Part
        paras=[x for x in re.split(r'\n\s*\n',txt) if md(x)]
        first=md(paras[0]) if paras else ''
    roman=re.match(r'Part ([IVX]+)\.',title).group(1)
    parts.append((p.stem,title,first,[r for r in rows if r['part']==roman]))
groups=[('Foundations',['01','02','03','04','05']),('The six cells',['06','07','08','09','10','11']),('Applications',['12','13','14','15']),('Scorecard',['16'])]
out=['# The Chain Theory compendium: an overview','',
"> **Draft for the author's review.** This overview is assembled from the compendium itself: the first paragraph of each Part's introduction, in the author's words, and the graded statements of that Part, from the generated index. It adds no claim of its own. The full statements, their conditions and their derivations are in the Part PDFs.",'',
'## The axiom','',
'> *Nothing exists but finitely many maximally entangled pairs of qudits, some qudits shared, known only by distilling them.*','',
'The compendium reads physics off the types of link between two ends of dimensions M and N. The six cells, Parts VI to XI, are the links (2,2), (3,2), (4,2), (3,3), (4,3) and (4,4). The alpha Letter in [`papers/alpha`](../papers/alpha) treats one result of the (3,2) cell on its own terms.','',
'## How to read the grades','',
'| Grade | Meaning in the compendium |','|---|---|',
'| Theorem | derived from the axiom and its definitions, by the derivation given in its chapter |',
'| Conditional theorem | derived under conditions named in its box |',
'| Open result | stated, and carried to a named step that remains open |','',
"Each Part's [index page](index/README.md) gives every statement with its standing line, its premises, its Lean declarations and its record number. What the Lean checks is set out in [`README.md`](README.md#what-the-lean-checks).",'']
tot=collections.Counter()
for gname,prefixes in groups:
    out+=[f'## {gname}','']
    for stem,title,first,mine in parts:
        if stem[:2] not in prefixes: continue
        c=collections.Counter(r['grade'] for r in mine); tot.update(c)
        line=f'[Index](index/{stem}.md) · [PDF](pdf/{stem}.pdf)'
        if c['THEOREM']+c['CONDITIONAL']+c['OPEN']:
            line+=f' · {n(c["THEOREM"],"theorem")}, {n(c["CONDITIONAL"],"conditional theorem")}, {n(c["OPEN"],"open result")}'
        out+=[f'### {title}','',line,'']
        if first: out+=[first,'']
        th=[r for r in mine if r['grade'] in ('THEOREM','CONDITIONAL')]
        if th:
            out+=['| No. | Grade | Statement |','|---|---|---|']
            out+=[f"| {r['number']} | {'Theorem' if r['grade']=='THEOREM' else 'Conditional'} | {r['title'] or r['section']} |" for r in th]
            out.append('')
        if c['OPEN']: out+=[f'The {n(c["OPEN"],"open result")} of this Part {"is" if c["OPEN"]==1 else "are"} listed in its [index](index/{stem}.md).','']
        if not th and not c['OPEN']:
            out+=[f'This Part has no theorem, conditional theorem or open result in this release; {"its one box is a table" if c["TABLE"]==1 else "its boxes are " + n(c["TABLE"],"table")}.','']
out+=['## Totals','',f'{tot["THEOREM"]} theorems, {tot["CONDITIONAL"]} conditional theorems and {tot["OPEN"]} open results in the sixteen Parts; the appendices and the [instruments](index/instruments.md) hold the rest of the boxed statements counted in [`README.md`](README.md#the-count-as-of-this-release).','']
(pathlib.Path(sys.argv[2]) if len(sys.argv)>2 else root/'OVERVIEW.md').write_text('\n'.join(out)+'\n')
print(len(out),'lines', sum(len(l.split()) for l in out),'words', dict(tot))
