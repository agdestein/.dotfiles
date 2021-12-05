let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'neovim/nvim-lspconfig'
Plug 'dag/vim-fish'
Plug 'cespare/vim-toml'
Plug 'lervag/vimtex'
Plug 'kdheepak/JuliaFormatter.vim'
Plug 'chiel92/vim-autoformat'
Plug 'preservim/NERDTree'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-unimpaired'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'mjbrownie/swapit'
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'jpalardy/vim-slime', {'for': ['python', 'julia', 'matlab']}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mroavi/vim-julia-cell', {'for': 'julia'}
Plug 'neoclide/coc-vimtex'
Plug 'fannheyward/coc-julia'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jremmen/vim-ripgrep'
Plug 'chrisbra/Colorizer'

Plug 'github/copilot.vim'
call plug#end()

set encoding=UTF-8
set expandtab
set number
set relativenumber
set shiftwidth=4
set tabstop=4
set mouse=a
set incsearch
set hidden

" System clipboard as default register
set clipboard+=unnamedplus

" VimTeX
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_latexmk = {
\   'options' : [
\       '-pdf',
\       '-shell-escape',
\       '-verbose',
\       '-file-line-error',
\       '-synctex=1',
\       '-interaction=nonstopmode',
\   ],
\}

" Slime
let g:slime_target = 'tmux'
" let g:slime_target = 'vimterminal'
" let g:slime_target = 'x11'

" NERDTree
map <F3> :NERDTreeToggle<CR>
map <F2> :NERDTreeFind<CR>
map gn :NERDTreeToggle<CR>
map gN :NERDTreeFind<CR>

nmap <leader>b :Buffers<CR>  
nmap <leader>v :edit $MYVIMRC<CR>  
nmap <leader>r :source $MYVIMRC<CR>  

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
" nmap <C-P> :FZF<CR>
" nmap <C-P> :GFiles<CR>
nmap <C-P> :Files<CR>
" Newlines
" map <CR> o<ESC>
" map <S-CR> O<ESC>
map o o<ESC>

nnoremap <Space> <Nop>
map <Space> <Leader>

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Julia
let g:default_julia_version = '1.7'
let g:julia_cell_delimit_cells_by = 'tags'
nmap <leader>c :JuliaCellExecuteCell<CR>
nmap <leader>x :JuliaCellExecuteCellJump<CR>
nmap <leader>j :JuliaCellNextCell<CR>
nmap <leader>k :JuliaCellPrevCell<CR>

" lua << EOF
" require'lspconfig'.julials.setup{}
" EOF

" :nmap K :lua vim.lsp.buf.hover() <CR>
let g:airline_theme = 'gruvbox'
" let g:airline_theme = 'base16_gruvbox_dark_medium'
let g:airline#extensions#tabline#enabled = 1

" Gruvbox color scheme
set termguicolors
let g:gruvbox_bold = '1'
let g:gruvbox_italic = '1'
let g:gruvbox_transparent_bg = '1'
let g:gruvbox_contrast_dark = 'medium'
colorscheme gruvbox

" Enable transparency
hi Normal guibg=NONE ctermbg=NONE
