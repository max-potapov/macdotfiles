" Pathogen
execute pathogen#infect()

filetype on
filetype plugin indent on                       " Highlight files by type

set number                                      " Show line numbers
set hlsearch                                    " Search highlight
set backspace=indent,eol,start                  " Backspace for dummies
set showmatch                                   " Show matching brackets/parenthesis
set incsearch                                   " Find as you type search
set ignorecase                                  " Case insensitive search
set smartcase                                   " Case sensitive when uc present
set wildmenu                                    " Show list instead of just completing
set wildmode=list:longest,full                  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]                   " Backspace and cursor keys wrap too
set scrolljump=5                                " Lines to scroll when cursor leaves screen
set scrolloff=3                                 " Minimum lines to keep above and below cursor
set foldenable                                  " Auto fold code
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.  " Highlight problematic whitespace

set cursorline                                  " Cursor hightlight

set nowrap                                      " Do not wrap long lines
set autoindent                                  " Indent at the same level of the previous line
set shiftwidth=4                                " Use indents of 4 spaces
set expandtab                                   " Tabs are spaces, not tabs
set tabstop=4                                   " An indentation every four columns
set softtabstop=4                               " Let backspace delete indent
set nojoinspaces                                " Prevents inserting two spaces after punctuation on a join (J)

syntax enable                                   " Color higlight
set background=dark
colorscheme solarized

set laststatus=2                                " Airline
let g:airline_powerline_fonts = 1

autocmd BufNewFile,BufWrite,BufRead Podfile,*.podspec setlocal filetype=podfile syntax=ruby

