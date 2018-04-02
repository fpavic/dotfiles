set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'kchmck/vim-coffee-script'
Plugin 'elixir-lang/vim-elixir'
Plugin 'godlygeek/tabular'
Plugin 'thoughtbot/vim-rspec'
Plugin 'altercation/vim-colors-solarized'
Plugin 'lambdatoast/elm.vim'
Plugin 'pangloss/vim-javascript.git'
Plugin 'mxw/vim-jsx'
Plugin 'alvan/vim-closetag'
Plugin 'Townk/vim-autoclose'
Plugin 'rust-lang/rust.vim'
call vundle#end()

set mouse=a
set nu
syntax on
set expandtab
set shiftwidth=2
set softtabstop=2
set updatetime=250
set clipboard=unnamedplus
set ruler
set modifiable
set smartindent
set autoindent
set background=dark
colorscheme solarized
imap <Tab> <Esc>

let g:jsx_ext_required = 0
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js,*.jsx"
let g:rspec_command = '!bundle exec rspec {spec}'
let g:rspec_runner = "os_x_iterm"

filetype indent plugin on
noremap <C-n> :NERDTreeToggle<CR>
nmap <leader><CR> O<Esc>
nmap <CR> o<Esc>

set foldmethod=syntax
set foldlevelstart=20
set tw=80
set colorcolumn=+1
highlight ColorColumn ctermbg=0 guibg=lightgray

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap <leader>gt gT 
nnoremap tn :tabnew<CR>
nnoremap tc :tabclose<CR>

nnoremap <leader>. <C-w>>
nnoremap <leader>, <C-w><

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>


nnoremap vs <c-W>v
" nnoremap Hs <c-W>S

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

let g:haskell_tabular = 1

vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>


" :w !pbcopy
" " :r !pbpaste
"

