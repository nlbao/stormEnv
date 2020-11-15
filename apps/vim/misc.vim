"""" Nagivation
" e, b, w: go next / back / back a word
" E, B, W: same with above, but WON't count punctuation as seperate words.
" %: move to the next / previous related items (brackets, /*, ...) --> match
" ( , ) : move to the next / previous Sentence.
" { , } : move to the next / previous Paragraph.
" gg: to the 0-th line
" G: to the last line
" 50G: go to the 50th line
" Ctrl+u: move up half screen
" Ctrl+d: move down half screen
" Ctrl+b: move up full screen
" Ctrl+f: move down full screen
" z + <enter>: make the current line at top of the screen
" 50z + <enter>: make the 50th line at top of the screen
" ``: move back to the last position (...)

"""" Same-line navigation
" f{char}, 4f{char}: move to the NEXT occurrence of {char}. F for BACKWARD.
" t{char}, T{char}: same with above but will place the cursor before {char}.

"""" Copy & Paste & Editing
" x: delete one character to the LEFT of the cursor (X for the right)
" yy: copy whole line
" yyp: duplicate the current line
" J: join lines (by putting the next line to the end of this line)
" :%y+<Enter> : copy all lines
" o: insert a new empty line AFTER the current line, enter the INSERT mode
" O: insert a new empty line BEFOREthe current line, enter the INSERT mode

"""" Move lines
function! s:swap_lines(n1, n2)
    let line1 = getline(a:n1)
    let line2 = getline(a:n2)
    call setline(a:n1, line2)
    call setline(a:n2, line1)
endfunction

function! s:swap_up()
    let n = line('.')
    if n == 1
        return
    endif

    call s:swap_lines(n, n - 1)
    exec n - 1
endfunction

function! s:swap_down()
    let n = line('.')
    if n == line('$')
        return
    endif

    call s:swap_lines(n, n + 1)
    exec n + 1
endfunction

" move the current line up / down. Can set to <c-s-up/down>, too.
noremap <silent> <c-s-k> :call <SID>swap_up()<CR>
noremap <silent> <c-s-j> :call <SID>swap_down()<CR>

"""" Multi cursor TODO(nlbao)

"""" Wild Menu (to show file candidates when pressing TAB
set wildmenu
set wildmode=full

"""" Other settings
set number
syntax on
set t_Co=256
set encoding=UTF-8  " For vim-devicons

" highlight search results. Press enter to clear highlighted
set hlsearch
nnoremap <CR> :noh<CR>  

" Switch between tabs: gt (next) or gT (previous). TODO: how to map this to
" Ctrl+tab: https://stackoverflow.com/questions/2413005/switching-between-tabs-in-nerdtree
" map  <c-tab> :tabn<CR>
" map <S-Right> :tabn<cr>
" map  <c-h> :tabp<CR>
""""

" use another key for leader
let mapleader = ","  

" toggle comments (vim-commentary)
noremap <leader>/ :Commentary<cr>
noremap <C-m> :Commentary<cr>

" Set the cursor to a vertical line in insert mode and a solid block in command mode
let &t_SI = "\<esc>\<esc>\<esc>]50;CursorShape=1\x7\<esc>\\"
let &t_EI = "\<esc>\<esc>\<esc>]50;CursorShape=0\x7\<esc>\\"
set timeout timeoutlen=1000 ttimeoutlen=10

" Indention
set expandtab " Spaces instead of tabs
set shiftwidth=2 " 1 tab = 2 spaces
set tabstop=2 " 1 tab = 2 columns
set softtabstop=2 " Columns of tabbing in insert mode
set smarttab
set ai " Auto indent
set si " Smart indent
set nowrap " Do not wrap lines  " Set specific indention for file types
autocmd FileType htmlcheetah setlocal noexpandtab ai si nowrap
command! -nargs=* Wrap set wrap linebreak nolist  " type :Wrap to wrapline
command! -nargs=* Nowrap set nowrap  " type: Nowrap to unwrap lines

"""" Delete file buffers: https://dev.to/jorge_rockr/my-development-environment-setup-part-2-4ck9
noremap <C-w>b :Bclose<cr>

" powerline theme:
" Ref: https://fedoramagazine.org/add-power-terminal-powerline/
" python3 from powerline.vim import setup as powerline_setup
" python3 powerline_setup()
" python3 del powerline_setup
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set t_Co=256
