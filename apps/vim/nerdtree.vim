" Make sure you use single quotes
" use ctrl + Wl to go to right window and ctrl + Wh to go to left window. or ctrl + w twice to toggle between the two.

autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p  " Jump to the main window.
autocmd BufWinEnter * NERDTreeMirror  " Open NerdTree in 'EVERY' tab
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Toogle NERDTree by and Ctrl + n
noremap <C-n> :NERDTreeToggle<cr>
" Ref: https://github.com/nickjj/dotfiles/blob/master/.vimrc Open nerd tree at the current file or close nerd tree if pressed again.
" nnoremap <silent> <expr> <Leader>n g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"

" Auto expand the parent directory of the current file and select the file too.
map <leader>r :NERDTreeFind<cr>

" Window splitting
noremap <C-w>- :split<cr>
noremap <C-w>\| :vsplit<cr>
" Close panel: Ctrl + w + c

let g:NERDTreeShowHidden=1
let g:NERDTreeAutoDeleteBuffer=1

" t: Open the selected file in a new tab
" T: open in new tab silently
" i: Open the selected file in a horizontal split window
" s: Open the selected file in a vertical split window
" gi: preview horizontal split
" gs: preview verticla split
" I: Toggle hidden files
"  m: Show the NERD Tree menu
" R: Refresh the tree, useful if files change outside of Vim
" ?: Toggle NERD Tree's quick help
" m: display a menu that allows file system operations to be performed from within NERD Tree.
" ma: create a new file or directory
" md: delete the current selected item in the tree
" o: open & close node / bookmark
" O: recursively open node
" x: close parent of node
" X: close all child nodes of current node recursively
" :Bookmark <desired bookmark name>
" B: toggle bookmark list
" D: delete bookmark

"" Filesystem mappings~
" C: change tree root to the selected dir
" u: move tree root up a dir
" U: move tree root up a dir but leave old root open
" r: refresh cursor dir
" R: refresh current root
" cd: change the CWD to the selected dir
" CD: change tree root to CWD
" I: hidden files (off)
" f: file filters (on)
" F: files (on)
