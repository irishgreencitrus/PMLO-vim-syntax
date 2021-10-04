" Vim syntax file
" Language: PMLO
" Maintainer: irishgreencitrus
"
if exists("b:current_syntax")
		finish
endif

syntax region pmloComment start="@" end="$"
syntax match pmloNumbers "\d+"
syntax match pmloRange "\d+\.\.\d+"
syntax match pmloLabel "(?<=::)[A-Z_]+"
syntax match pmloLabelFunction "[a-z_]+:[A-Z_]+"
syntax match pmloRegisterFunction "[a-z_]+<[a-z]>"
syntax match pmloStackFunction "[a-z_]+<[0-9]+>"
syntax match pmloOpenScope "\["
syntax match pmloCloseScope "\]"
syntax region pmloString start=/\v"/ end=/\v"/

highlight default link pmloComment Comment
highlight default link pmloNumbers Constant
highlight default link pmloRange Constant
highlight default link pmloLabel Type
highlight default link pmloLabelFunction Identifier
highlight default link pmloRegisterFunction Identifier
highlight default link pmloStackFunction Identifier
highlight default link pmloOpenStack PreProc
highlight default link pmloCloseScope PreProc
highlight default link pmloString String

let b:current_syntax = "pmlo"
