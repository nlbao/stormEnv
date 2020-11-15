" install vim-plug: https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" TODO(nlbao): install plugins based on user's plugin mananger
" TODO(nlbao): load the plugin list from a custom file, so changing it won't
" affect git source tree
" Make sure you use single quotes
" use ctrl + Wl to go to right window and ctrl + Wh to go to left window. or ctrl + w twice to toggle between the two.
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-obsession'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Programming languages
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Guide: https://catonmat.net/vim-plugins-surround-vim
" Guide: https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

" Themes
Plug 'crusoexia/vim-monokai'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/tagbar'

"""" NOTE: select which config to be loaded here """"
let $CONF_PATH="~/env/apps/vim/"

" Should always load misc before the plugins
source $CONF_PATH/misc.vim

" Initialize plugin system
" Maybe you'll need to run this ::PlugInstall
call plug#end()
colorscheme monokai
source $CONF_PATH/nerdtree.vim
source $CONF_PATH/session.vim
source $CONF_PATH/tagbar.vim

