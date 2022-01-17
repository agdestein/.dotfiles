-- Make <CR> auto-select the first completion item and notify coc.nvim to
-- format on enter, <cr> could be remapped by other vim plugin
vim.cmd(
	"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm(): '\\<C-g>u\\<CR>\\<c-r>=coc#on_enter()\\<CR>'"
)

-- Use `[g` and `]g` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
vim.cmd("nmap <silent> [g <Plug>(coc-diagnostic-prev)")
vim.cmd("nmap <silent> ]g <Plug>(coc-diagnostic-next)")

-- GoTo code navigation.
vim.cmd("nmap <silent> gd <Plug>(coc-definition)")
vim.cmd("nmap <silent> gy <Plug>(coc-type-definition)")
vim.cmd("nmap <silent> gi <Plug>(coc-implementation)")
vim.cmd("nmap <silent> gr <Plug>(coc-references)")

-- Use K to show documentation in preview window.
vim.cmd([[
    function! s:show_documentation()
      if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
      elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
      else
        execute '!' . &keywordprg . " " . expand('<cword>')
      endif
    endfunction
    nnoremap <silent> K :call <SID>show_documentation()<CR>"
]])

-- Highlight the symbol and its references when holding the cursor.
vim.cmd("autocmd CursorHold * silent call CocActionAsync('highlight')")

-- Symbol renaming.
vim.cmd("nmap <leader>rn <Plug>(coc-rename)")

-- Formatting selected code.
vim.cmd("xmap <leader>f  <Plug>(coc-format-selected)")
vim.cmd("nmap <leader>f  <Plug>(coc-format-selected)")

vim.cmd("nmap <silent>gf :call CocAction('format')<CR>")
