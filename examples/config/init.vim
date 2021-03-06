set cursorline
set cursorcolumn
set expandtab
set hidden
set incsearch
set mouse=a
set number
set relativenumber
set shiftwidth=2
set splitbelow
set splitright
set signcolumn=auto:3
set tabstop=2
set nowrap
set exrc
syntax on

"set nobackup
"set nowritebackup
"set noswapfile

set t_Co=256

" overflow column guide
highlight ColorColumn ctermbg=235 guibg=#2c2d27
execute "set colorcolumn=" . join(range(121,99999), ',')

"true color
execute "set t_8f=\e[38;2;%lu;%lu;%lum"
execute "set t_8b=\e[48;2;%lu;%lu;%lum"

" compe
" TODO: move to inoremap nix mappings
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })
