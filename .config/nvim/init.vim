let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'JuliaEditorSupport/julia-vim'
" Plug 'neovim/nvim-lspconfig'
" Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
" Plug 'roxma/nvim-completion-manager'  " optional
Plug 'dag/vim-fish'
Plug 'cespare/vim-toml'
Plug 'lervag/vimtex'
Plug 'kdheepak/JuliaFormatter.vim'
Plug 'chiel92/vim-autoformat'
Plug 'preservim/NERDTree'
" Plug 'hanschen/vim-ipython-cell', {'for': ['python', 'julia']}
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-unimpaired'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-commentary'
Plug 'mjbrownie/swapit'
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'jpalardy/vim-slime', {'for': ['python', 'julia', 'matlab']}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mroavi/vim-julia-cell', {'for': 'julia'}
Plug 'neoclide/coc-vimtex'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

set encoding=UTF-8
set expandtab
set number
set relativenumber
set shiftwidth=4
set tabstop=4
set mouse=a
set incsearch

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

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
" nmap <C-P> :FZF<CR>
" nmap <C-P> :GFiles<CR>
nmap <C-P> :Files<CR>
" Newlines
" map <CR> o<ESC>
" map <S-CR> O<ESC>
map o o<ESC>

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Julia
let g:default_julia_version = '1.7'

" Language server
" let g:LanguageClient_autoStart = 1
" let g:LanguageClient_serverCommands = {
" \   'julia': ['~/julia-1.7.0-rc3/bin/julia', '--project=~/.julia/environments/language_server', '--startup-file=no', '--history-file=no', '-e', '
" \       using LanguageServer;
" \       using Pkg;
" \       import StaticLint;
" \       import SymbolServer;
" \       env_path = dirname(Pkg.Types.Context().env.project_file);
" \       
" \       server = LanguageServer.LanguageServerInstance(stdin, stdout, env_path, "");
" \       server.runlinter = true;
" \       run(server);
" \   ']
" \ }

" lua << EOF
" require'lspconfig'.julials.setup{
"     on_new_config = function(new_config, _)
"         local julia = vim.fn.expand("~/.julia/environments/nvim-lspconfig/bin/julia")
"         if require'lspconfig'.util.path.is_file(julia) then
"             new_config.cmd[1] = julia
"         end
"     end
" }
" :nmap K :lua vim.lsp.buf.hover() <CR>
" nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
" nnoremap <silent> <F1> :call LanguageClient_textDocument_rename()<CR>


" Gruvbox color scheme
set termguicolors
let g:gruvbox_bold = '1'
let g:gruvbox_italic = '1'
let g:gruvbox_transparent_bg = '1'
let g:gruvbox_contrast_dark = 'medium'
colorscheme gruvbox

" Enable transparency
hi Normal guibg=NONE ctermbg=NONE

let g:airline_theme = 'gruvbox'
