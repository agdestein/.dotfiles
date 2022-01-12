" Remove any previous highlighting
hi clear

" Gruvbox color scheme
set termguicolors
let g:gruvbox_bold = '1'
let g:gruvbox_italic = '1'
let g:gruvbox_transparent_bg = '1'
let g:gruvbox_contrast_dark = 'medium'
colorscheme gruvbox

" Enable transparency
hi Normal guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=2

let g:airline_theme = 'gruvbox'

hi! link Type                    GruvboxBlue
hi! link juliaType               GruvboxBlue
hi! link juliaSymbol             GruvboxGreen

hi! link juliaFunction           GruvboxAquaBold
hi! link juliaFunctionDefinition GruvboxAquaBold
hi! link juliaFunctionCall       GruvboxAqua
hi! link juliaMacro              GruvboxAquaBold

hi! link juliaParDelim           GruvboxYellow
hi! link juliaSemicolon          GruvboxYellow
hi! link juliaColon              GruvboxYellow
hi! link juliaComma	             GruvboxYellow

hi! link Operator                GruvboxOrange
" hi! link juliaOperator		     GruvboxOrange
" hi! link juliaRangeOperator	     GruvboxOrange
" hi! link juliaCTransOperator     GruvboxOrange
" hi! link juliaTernaryOperator    GruvboxOrange
" hi! link juliaTypeOperator	     GruvboxOrange
" hi! link juliaDotted             GruvboxOrange
