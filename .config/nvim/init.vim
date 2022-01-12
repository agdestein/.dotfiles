let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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
Plug 'mroavi/vim-julia-cell', {'for': 'julia'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-vimtex'
Plug 'jremmen/vim-ripgrep'
Plug 'chrisbra/Colorizer'
Plug 'ap/vim-css-color'
Plug 'github/copilot.vim'
Plug 'dag/vim-fish'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug '~/.config/nvim/colorloaders/monokai'
call plug#end()

source ~/.config/nvim/colorloaders/colors.vim
source ~/.config/nvim/coc.vim

set encoding=UTF-8
set expandtab
set number
set relativenumber
set shiftwidth=4
set tabstop=4
set mouse=a
set incsearch
set hidden
set textwidth=92
set signcolumn=number
set updatetime=300
set nowrap

" Markdown
let g:vim_markdown_folding_disabled = 1
let g:mkdp_browser = 'vimb'
nmap gm <Plug>MarkdownPreviewToggle
" let g:mkdp_auto_start = 1
" let g:mkdp_markdown_css = expand('~/.config/nvim/colorloaders/markdown.css')

" Python path for autoformat
let g:python3_host_prog="/usr/bin/python"
let g:formatdef_latexindent = '"latexindent -"'

nmap <leader>af :Autoformat<CR>  


" System clipboard as default register
set clipboard+=unnamedplus

" Disable comment continuation
:set formatoptions-=cro

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

nnoremap <Space> <Nop>
map <Space> <Leader>

" NERDTree
map <F3> :NERDTreeToggle<CR>
map <F2> :NERDTreeFind<CR>

nmap <leader>v :edit $MYVIMRC<CR>  
nmap <leader>r :source $MYVIMRC<CR>  

" Newlines
" map <CR> o<ESC>
" map <S-CR> O<ESC>
" map o o<ESC>

" nmap <C-o> O<Esc>
nmap <C-o> o<Esc>


" nmap <C-P> :FZF<CR>
" nmap <C-P> :GFiles<CR>
" nmap <leader><Space> :Files<CR>
nmap <leader>p :Files<CR>
nmap <leader>w :Rg <C-r><C-w><CR>


nmap <leader>b :Buffers<CR>
nmap <leader>c :bd<CR>
nmap <C-j> :bprev<CR>
nmap <C-k> :bnext<CR>

" Julia
let g:default_julia_version = '1.7'
let g:julia_cell_delimit_cells_by = 'tags'
nmap <leader>jc :JuliaCellExecuteCell<CR>
nmap <leader>jx :JuliaCellExecuteCellJump<CR>
nmap <leader>jj :JuliaCellNextCell<CR>
nmap <leader>jk :JuliaCellPrevCell<CR>
noremap <Leader>jb :call julia#toggle_function_blockassign()<CR>
noremap <Leader>jf :JuliaFormatterFormat<CR>


" :nmap K :lua vim.lsp.buf.hover() <CR>
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0
