execute pathogen#infect()
"execute pathogen#helptags()
"Helptags

:set tabstop=2
:set shiftwidth=2
:set expandtab

:set number
:set t_Co=256

syntax enable
set background=dark
colorscheme monokai

" Pressing Ctrl-L leaves insert mode in evim, so why not in regular vim, too.
:imap <C-L> <Esc>

" Map the leader key to ,
let mapleader=","


"""""""" Buffer shortcuts (Credit: http://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs)

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>c :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" ctrp shortcuts: Use a leader instead of the actual named binding
nmap <Leader>p :CtrlP<cr>

" Easy bindings for its various modes
nmap <Leader>bb :CtrlPBuffer<cr>
nmap <Leader>bm :CtrlPMixed<cr>
nmap <Leader>bs :CtrlPMRU<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set the vim-slime plugin to send things to tmux
let g:slime_target = "tmux"

" When using slime with scala (spark) shell you have to use a temp file
let g:slime_paste_file = "$HOME/.slime_paste"

" If you use airline plugin: Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='badwolf'

" show airline status always
set laststatus=2

" ctrlp plugin setting that controls the root directory that searches start
" from (see documentation)
let g:ctrp_working_path_mode='wrc'

" ctrlp setting to add pom files as markers
let g:ctrlp_root_markers = ['pom.xml']

" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

" ctrlp: ignore files in .gitignore  
" (this shows error if pwd is not a git repo so uncomment it as needed)
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" turn on nerd tree with f
nmap <leader>f :NERDTree<cr>

" Turn on spell check
nmap <leader>s :setlocal spell! spelllang=en_us<cr>
