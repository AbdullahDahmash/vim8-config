set mouse-=a
" customize ultimate vim
set nocompatible laststatus=2 number ruler expandtab shiftwidth=4 softtabstop=4 relativenumber

" Theme
syntax enable
set background=dark
let g:solarized_termcolors=256  
colorscheme solarized

" NerdTree
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>

" Multiple Cursor
" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_start_key='<C-n>'
let g:multi_cursor_start_word_key='g<C-n>'

" Make vim indent 2 spaces for ruby and scala files only
filetype plugin indent on
set sw=4
set ts=4
:autocmd Filetype ruby set softtabstop=2
:autocmd Filetype ruby set sw=2
:autocmd Filetype ruby set ts=2

:autocmd Filetype eruby set softtabstop=2
:autocmd Filetype eruby set sw=2
:autocmd Filetype eruby set ts=2

:autocmd Filetype html set softtabstop=2
:autocmd Filetype html set sw=2
:autocmd Filetype html set ts=2

:autocmd Filetype yaml set softtabstop=2
:autocmd Filetype yaml set sw=2
:autocmd Filetype yaml set ts=2

:autocmd Filetype javascript set softtabstop=2
:autocmd Filetype javascript set sw=2
:autocmd Filetype javascript set ts=2

:autocmd Filetype scala set softtabstop=2
:autocmd Filetype scala set sw=2
:autocmd Filetype scala set ts=2

:autocmd Filetype pug set softtabstop=2
:autocmd Filetype pug set sw=2
:autocmd Filetype pug set ts=2

:autocmd Filetype slim set softtabstop=2
:autocmd Filetype slim set sw=2
:autocmd Filetype slim set ts=2

:autocmd Filetype slime set softtabstop=2
:autocmd Filetype slime set sw=2
:autocmd Filetype slime set ts=2

:autocmd Filetype slimeex set softtabstop=2
:autocmd Filetype slimeex set sw=2
:autocmd Filetype slimeex set ts=2

" GitGutter
let g:gitgutter_enabled = 1
let g:gitgutter_realtime = 1
set updatetime=250

" Add es6 to javascript syntax
au BufRead,BufNewFile *.es6 set filetype=javascript    " to overrule an existing filetype
au BufRead,BufNewFile *.es6 setfiletype javascript     

" Auto-formant
noremap <F5> :Autoformat<CR>

" Add jbuilder syntax highlighting
au BufNewFile,BufRead *.json.jbuilder set ft=ruby

" Add slime
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim
autocmd BufNewFile,BufRead *.slime setlocal filetype=slim
autocmd BufNewFile,BufRead *.slimeex setlocal filetype=slim

" *.hbs for mustache
au BufReadPost *.hbs set syntax=mustache

" Remove delay from exiting insert mode
set noesckeys

" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

