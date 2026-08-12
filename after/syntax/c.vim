syn keyword cTodo contained BUG NOTE INFO WARN
syn keyword cBoolean true false TRUE FALSE

syn cluster cParenGroup add=cStructMember
syn cluster cPreProcGroup add=cStructMember
syn cluster cMultiGroup add=cStructMember

syn match cUserFunction "\<\h\w*\ze\_s\{-}(\%(\*\h\w*)\_s\{-}(\)\@!"
syn match cUserFunctionPointer "\%((\s*\*\s*\)\@6<=\h\w*\ze\s*)\_s\{-}(.*)"
syn match cMemberAccess "\.\|->" nextgroup=cStructMember,cppTemplateKeyword
syn match cStructMember "\<\h\w*\>\%((\|<\)\@!" contained
syn match cTypeName "\%(\<\%(struct\|union\|enum\)\s\+\)\@8<=\h\w*"
syn match cOperator "[?!~*&%<>^|=,+]"
syn match cOperator "[][]"
syn match cOperator "[^:]\@1<=:[^:]\@="
syn match cOperator "-[^>]"me=e-1
syn match cOperator "/[^/*]"me=e-1

hi def link cUserFunction Function
hi def link cUserFunctionPointer Function
hi def link cStructMember Identifier
hi def link cTypeName Type
hi def link cBoolean  Boolean
hi def link cAnsiName Identifier
hi! def link cStorageClass Statement
hi! def link cStructure    Statement
hi! def link cTypedef      Statement
hi! def link cLabel        Statement
