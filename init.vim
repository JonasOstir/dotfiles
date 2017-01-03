call plug#begin()


Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'benekastah/neomake'
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'cloudhead/neovim-fuzzy'
Plug 'dyng/ctrlsf.vim'
Plug 'ervandew/supertab'
Plug 'fntlnz/atags.vim'
Plug 'gcorne/vim-sass-lint'
Plug 'jelera/vim-javascript-syntax'
Plug 'jiangmiao/auto-pairs'
Plug 'leafgarland/typescript-vim'
Plug 'mattn/emmet-vim'
Plug 'mhartington/deoplete-typescript', { 'do': ':UpdateRemotePlugins' }
Plug 'mklabs/split-term.vim'
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'quramy/tsuquyomi', { 'do': 'make' }
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdtree'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'valloric/matchtagalways'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Add plugins to &runtimepath

call plug#end()

set number
set cursorline
" set clipboard+=unnamedplus
set tags=.git/.ctags
set shiftwidth=2
set tabstop=2
set expandtab
set list
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
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set termguicolors
set background=light " or dark
set completeopt=longest,menuone,preview

if !&scrolloff
  set scrolloff=3
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set nostartofline

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

function! neomake#makers#ft#scss#EnabledMakers()
    return executable('sass-lint') ? ['sasslint'] : ['scsslint']
endfunction

function! SetupEnvironment()
  let l:path = expand('%:p')
  if l:path =~ '/Users/Jonas/manager'
    if &filetype == 'html'
      setlocal syntax=javascript
    endif
  endif
  if l:path =~ '/Users/Jonas/code/reporting-manager'
    if &filetype == 'html'
      setlocal syntax=javascript
    endif
  endif
endfunction

filetype plugin indent on
colorscheme solarized
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/
autocmd! BufWritePost,BufEnter * Neomake
autocmd FileType html,css EmmetInstall
" autocmd FileType javascript, typescript let g:SuperTabDefaultCompletionType = '<c-x><c-o>'
" autocmd FileType javascript, typescript let g:SuperTabDefaultCompletionType = '<c-n>'
autocmd! BufReadPost,BufNewFile * call SetupEnvironment()

let mapleader="\<SPACE>"
" " let g:deoplete#sources = {}
" " let g:deoplete#sources['javascript'] = ['file', 'ultisnips', 'ternjs']
" " let g:tern#arguments = ['--persistent']
" " let g:tern#command = ['tern']
" let g:SuperTabDefaultCompletionType = '<c-x><c-o>'
" let g:user_emmet_expandabbr_key='<Tab>'
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
let g:NERDTreeWinSize = 45
let g:SuperTabClosePreviewOnPopupClose = 1
let g:SuperTabDefaultCompletionType = '<c-n>'
let g:UltiSnipsExpandTrigger="<C-j>"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_right_sep = ' '
let g:atags_build_commands_list = ["ctags -R -V -f .git/.ctags --exclude=node_modules --exclude=node --exclude=.*/** --exclude=target --exclude=dist"]
let g:auto_complete_start_length = 0
let g:ctrlsf_ignore_dir = ['bower_components', 'npm_modules', 'node', 'node_modules', '.*', '.ctag', 'fonts', 'dist', 'target', '.tmp']
let g:deoplete#auto_complete_start_length = 0
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_debug = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_profile = 1
let g:deoplete#enable_refresh_always = 1
let g:sass_lint_config = 'app/assets/styles/.scss-lint.yml'
let g:tsuquyomi_single_quote_import = 1
let g:user_emmet_install_global = 0
" call deoplete#enable_logging('DEBUG', '/Users/Jonas/deoplete.log')

" imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
inoremap <expr><TAB>  pumvisible() ? '\<C-n>' : '\<TAB>'

nnoremap <C-d>            <C-d>zz
nnoremap <C-p>            :FuzzyOpen<CR>
nnoremap <C-u>            <C-u>zz
nnoremap <Esc>            :noh<return><Esc>
nnoremap <Leader><S-tab>  <C-w>h
nnoremap <Leader><TAB>    <C-w><C-w>
nnoremap <Leader>f        :CtrlSF<space>
nnoremap <Leader>l        ^vg_
nnoremap <Leader>nf       :NERDTreeFind<cr>
nnoremap <Leader>nt       :NERDTree<cr>
nnoremap <Leader>q        :bdelete<CR>
nnoremap <Leader>s        :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
nnoremap <Leader>t        :call atags#generate()<cr>
nnoremap <S-tab>          :bprevious<CR>
nnoremap <leader>%        :MtaJumpToOtherTag<cr>
nnoremap <leader>r        :call NumberToggle()<cr>
nnoremap <leader>z        vi{zf
nnoremap <tab>            :bnext<CR>
nnoremap =                V=
nnoremap N                Nzz
nnoremap Q                @q
nnoremap n                nzz
