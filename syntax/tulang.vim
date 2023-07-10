syntax keyword Repeat while index
syntax keyword Keyword to return constant declare public fn let
syntax keyword Conditional if else break continue
syntax keyword Type Int Float Bool Str Char Null
syntax keyword Boolean true false

syntax keyword FunctionType Fn contained
syntax keyword FunctionKeyword fn contained

syntax match Special '->'
syntax match Comment ":.*$"
syntax match Keyword '\$'
syntax match Number '\<0[x|o|b].*\>'
syntax match Float '\<[0-9]*[.]\?[0-9]*[[eE]\?+\=\d\+]\?\>'
syntax match Operator '[+|-|*|\/|<|>|=]'
syntax match Typedef '\<[A-Z][a-zA-Z]*\>'
syntax match Constant '\<[A-Z_][A-Z0-9_]*\>'
syntax match Identifier '\k\+\ze('
syntax match Delimiter '[()]'

syntax match FunctionIdentifier '\<[a-z_][a-zA-z0-9_]*\>' contained
syntax match FunctionDefinition '\k*\s\+\(Fn\)\?\s*=\s*fn' contains=FunctionIdentifier,FunctionType,FunctionKeyword

syntax region Comment start="#" end="#"
syntax region String start="\"" end="\""
syntax region Character start="'" end="'"

hi link FunctionType Type
hi link FunctionIdentifier Function
hi link FunctionKeyword Keyword

hi Delimiter guifg=LightGray
