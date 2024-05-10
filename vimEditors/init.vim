
   " Initialize package management
   call plug#begin('~/.local/share/nvim/plugged')

   " Mike's Neovim configuration extras
   se nu





   " List the plugins you want to install
   Plug 'vim-airline/vim-airline'
   Plug 'preservim/nerdtree'
   Plug 'vim-syntastic/syntastic'
   Plug 'dense-analysis/ale'  " Alternative to syntastic using asynchronous linting
   Plug 'koalaman/shellcheck'
   Plug 'airblade/vim-gitgutter'
   Plug 'github/copilot.vim' " Assuming you have access to GitHub Copilot

   " Load the plugins
   call plug#end()

   " Airline configuration
   let g:airline#extensions#tabline#enabled = 1
   let g:airline#extensions#tabline#formatter = 'default'

   " NERDTree configuration
   " autocmd vimenter * NERDTree
   autocmd bufenter * if (winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | q | endif

   " ALE or Syntastic configuration
   " Uncomment one of the following based on which plugin you choose
   " ALE Settings
   " let g:ale_fixers = {
   " \ 'sh': ['shellcheck'],
   " \ 'css': ['stylelint'],
   " \ 'html': ['tidy']
   " \ }
   " let g:ale_linters_explicit = 1

   " Syntastic Settings
   let g:syntastic_css_checkers = ['csslint']
   let g:syntastic_html_checkers = ['htmltidy']
   let g:syntastic_sh_checkers = ['shellcheck']

   " Shellcheck integration
   let g:syntastic_sh_shellcheck_args = '-x'

   " GitGutter plugin configuration
   let g:gitgutter_enabled = 1
   let g:gitgutter_map_keys = 0

   " GitHub Copilot
   autocmd FileType * copilot#Enable()

   " Leader key configuration
   let mapleader = "\\"
   let maplocalleader = "\\"

   " Remove trailing whitespace on save
   autocmd BufWritePre * :%s/\s\+$//e

"  4. **Install Neovim plugins**:
"     - Open Neovim and run `:PlugInstall` to install the plugins.
"
"  Note that I've included both ALE and Syntastic for you to choose from. ALE is an asynchronous lint engine that can provide a smoother experience because it doesn't block the editor while linting. You might want to try both to see which fits your workflow better.
"
"  Once your setup is complete, you can start using Neovim with the plugins and configurations tailored similarly to your Vim setup. If you encounter any issues or have further customization needs, feel free to ask!
