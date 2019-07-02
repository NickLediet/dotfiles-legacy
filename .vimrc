call plug#begin('~/nvim/plugged')
Plug 'tpope/vim-fugitive'
call plug#end()

au BufWritePost *.php silent! !eval '[ -f ".git/hooks/ctags" ] && .git/hooks/ctags' &
