" Remove any previous highlighting
hi clear

set termguicolors
colorscheme monokai

set termguicolors
let g:monokai_bold = '1'
let g:monokai_italic = '1'
let g:monokai_transparent_bg = '1'
let g:monokai_contrast_dark = 'medium'

" Enable transparency
hi Normal guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=2

let g:airline_theme = 'monokai'

" hi! link Type                    MonokaiBlue
hi! link juliaType               MonokaiYellow
hi! link juliaSymbol             MonokaiAqua

hi! link juliaFunction           MonokaiBlueBold
hi! link juliaFunctionDefinition MonokaiBlueBold
hi! link juliaFunctionCall       MonokaiBlue
hi! link juliaMacro              MonokaiBlueBold

hi! link juliaParDelim           MonokaiOrange
hi! link juliaSemicolon          MonokaiOrange
hi! link juliaColon              MonokaiOrange
hi! link juliaComma	             MonokaiOrange

hi! link Operator                MonokaiOrange
" hi! link juliaOperator		     MonokaiOrange
" hi! link juliaRangeOperator	     MonokaiOrange
" hi! link juliaCTransOperator     MonokaiOrange
" hi! link juliaTernaryOperator    MonokaiOrange
" hi! link juliaTypeOperator	     MonokaiOrange
" hi! link juliaDotted             MonokaiOrange
