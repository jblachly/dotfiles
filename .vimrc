set ignorecase
set smartcase

set number

syntax on
" colorscheme molokai_vivify
colorscheme monokai

autocmd FileType python setlocal expandtab
autocmd FileType python setlocal tabstop=4
autocmd FileType python setlocal shiftwidth=4

autocmd FileType json setlocal expandtab
autocmd FileType json setlocal tabstop=4
autocmd FileType json setlocal shiftwidth=4

au BufNewFile,BufRead Snakefile set filetype=snakemake
au BufNewFile,BufRead *.rules set filetype=snakemake
au BufNewFile,BufRead *.snakefile set filetype=snakemake
au BufNewFile,BufRead *.snake set filetype=snakemake

au FileType snakemake setlocal expandtab
au FileType snakemake setlocal tabstop=4
au FileType snakemake setlocal shiftwidth=4
