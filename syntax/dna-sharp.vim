" ============================================================================
" File: dna-sharp.vim
" Maintainer: https://github.com/EvanQuan/vim-dna-sharp/
" Version: 0.2.0
"
" Syntax highlighting for dna-sharp files.
" ============================================================================

if exists("b:current_syntax")
  finish
endif

" syntax match dnaComment /\/\*\(\)\*\// keepend contained
" syntax region dnaComment start=/\/\*/ end=/\*\// keepend contained contains=dnaTODO
syntax keyword dnaTODO TODO FIXME XXX contained
syntax match dnaNOTE /[A-Z]\+[a-zA-Z]*:/ contained
syntax region dnaComment start=/\/\*/ end=/\*\// keepend contains=dnaTODO,dnaNOTE
syntax match dnaPointerIncrement    /A\(-\| \|\n\)*T\(-\| \|\n\)*A\(-\| \|\n\)*T/ contains=dnaComment extend " >
syntax match dnaPointerDecrement    /A\(-\| \|\n\)*T\(-\| \|\n\)*G\(-\| \|\n\)*C/ contains=dnaComment extend " <
syntax match dnaMemoryCellIncrement /A\(-\| \|\n\)*T\(-\| \|\n\)*T\(-\| \|\n\)*A/ contains=dnaComment extend " +
syntax match dnaMemoryCellDecrement /A\(-\| \|\n\)*T\(-\| \|\n\)*C\(-\| \|\n\)*G/ contains=dnaComment extend " -
syntax match dnaOutputASCII         /G\(-\| \|\n\)*C\(-\| \|\n\)*A\(-\| \|\n\)*T/ contains=dnaComment extend " .
syntax match dnaInputASCII          /G\(-\| \|\n\)*C\(-\| \|\n\)*G\(-\| \|\n\)*C/ contains=dnaComment extend " ,
syntax match dnaJumpIfFalse         /G\(-\| \|\n\)*C\(-\| \|\n\)*T\(-\| \|\n\)*A/ contains=dnaComment extend " [
syntax match dnaJumpIfTrue          /G\(-\| \|\n\)*C\(-\| \|\n\)*C\(-\| \|\n\)*G/ contains=dnaComment extend " ]
syntax match dnaAssignment          /T\(-\| \|\n\)*A\(-\| \|\n\)*A\(-\| \|\n\)*T/ contains=dnaComment extend " :=
syntax match dnaIncrementAssignment /T\(-\| \|\n\)*A\(-\| \|\n\)*G\(-\| \|\n\)*C/ contains=dnaComment extend " +=
syntax match dnaDecrementAssignment /T\(-\| \|\n\)*A\(-\| \|\n\)*T\(-\| \|\n\)*A/ contains=dnaComment extend " -=
syntax match dnaMultiplyAssignment  /T\(-\| \|\n\)*A\(-\| \|\n\)*C\(-\| \|\n\)*G/ contains=dnaComment extend " *=
syntax match dnaDivideAssignment    /C\(-\| \|\n\)*G\(-\| \|\n\)*A\(-\| \|\n\)*T/ contains=dnaComment extend " /=
syntax match dnaOutputInteger       /C\(-\| \|\n\)*G\(-\| \|\n\)*G\(-\| \|\n\)*C/ contains=dnaComment extend " ~
syntax match dnaInputInteger        /C\(-\| \|\n\)*G\(-\| \|\n\)*T\(-\| \|\n\)*A/ contains=dnaComment extend " ?
syntax match dnaNoOperation         /C\(-\| \|\n\)*G\(-\| \|\n\)*C\(-\| \|\n\)*G/ contains=dnaComment extend " X**

highlight link dnaComment Comment
highlight link dnaPointerIncrement Keyword
highlight link dnaPointerDecrement Keyword
highlight link dnaMemoryCellIncrement Keyword
highlight link dnaMemoryCellDecrement Keyword
highlight link dnaOutputASCII String
highlight link dnaInputASCII String
highlight link dnaJumpIfFalse Conditional
highlight link dnaJumpIfTrue  Conditional
highlight link dnaAssignment Operator
highlight link dnaIncrementAssignment Operator
highlight link dnaDecrementAssignment Operator
highlight link dnaMultiplyAssignment  Operator
highlight link dnaDivideAssignment Operator
highlight link dnaOutputInteger Number
highlight link dnaInputInteger Number
highlight link dnaNoOperation Constant
highlight link dnaTODO Todo
highlight link dnaNOTE Typedef

let b:current_syntax = "dna-sharp"
