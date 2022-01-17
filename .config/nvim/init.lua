-- Source old vimrc
vim.cmd("source ~/.config/nvim/old_init.vim")

require("colorloaders/colors")
require("coc")

-- Set options
vim.opt.encoding = "UTF-8"
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.mouse = "a"
vim.opt.incsearch = true
vim.opt.hidden = true
vim.opt.textwidth = 92
vim.opt.signcolumn = "number"
vim.opt.updatetime = 300
vim.opt.wrap = false

-- Command mode
vim.cmd("cnoremap <C-a> <Home>")
vim.cmd("cnoremap <C-e> <End>")
vim.cmd("cnoremap <C-p> <Up>")
vim.cmd("cnoremap <C-n> <Down>")
vim.cmd("cnoremap <C-b> <Left>")
vim.cmd("cnoremap <C-f> <Right>")
vim.cmd("cnoremap <M-b> <S-Left>")
vim.cmd("cnoremap <M-f> <S-Right>")

-- Markdown
vim.g.vim_markdown_folding_disabled = 1
vim.g.mkdp_browser = "vimb"
vim.cmd("nmap gm <Plug>MarkdownPreviewToggle")
-- vim.g.mkdp_auto_start = 1
-- vim.g.mkdp_markdown_css = expand('~/.config/nvim/colorloaders/markdown.css')

-- Python path for autoformat
vim.g.python3_host_prog="/usr/bin/python"
vim.g.formatdef_latexindent = "'latexindent -'"

vim.cmd("nmap <leader>af :Autoformat<CR>")


-- System clipboard as default register
vim.cmd("set clipboard+=unnamedplus")

-- Disable comment continuation
vim.cmd("set formatoptions-=cro")

-- VimTeX
vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_compiler_latexmk = {
   options = {
       '-pdf',
       '-shell-escape',
       '-verbose',
       '-file-line-error',
       '-synctex=1',
       '-interaction=nonstopmode',
   },
}

-- Slime
vim.g.slime_target = 'tmux'
-- vim.g.slime_target = 'vimterminal'
-- vim.g.slime_target = 'x11'

vim.cmd("nnoremap <Space> <Nop>")
vim.cmd("map <Space> <Leader>")

-- NERDTree
vim.cmd("map <F3> :NERDTreeToggle<CR>")
vim.cmd("map <F2> :NERDTreeFind<CR>")

vim.cmd("nmap <leader>v :edit $MYVIMRC<CR>  ")
vim.cmd("nmap <leader>r :source $MYVIMRC<CR>  ")

-- Newlines
-- vim.cmd("map <CR> o<ESC>")
-- vim.cmd("map <S-CR> O<ESC>")
-- vim.cmd("map o o<ESC>")

-- vim.cmd("nmap <C-o> O<Esc>")
vim.cmd("nmap <C-o> o<Esc>")


-- vim.cmd("nmap <C-P> :FZF<CR>")
-- vim.cmd("nmap <C-P> :GFiles<CR>")
-- vim.cmd("nmap <leader><Space> :Files<CR>")
vim.cmd("nmap <leader>p :Files<CR>")
vim.cmd("nmap <leader>w :Rg <C-r><C-w><CR>")


vim.cmd("nmap <leader>b :Buffers<CR>")
vim.cmd("nmap <leader>c :bd<CR>")
vim.cmd("nmap <C-j> :bprev<CR>")
vim.cmd("nmap <C-k> :bnext<CR>")

-- Julia
vim.g.default_julia_version = '1.7'
vim.g.julia_cell_delimit_cells_by = 'tags'
vim.cmd("nmap <leader>jc :JuliaCellExecuteCell<CR>")
vim.cmd("nmap <leader>jx :JuliaCellExecuteCellJump<CR>")
vim.cmd("nmap <leader>jj :JuliaCellNextCell<CR>")
vim.cmd("nmap <leader>jk :JuliaCellPrevCell<CR>")
vim.cmd("nmap <Leader>jb :call julia#toggle_function_blockassign()<CR>")
vim.cmd("nmap <Leader>jf :JuliaFormatterFormat<CR>")

-- :vim.cmd("nmap K :lua vim.lsp.buf.hover() <CR>")
vim.g["airline#extensions#tabline#enabled"] = 1
vim.g.airline_powerline_fonts = 0
