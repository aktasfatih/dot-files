" Use system clipboard
set clipboard^=unnamed,unnamedplus
set number
set mouse=a
set relativenumber
set wrap!
set cul
set paste

" Keyboard mappings
" To map to <leader>D: for vim-react-goto-definition
" noremap <leader>D :call ReactGotoDef()<CR>
nmap <C-m> :TagbarToggle<CR>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>
nnoremap gd :ALEGoToDefinition<CR>
autocmd CompleteDone * pclose
" find the file in NERDTree
nnoremap <space>f :NERDTreeFind<CR>

" In ~/.vim/vimrc, or somewhere similar.
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'javascriptreact':['eslint'],
\   'json' : [ 'fixjson' ],
\   'css': ['prettier'],
\   'c': ['uncrustify'] 
\}

let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#jsx_bracket_same_line = 'false'

set nocompatible              " be iMproved, required
nmap <C-n> :NERDTreeToggle<CR>

filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'nickspoons/vim-movefast'
Plugin 'amiorin/vim-project'
Plugin 'vim-perl/vim-perl'
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'scrooloose/nerdtree'
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber

Plugin 'vim-vdebug/vdebug'
Plugin 'tpope/vim-surround'
Plugin 'dense-analysis/ale'
Plugin 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = '1'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_alt_sep = '|'

Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-scripts/ZoomWin'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-commentary'
Plugin 'k0kubun/vim-open-github'
Plugin 'prettier/vim-prettier'
Plugin 'majutsushi/tagbar'
Plugin 'jreybert/vimagit'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ap/vim-css-color'
Plugin 'benmills/vimux'
Plugin 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

Plugin 'honza/vim-snippets'
Plugin 'jbgutierrez/vim-babel'
Plugin 'MarcWeber/vim-addon-mw-utils'

Plugin 'mhinz/vim-signify'
Plugin 'mileszs/ack.vim'
Plugin 'ggreer/the_silver_searcher'
Plugin 'jremmen/vim-ripgrep'
Plugin 'junegunn/fzf.vim'
Plugin 'machakann/vim-highlightedyank'
Plugin 'junegunn/fzf'
Plugin 'ervandew/ag'

" ******************
" " Code for limelight
" " Color name (:help cterm-colors) or ANSI code
" let g:limelight_conceal_ctermfg = 'gray'
" let g:limelight_conceal_ctermfg = 240

" " Color name (:help gui-colors) or RGB color
" let g:limelight_conceal_guifg = 'DarkGray'
" let g:limelight_conceal_guifg = '#777777'

" " Default: 0.5
" let g:limelight_default_coefficient = 0.7

" " Number of preceding/following paragraphs to include (default: 0)
" let g:limelight_paragraph_span = 1

" " Beginning/end of paragraph
" "   When there's no empty line between the paragraphs
" "   and each paragraph starts with indentation
" let g:limelight_bop = '^\s'
" let g:limelight_eop = '\ze\n^\s'

" " Highlighting priority (default: 10)
" "   Set it to -1 not to overrule hlsearch
" let g:limelight_priority = -1

" " Dim paragraphs above and below the active paragraph.
" Plugin 'junegunn/limelight.vim'
" ******************

" Automatically clear search highlights after you move your cursor.
Plugin 'haya14busa/is.vim'

" Handle multi-file find and replace.
Plugin 'mhinz/vim-grepper'

" Better display unwanted whitespace.
Plugin 'ntpeters/vim-better-whitespace'

Plugin 'dhruvasagar/vim-zoom'
Plugin 'pechorin/any-jump.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'isruslan/vim-es6'

" Highlight which character to jump to when using horizontal movement keys.
Plugin 'unblevable/quick-scope'

" Modify * to also work with visual selections.
Plugin 'nelstrom/vim-visual-star-search'

Plugin 'shougo/deoplete.nvim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'fleischie/vim-styled-components'
Plugin 'joshdick/onedark.vim'
Plugin 'tpope/vim-obsession'
Plugin 'elzr/vim-json'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'thinca/vim-quickrun'
Plugin 'eslint/eslint'
call vundle#end()            " required
filetype plugin indent on    " required

" Turning on syntax coloring
syntax on
colorscheme onedark
set wildmenu
set wildmode=longest:full,full
let NERDTreeShowHidden=1

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" before call project#rc()
let g:project_enable_welcome = 0
" if you want the NERDTree integration.
let g:project_use_nerdtree = 1
set rtp+=/c/Users/fatih/Desktop/Developing/Projects
set backspace=indent,eol,start

function! Browser ()
  let line = getline (".")
  let line = matchstr (line, "\%(http://\|www\.\)[^ ,;\t]*")
  exec "!firefox --new-tab google.com".line
endfunction
map <Leader>w :call Browser ()<CR>

" fugitive git bindings
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gt :Gcommit -v -q %:p<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>gr :Gread<CR>
nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>gb :Git branch<Space>
nnoremap <space>go :Git checkout<Space>
nnoremap <space>gps :Dispatch! git push<CR>
nnoremap <space>gpl :Dispatch! git pull<CR>

" Tab operations 
nnoremap <C-t> :tabnew<Space>
inoremap <C-t> <Esc>:tabnew<Space>

" For isolating the current windop
noremap tt :tab split<CR>
nnoremap <C-i> :cd %:h<CR>NERDTreeCWD<CR>

" nickspoons's code for moving the windows
function! ResizeNext(direction) abort
  if a:direction ==# '<'
    execute "normal! \<C-w><"
  elseif a:direction ==# '>'
    execute "normal! \<C-w>>"
  endif
  redraw
endfunction

function! ResizeInit(direction) abort
  call movefast#Next(a:direction, {
  \ 'directions': ['<', '>'],
  \ 'title': 'Resizing…',
  \ 'next': function('ResizeNext')
  \})
endfunction

" Use a line cursor within insert mode and a block cursor everywhere else.
"
" Using iTerm2? Go-to preferences / profile / colors and disable the smart bar
" cursor color. Then pick a cursor and highlight color that matches your theme.
" That will ensure your cursor is always visible within insert mode.
"
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

nnoremap <silent> <C-w>> :call ResizeInit('>')<CR>
nnoremap <silent> <C-w>< :call ResizeInit('<')<CR>

" For replacing a variable in local/global scope

" For local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>

" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>
