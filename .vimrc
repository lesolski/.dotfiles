" ~/.vimrc 
" lesolski@2022 vim settings

" Load Plugins 
call plug#begin('~/.vim/plugged')

" Styling
Plug 'morhetz/gruvbox'
Plug 'prettier/vim-prettier', { 'do': 'npm install --frozen-lockfile --production', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'nathanaelkane/vim-indent-guides'
Plug 'sheerun/vim-polyglot'

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'

" Utils
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox " Apply gruvbox theme

let mapleader=" " " bind leader key to spacebar 

set number " show line numbers
set relativenumber " use relative line numbers 
set nowrap " don't wrap the text
set expandtab
set tabstop=2 " tab equaps 2 white spaces
set shiftwidth=2 " when indenting with > indent 2 spaces
set cursorline " highlight the line where the cursor is
set mouse=a " enables scroll - tmux will scroll its buffer if this is not set
syntax enable  " syntax highlighting 
set encoding=UTF-8 " set encoding so that non-ascii characters such as Icons will appear

" CoC settings 
" map TAB to autocomplete
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" JSX syntax highlight
let g:vim_jsx_pretty_highlight_close_tag = 1

" NerdTree
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

" Indentation guides
nnoremap <leader>t :IndentGuidesToggle<CR>

" remap CTRL-W to leader for easier windows manipulations
nnoremap <leader>w <c-w>
