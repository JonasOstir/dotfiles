call plug#begin()

Plug 'benekastah/neomake'
Plug 'cloudhead/neovim-fuzzy'
" Plug 'vimlab/neojs'
" Plug 'shougo/vimfiler.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'eugen0329/vim-esearch'
Plug 'jiangmiao/auto-pairs'
Plug 'dyng/ctrlsf.vim'
Plug 'benekastah/neomake'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'raimondi/delimitmate'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'ternjs/tern', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'mklabs/split-term.vim'
" Plug 'vifm/neovim-vifm'
" Plug 'mhartington/deoplete-typescript'
Plug 'leafgarland/typescript-vim'
Plug 'fntlnz/atags.vim'

call plug#end()


set number
set cursorline
set clipboard+=unnamedplus
nnoremap N Nzz
nnoremap n nzz
nnoremap = V=
set tags=.ctag

" Begin indentation
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab
" end indentation

set list
nnoremap <C-p> :FuzzyOpen<CR>

" Map the leader key to SPACE
let mapleader="\<SPACE>"

" Change cursor shape
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

nnoremap <tab>   :bnext<CR>
nnoremap <S-tab> :bprevious<CR>
nnoremap <Leader>q :bdelete<CR>
nnoremap <Esc> :noh<return><Esc>

" Airline
let g:airline#extensions#tabline#enabled = 1
noremap <Leader>f :CtrlSF<space>
let g:ctrlsf_ignore_dir = ['bower_components', 'npm_modules', 'node_modules', '.*']


" Do neomake on every file
autocmd! BufWritePost,BufEnter * Neomake
au BufWritePost *.c,*.cpp,*.h silent! !ctags -R &

" Begin Autocomplete: https://www.gregjs.com/vim/2016/configuring-the-deoplete-asynchronous-keyword-completion-plugin-with-tern-for-vim/
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 1
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = ['tern#Complete',' jspc#omni']

set completeopt=longest,menuone,preview
let g:deoplete#sources = {}
let g:deoplete#sources['javascript'] = ['file', 'ultisnips', 'ternjs']
let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']
autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:UltiSnipsExpandTrigger="<C-j>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
let g:SuperTabClosePreviewOnPopupClose = 1
" End Autocomplete

map <D-s>q :w<CR>

" Begin tricks: http://nerditya.com/code/guide-to-neovim/
set showcmd
set showmatch
set showmode
set ruler
set modeline
set esckeys
set linespace=0
set nojoinspaces
set splitbelow
set splitright

if !&scrolloff
  set scrolloff=3
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set nostartofline
" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                " Show problematic characters.

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.

" Search and Replace
nmap <Leader>s :%s//g<Left><Left>

" Relative numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

" Toggle between normal and relative numbering.
nnoremap <leader>r :call NumberToggle()<cr>

" Use ; for commands.
nnoremap ; :
" Use Q to execute default register.
nnoremap Q @q

" Airline
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
" let g:airline_theme= 'gruvbox'
" End Tricks
