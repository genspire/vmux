execute pathogen#infect()
"execute pathogen#helptags()
"Helptags

:set tabstop=2
:set shiftwidth=2
:set expandtab

:set number
:set t_Co=256

syntax enable
colorscheme monokai

" Pressing Ctrl-L leaves insert mode in evim, so why not in regular vim, too.
:imap <C-L> <Esc>

" double check this
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Set the vim-slime plugin to send things to tmux
let g:slime_target = "tmux"

" When using slime with scala (spark) shell you have to use a temp file
let g:slime_paste_file = "$HOME/.slime_paste"

" If you use airline plugin: Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1

" for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

