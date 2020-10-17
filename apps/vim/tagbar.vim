"""" Tagbar Plugin
noremap  <leader>t :TagbarToggle<CR>
autocmd VimEnter * nested :call tagbar#autoopen(1)

