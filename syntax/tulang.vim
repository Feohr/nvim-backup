syntax keyword Repeat while index
syntax keyword Keyword let to return constant
syntax keyword Conditional if else break continue
syntax keyword Type Int Float Bool Str Char
syntax keyword Boolean true false
syntax keyword FunctionKeyword f contained

syntax match Special '->'
syntax match Comment ":.*$"
syntax match Float '\<[0-9]*[.]\?[0-9]*[[eE]\?+\=\d\+]\?\>'
syntax match Operator '[+|-|*|\/|<|>|=]'
syntax match Typedef '\<[A-Z][a-zA-Z]*\>'
syntax match Constant '\<[A-Z_][A-Z0-9_]*\>'

syntax match FunctionDef "\s\+\k\+ f\>" contains=FunctionKeyword contained
syntax match Function "\s\+\k\+ f\>\ze\s*" contains=FunctionDef

syntax match FunctionCall '\a*\ze('

syntax region Comment start="#" end="#"
syntax region String start="\"" end="\""
syntax region Character start="'" end="'"

hi FunctionDef guifg=salmon
hi FunctionKeyword guifg=LightCyan
hi Constant guifg=LightRed
hi Special guifg=#ff00ff
hi Typedef guifg=#25afff
hi FunctionCall guifg=#E0ECE4
