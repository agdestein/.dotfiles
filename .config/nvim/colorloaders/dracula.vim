" Remove any previous highlighting
hi clear

" Gruvbox color scheme
set termguicolors
colorscheme dracula
let g:dracula_bold = '1'
let g:dracula_italic = '1'
let g:dracula_underline = '1'

" Enable transparency
hi Normal guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=2

let g:airline_theme = 'dracula'


" highlight EndOfBuffer ctermfg=bg

" hi! link Type                    GruvboxBlue
" hi! link juliaType               GruvboxBlue
hi! link juliaSymbol             DraculaRed

hi! link juliaFunction           DraculaGreenBold
hi! link juliaFunctionDefinition DraculaGreenBold
hi! link juliaFunctionDef        DraculaGreenBold
hi! link juliaFunctionCall       DraculaGreen
hi! link juliaMacro              DraculaGreenBold

hi! link juliaParDelim           DraculaOrange
hi! link juliaSemicolon          DraculaOrange
hi! link juliaColon              DraculaOrange
hi! link juliaComma	             DraculaOrange

" hi! link Operator                GruvboxOrange
" hi! link juliaOperator		     GruvboxOrange
" hi! link juliaRangeOperator	     GruvboxOrange
" hi! link juliaCTransOperator     GruvboxOrange
" hi! link juliaTernaryOperator    GruvboxOrange
" hi! link juliaTypeOperator	     GruvboxOrange
" hi! link juliaDotted             GruvboxOrange
