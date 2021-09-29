" don't bother with vi compatibility
set nocompatible

" enable syntax highlighting
syntax enable

" configure Vundle
filetype on " without this vim emits a zero exit status, later, because of :ft off
filetype off

let g:ale_disable_lsp = 1

" let g:vimspector_enable_mappings = 'HUMAN'

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'austintaylor/vim-indentobject'
Plug 'christoomey/vim-tmux-navigator'
" Plug 'juvenn/mustache.vim'
" Plug 'kchmck/vim-coffee-script'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'leafgarland/typescript-vim'
" Plug 'majutsushi/tagbar'
Plug 'rking/ag.vim'
" Plug 'garbas/vim-snipmate'
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'
Plug 'nathanaelkane/vim-indent-guides'
" Plug 'nono/vim-handlebars'
" Plug 'pangloss/vim-javascript'
" Plug 'wookiehangover/jshint.vim'
Plug 'scrooloose/nerdtree'
" Plug 'scrooloose/syntastic'
" Plug 'slim-template/vim-slim'
" Plug 'tpope/vim-bundler'
" Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-cucumber'
" Plug 'tpope/vim-dispatch'
" Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-pastie'
" Plug 'tpope/vim-ragtag'
" Plug 'tpope/vim-rails'
" Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-surround'
" Plug 'tpope/vim-unimpaired'
" Plug 'tpope/vim-vividchalk'
" Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/Align'
" Plug 'vim-scripts/greplace.vim'
" Plug 'vim-scripts/matchit.zip'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/nerdcommenter'
Plug 'frazrepo/vim-rainbow'
" Plug 'misterbuckley/vim-definitive'
Plug 'tpope/vim-surround'
" Plug 'ervandew/supertab'
Plug 'dense-analysis/ale'
Plug 'joshdick/onedark.vim'
" Plug 'yuttie/comfortable-motion.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'pechorin/any-jump.vim'
Plug 'jiangmiao/auto-pairs'
" Plug 'wincent/Command-T'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
Plug 'preservim/tagbar'
" Plug 'puremourning/vimspector'
Plug 'udalov/kotlin-vim'
Plug 'buoto/gotests-vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()


" ensure ftdetect et al work by including this after the Vundle stuff
filetype plugin indent on

set autoindent
set autoread                                                 " reload files when changed on disk, i.e. via `git checkout`
set backspace=2                                              " Fix broken backspace in some setups
set backupcopy=yes                                           " see :help crontab
set clipboard=unnamed                                        " yank and paste with the system clipboard
set directory-=.                                             " don't store swapfiles in the current directory
set encoding=utf-8
set expandtab                                                " expand tabs to spaces
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type
set laststatus=2                                             " always show statusline
set list                                                     " show trailing whitespace
set listchars=tab:▸\ ,trail:▫
set number                                                   " show line numbers
set ruler                                                    " show where you are
set scrolloff=3                                              " show context above/below cursorline
set shiftwidth=2                                             " normal mode indentation commands use 2 spaces
set showcmd
set smartcase                                                " case-sensitive search if any caps
set softtabstop=2                                            " insert mode tab and backspace use 2 spaces
set tabstop=8                                                " actual tabs occupy 8 characters
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full

" Enable basic mouse behavior such as resizing buffers.
set mouse=a
if exists('$TMUX')  " Support resizing in tmux
  set ttymouse=xterm2
endif

" keyboard shortcuts
let mapleader = ','
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
map <C-a> <ESC>^
imap <C-a> <ESC>I
map <C-e> <ESC>$
imap <C-e> <ESC>A
nmap <F1> :call JavaStartDebug()<CR>
nmap <F2> :call GolangStartDebug()<CR>
nmap <F4> <Plug>VimspectorStop
nmap <F5> <Plug>VimspectorContinue
nmap <F6> <Plug>VimspectorStepOver
nmap <F7> <Plug>VimspectorStepInto
nmap <F8> <Plug>VimspectorStepOut
nmap <F9> <Plug>VimspectorToggleBreakpoint
nnoremap <leader>a :Ag!<space>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>d :GoDocBrowser<CR>
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>g :GitGutterToggle<CR>
nnoremap <leader>h :VimspectorReset<CR>
nnoremap <leader>i :GoMetaLinter<CR>
nnoremap <leader>l :NERDTreeFind<CR>
nnoremap <leader>o :GoCoverage<CR>
nnoremap <leader>p :GoTest<CR>
nnoremap <leader>r :GoRename<CR>
nnoremap <leader>s :Rg<CR>
nnoremap <leader>t :CtrlPTag<CR>
nnoremap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
nnoremap <leader>u :GoTests<CR>
nnoremap <leader>] :TagbarToggle<CR>
nnoremap <leader><space> :call whitespace#strip_trailing()<CR>
noremap <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" nmap <F1> :CocCommand java.debug.vimspector.start<CR>
function! JavaStartDebugCallback(err, port)
  execute "cexpr! 'Java debug started on port: " . a:port . "'"
  call vimspector#LaunchWithSettings({ "configuration": "Java Attach", "AdapterPort": a:port })
endfunction

function JavaStartDebug()
  call CocActionAsync('runCommand', 'vscode.java.startDebugSession', function('JavaStartDebugCallback'))
endfunction

function GolangStartDebug()
  call vimspector#LaunchWithSettings({ "configuration": "golang" })
endfunction

" in case you forgot to sudo
cnoremap w!! %!sudo tee > /dev/null %

" plugin settings
let g:ctrlp_match_window = 'order:ttb,max:20'
let g:NERDSpaceDelims=1
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let NERDTreeShowHidden=1
let g:gitgutter_enabled = 1
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'

let g:airline_powerline_fonts = 1

let g:rainbow_active = 1

let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
let g:easytags_file = './tags'
let g:easytags_opts = ['--tag-relative=yes', '-R', '-f ./tags', '--fields=+l']
let g:easytags_cmd = '/usr/local/bin/ctags'
let g:easytags_dynamic_files = 1
let g:easytags_always_enabled = 1
let g:easytags_auto_update = 0
" let g:easytags_auto_highlight = 1
let g:ackprg = 'ag --vimgrep'

" For COC autocomplete
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" fdoc is yaml
autocmd BufRead,BufNewFile *.fdoc set filetype=yaml
" md is markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.md set spell
" extra rails.vim help
autocmd User Rails silent! Rnavcommand decorator      app/decorators            -glob=**/* -suffix=_decorator.rb
autocmd User Rails silent! Rnavcommand observer       app/observers             -glob=**/* -suffix=_observer.rb
autocmd User Rails silent! Rnavcommand feature        features                  -glob=**/* -suffix=.feature
autocmd User Rails silent! Rnavcommand job            app/jobs                  -glob=**/* -suffix=_job.rb
autocmd User Rails silent! Rnavcommand mediator       app/mediators             -glob=**/* -suffix=_mediator.rb
autocmd User Rails silent! Rnavcommand stepdefinition features/step_definitions -glob=**/* -suffix=_steps.rb
" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =
" auto open NerdTree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fix Cursor in TMUX
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Don't copy the contents of an overwritten selection.
vnoremap p "_dP

" Go crazy!
if filereadable(expand("~/.vimrc.local"))
  " In your .vimrc.local, you might like:
  "
  " set autowrite
  " set nocursorline
  " set nowritebackup
  " set whichwrap+=<,>,h,l,[,] " Wrap arrow keys between lines
  "
  " autocmd! bufwritepost .vimrc source ~/.vimrc
  " noremap! jj <ESC>
  source ~/.vimrc.local
endif
colorscheme onedark
set mouse-=a
set tags=./tags;
