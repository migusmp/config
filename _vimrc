set nocompatible

" Muestra los números de línea de manera relativa
set relativenumber

"Muestra el número de línea
set number

" Habilitamos la syntaxis
syntax on

"Resalta la línea actual
set cursorline

set backspace=indent,eol,start


" Guarda automáticamente cuando cambias de buffer
"set autowrite

"Establece el número de espacios que se usan al insertar una tabulación
"set tabstop=4

" Establece el número de espacios que se usan al apretar la tecla de
" tabulación
"set shiftwidth=4
"set expandtab


"Ignora mayúsculas y minúsculas en la búsqueda
"set ignorecase
"set smartcase

" Habilita la búsqueda incremental
"set incsearch



" Modificar el color de cursorline
highlight CursorLine cterm=NONE ctermbg=darkgrey ctermfg=NONE guibg=#3c3c3c guifg=NONE

" Modificar el color del número de la línea actual
highlight CursorLineNr cterm=NONE ctermbg=darkgrey ctermfg=yellow guibg=#3c3c3c guifg=yellow

" Habilita el uso de ratón
set mouse=a

" Habilitar el auto-cierre de paréntesis, corchetes y comillas
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i

" colorscheme desert
" colorscheme desert

call plug#begin('~/.vim/plugged')

" Lista de plugins a instalar
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Buscar ficheros
Plug 'junegunn/fzf.vim'
Plug 'rust-lang/rust.vim'
Plug 'eslint/eslint'
Plug 'neoclide/coc.nvim', { 'branch' : 'release' }
Plug 'vim-airline/vim-airline'
Plug 'pangloss/vim-javascript' "Javascript support
Plug 'leafgarland/typescript-vim' "Typescript support
Plug 'morhetz/gruvbox'

" Finaliza la inicialización de vim-plug
call plug#end()
" Configuración de coc.nvim
let g:coc_global_extensions = ['coc-rust-analyzer']
"
" Mapas de teclas para navegar y seleccionar las opciones de autocompletado
inoremap <silent><expr> <C-Space> coc#refresh()
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <C-n> coc#pum#visible() ? coc#pum#next(1) : "\<C-n>"
inoremap <silent><expr> <C-p> coc#pum#visible() ? coc#pum#prev(1) : "\<C-p>"""))""))"")))"'']"

" Configuración de NERDTree
" Abrir NERDTree con F2
map <F2> :NERDTreeToggle<CR>

" Configurar NERDTree para abrirse automáticamente si Vim se inicia sin archivos
autocmd vimenter * if !argc() | NERDTree | endif

" Cerrar Vim si NERDTree es el único buffer restante
autocmd bufenter * if winnr('$') == 1 && exists('t:NERDTreeBufName') && bufname() == t:NERDTreeBufName | q | endif

" Resaltar directorios con negrita
highlight NERDTreeDir ctermfg=cyan guifg=#00FFFF

