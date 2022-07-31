syn match apexStructure /\(class\s\)\@<=\L\w\+/
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
hi link apexKeywords Statement

syn region apexCodeBlock start="{" end="}" fold transparent

syn region apexCommentBlock start="/\*" end="\*/"
hi link apexCommentBlock Comment

syn match apexComment "//.*"
hi link apexComment Comment

syn region apexString start="'"hs=e+1 end="'"he=s-1
hi link apexString String

syn keyword apexDML insert update delete upsert updelete merge
hi link apexDML Special

syn keyword apexLibClasses System Test 
syn keyword apexLibClasses Contact
hi link apexLibClasses StorageClass
