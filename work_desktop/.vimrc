" General Settings
set hlsearch
set incsearch
set showmatch

" Hex
command Hex %!xxd
command Hexr %!xxd -r

" Set exrc and secure to allow project specific configs
set exrc
set secure

" Line numbers
set number
set relativenumber

" Set split area
set splitbelow
set splitright

" Split naviagtions
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Fuzzy
set wildmenu
" Don't offer to open certain files
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=*.pdf,*.psd
set autochdir

" Highlight 128 column
set colorcolumn=128
highlight ColorColumn ctermbg=darkgray

set background=dark
syntax on

"colorscheme base16-atelierforest
hi Comment ctermfg=2
hi String ctermfg=9
hi Include ctermfg=12

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
" PEP8 python settings
"set tabstop=4
"set softtabstop=4
"set shiftwidth=4
"set textwidth=79
"set expandtab
"set autoindent
"set fileformat=unix
"set encoding=utf-8
"
"" C/C++ settings
" set tabstop=8
" set softtabstop=8
" set shiftwidth=8
" set textwidth=79
" set expandtab
" set autoindent
" set fileformat=unix
"
"" Go settings
" set tabstop=8
" set softtabstop=8
" set shiftwidth=8
" set textwidth=79
" set expandtab
" set autoindent
" set fileformat=unix
"
