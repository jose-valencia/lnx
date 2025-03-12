" Basic settings
set number                 " Show line numbers
set tabstop=4              " Number of spaces that a tab character represents
set shiftwidth=4           " Number of spaces to use for indentation
set expandtab              " Use spaces instead of tabs
set smartindent            " Enable smart indentation
set autoindent             " Enable automatic indentation
set wrap                   " Wrap long lines
set linebreak              " Avoid breaking words at the line break
set cursorline             " Highlight the current line
set clipboard=unnamedplus  " Use system clipboard
set mouse=a                " Enable mouse support
set undofile               " Enable undo file for persistent undo history
set updatetime=300         " Reduce update time for faster UI
set timeoutlen=500         " Timeout length for mapped sequences

" Plugin manager (vim-plug)
call plug#begin('~/.vim/plugged')

" Plugin list
Plug 'git@github.com:neovim/nvim-lspconfig.git'  " LSP support
Plug 'junegunn/fzf.vim'                      " Fuzzy finder
Plug 'preservim/nerdtree'                    " File explorer
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Language server (LSP)
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " Syntax highlighting
Plug 'airblade/vim-gitgutter'                " Git integration
Plug 'vim-airline/vim-airline'               " Status line
Plug 'tpope/vim-fugitive'                   " Git commands
Plug 'hrsh7th/nvim-compe'                   " Autocompletion
Plug 'nvim-lua/plenary.nvim'                " Utility functions for Lua
Plug 'hoob3rt/lualine.nvim'                 " Status line with better UI
Plug 'morhetz/gruvbox'                      " Colorscheme
Plug 'bullets-vim/bullets.vim'              " Vim plugin for automated bullet lists
call plug#end()

" Colorscheme setup
syntax enable
colorscheme gruvbox
set background=dark

" Treesitter configuration
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",  -- or specify a list of languages, e.g., {"python", "lua"}
  highlight = {
    enable = true,  -- Enable highlighting
    disable = {},   -- Disable highlighting for some languages
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<CR>",  
      node_incremental = "<C-n>",
      scope_incremental = "<C-s>",
      node_decremental = "<C-p>",
    },
  },
  indent = {
    enable = true,
  },
}
EOF

" LSP settings (coc.nvim)
let g:coc_global_extensions = [
  \ 'coc-python',
  \ 'coc-tsserver',
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-pyright',
  \ 'coc-clangd',
  \ 'coc-sumneko-lua',
  \ 'coc-snippets'
\ ]

" nvim-lspconfig setup
lua << EOF
local lspconfig = require('lspconfig')

-- Example for Python (pyright)
lspconfig.pyright.setup{}
EOF

" Autocompletion settings (compe)
let g:compe = {}
let g:compe.enabled = v:true
let g:compe.auto_complete = v:true
let g:compe.preselect = 'enable'
let g:compe.source = {'path': v:true, 'buffer': v:true, 'nvim_lsp': v:true}

" Key mappings for NERDTree
map <C-n> :NERDTreeToggle<CR>  " Toggle file explorer with Ctrl + n

" Key mappings for fzf.vim (Fuzzy search)
map <C-p> :Files<CR>  " Search files with Ctrl + p
map <C-b> :Buffers<CR>  " Search buffers with Ctrl + b

" Basic key mappings
nnoremap <C-s> :w<CR>  " Save with Ctrl+S
nnoremap <C-q> :q<CR>  " Quit with Ctrl+Q
nnoremap <M-q> :q!<CR>    "Quit without saving Alt+Q

" Airline settings (status line)
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

" Bullets.vim
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch',
    \ 'vim',
    \ ''
    \]

" This will set the filetype to markdown for all files that you open, unless they are explicitly recognized as a different filetype (like .py for Python, .js for JavaScript, etc.).
augroup filetype_markdown
  autocmd!
  autocmd BufRead,BufNewFile *.* set filetype=text
augroup END

" Enable syntax highlighting for .vim files
augroup vim_syntax
  autocmd!
  autocmd BufNewFile,BufRead *.vim setlocal filetype=vim
augroup END
