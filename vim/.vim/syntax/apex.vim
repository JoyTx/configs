syn match apexStructure /\(class\s\)\@<=\u\w\+/
" syn match apexStructure /\(public\s\)\@<=\L\w\+\(?=()\)/
syn match apexStructure /\(public\s\)\@<=\u\w\+\(()\)\@=/
hi link apexStructure Typedef

syn keyword apexScope public protected private
hi link apexScope Statement

syn match apexAnnotation /@\w\+/
hi link apexAnnotation Typedef

syn keyword apexStructureType class interface enum trigger
hi link apexStructureType Statement

syn keyword apexKeywords final static virtual
syn keyword apexKeywords extends implements
syn keyword apexKeywords new void this super null
syn keyword apexKeywords if else switch when
syn keyword apexKeywords for in do while break continue
syn keyword apexKeywords try catch finally throw
syn keyword apexKeywords with without sharing 
hi link apexKeywords Statement

syn region apexCodeBlock start="{" end="}" fold transparent

syn region apexCommentBlock start="/\*" end="\*/"
hi link apexCommentBlock Comment

syn region apexSOQL start="\["hs=e+1 end="\]"he=s-1 contains=apexSOQLParam
hi link apexSOQL GruvboxOrange

syn match apexSOQLParam ":\w\+" contained
hi link apexSOQLParam GruvboxBlue
syn match apexComment "//.*"
hi link apexComment Comment

syn region apexString start="'"hs=e+1 end="'"he=s-1
hi link apexString String

syn keyword apexDML insert update delete upsert updelete merge
hi link apexDML Special

syn keyword apexLibClasses System Test 
syn keyword apexLibClasses Account Contact
hi link apexLibClasses StorageClass

sy region par1 matchgroup=par1 start=/(/ end=/)/ contains=par2
sy region par2 matchgroup=par2 start=/(/ end=/)/ contains=par3 contained
sy region par3 matchgroup=par3 start=/(/ end=/)/ contains=par1 contained
hi par1 ctermfg=red guifg=red
hi par2 ctermfg=blue guifg=blue
hi par3 ctermfg=darkgreen guifg=darkgreen
