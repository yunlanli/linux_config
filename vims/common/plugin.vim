set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
filetype off

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'arcticicestudio/nord-vim'                          " Nord Color Theme
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'                                 ":GBrowse opens up GitHub
Plugin 'preservim/nerdtree'

Plugin 'lervag/vimtex'                                     " writing, compiling latex in vim
Plugin 'KeitaNakamura/tex-conceal.vim'                     " for better latex conceal
Plugin 'Sirver/ultisnips'                                  " snippets

if !has("nvim")
	Plugin 'junegunn/fzf'                                  " Fuzzy File Finder
	Plugin 'junegunn/fzf.vim'
	Plugin 'dense-analysis/ale'                            " Linter
	Plugin 'ycm-core/YouCompleteMe'                        " Auto Completion
endif

if has("nvim")
	Plugin 'nvim-lua/plenary.nvim'                         " Telescope reqs (Finder)
	Plugin 'nvim-telescope/telescope.nvim'
	Plugin 'nvim-telescope/telescope-fzy-native.nvim'
	Plugin 'neovim/nvim-lspconfig'
	Plugin 'hrsh7th/cmp-nvim-lsp'                          " Auto-completion
	Plugin 'hrsh7th/cmp-buffer'
	Plugin 'hrsh7th/cmp-path'
	Plugin 'hrsh7th/cmp-cmdline'
	Plugin 'hrsh7th/nvim-cmp'
	Plugin 'quangnguyen30192/cmp-nvim-ultisnips'
endif

call vundle#end()

filetype plugin indent on
