call plug#begin()
 
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mhartington/deoplete-typescript'
Plug 'herringtondarkholme/yats.vim'
" Plug 'scrooloose/nerdtree'
" Plug 'benekastah/neomake'
" Plug 'cloudhead/neovim-fuzzy'
" Plug 'altercation/vim-colors-solarized'
" Plug 'airblade/vim-gitgutter'

" Add plugins to &runtimepath

call plug#end()

" set number
" set cursorline
" set clipboard+=unnamedplus
" set tags=.git/.ctags
" set shiftwidth=2
" set tabstop=2
" set expandtab
" set list
" set showcmd
" set showmatch
" set showmode
" set ruler
" set modeline
" set esckeys
" set linespace=0
" set nojoinspaces
" set splitbelow
" set splitright
" set ignorecase          " Make searching case insensitive
" set smartcase           " ... unless the query has capital letters.
" set gdefault            " Use 'g' flag by default with :s/foo/bar/.
" set termguicolors
" set background=light " or dark
" set completeopt=longest,menuone,preview
" 
" if !&scrolloff
"   set scrolloff=3
" endif
" if !&sidescrolloff
"   set sidescrolloff=5
" endif
" set nostartofline
" 
" if &listchars ==# 'eol:$'
"   set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
" endif
" 
" function! NumberToggle()
"   if(&relativenumber == 1)
"     set nornu
"     set number
"   else
"     set rnu
"   endif
" endfunc
" 
" function! neomake#makers#ft#scss#EnabledMakers()
"     return executable('sass-lint') ? ['sasslint'] : ['scsslint']
" endfunction
" 
" filetype plugin indent on
" " autocmd! BufWritePost,BufEnter * Neomake
" colorscheme solarized
" highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
" match ExtraWhitespace /\s\+$\|\t/
" autocmd FileType html,css EmmetInstall
" autocmd FileType javascript let g:SuperTabDefaultCompletionType = '<c-x><c-o>'
" 
" let mapleader="\<SPACE>"
" let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" let g:airline#extensions#tabline#enabled = 1
" let g:ctrlsf_ignore_dir = ['bower_components', 'npm_modules', 'node_modules', '.*', '.ctag', 'fonts']
" let g:airline#extensions#tabline#enabled = 2
" let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#right_sep = ' '
" let g:airline#extensions#tabline#right_alt_sep = '|'
" let g:airline_left_sep = ' '
" let g:airline_left_alt_sep = '|'
" let g:airline_right_sep = ' '
" let g:airline_right_alt_sep = '|'
" let g:atags_build_commands_list = ["ctags -R -V -f .git/.ctags"]
let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_ignore_case = 1
" let g:deoplete#auto_complete_start_length = 0
" let g:auto_complete_start_length = 0
" let g:sass_lint_config = 'app/assets/styles/.scss-lint.yml'
" let g:user_emmet_install_global = 0
" " let g:deoplete#sources = {}
" " let g:deoplete#sources['javascript'] = ['file', 'ultisnips', 'ternjs']
" " let g:tern#command = ['tern']
" " let g:tern#arguments = ['--persistent']
" let g:UltiSnipsExpandTrigger="<C-j>"
" " let g:SuperTabClosePreviewOnPopupClose = 1
" 
" inoremap <expr><TAB>  pumvisible() ? '\<C-n>' : '\<TAB>'
" 
" nnoremap <C-d>            <C-d>zz
" nnoremap <C-p>            :FuzzyOpen<CR>
" nnoremap <C-u>            <C-u>zz
" nnoremap <Esc>            :noh<return><Esc>
" nnoremap <Leader><S-tab>  <C-w>h
" nnoremap <Leader><TAB>    <C-w><C-w>
" nnoremap <Leader>f        :CtrlSF<space>
" nnoremap <Leader>l        ^vg_
" nnoremap <Leader>nf       :NERDTreeFind<cr>
" nnoremap <Leader>nt       :NERDTree<cr>
" nnoremap <Leader>q        :bdelete<CR>
" nnoremap <Leader>s        :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
" nnoremap <Leader>t        :call atags#generate()<cr>
" nnoremap <S-tab>          :bprevious<CR>
" nnoremap <leader>%        :MtaJumpToOtherTag<cr>
" nnoremap <leader>r        :call NumberToggle()<cr>
" nnoremap <leader>z        vi{zf
" nnoremap <tab>            :bnext<CR>
" nnoremap =                V=
" nnoremap N                Nzz
" nnoremap Q                @q
" nnoremap n                nzz
