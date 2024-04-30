#Install and build list 
*recovered Fedora Workstation system*

##List compiled for Meat Version 4 rebuild


##System general
------------------------------

- nerdfonts
   gh repo clone ryanoasis/nerd-fonts
- eza



##Core VIM/Neovim
Install with dnf
------------------------------

P1
neovim.x86_64
vim-pathogen.noarch
vim-airline.noarch

awesome-vim-colorschemes.noarch
vim-devicons.noarch
vim-nerdtree.noarch
vim-gitgutter.noarch
ShellCheck.x86_64
vim-syntastic.noarch
 
 
 
 
vim-syntastic-asciidoc.noarch
vim-syntastic-c.noarch
vim-syntastic-cpp.noarch
vim-syntastic-cs.noarch
vim-syntastic-css.noarch
vim-syntastic-fortran.noarch
vim-syntastic-go.noarch
vim-syntastic-haskell.noarch
vim-syntastic-help.noarch
vim-syntastic-html.noarch
vim-syntastic-java.noarch
vim-syntastic-json.noarch
vim-syntastic-julia.noarch
vim-syntastic-less.noarch
vim-syntastic-lua.noarch
vim-syntastic-matlab.noarch
vim-syntastic-perl.noarch
vim-syntastic-perl6.noarch
vim-syntastic-php.noarch
vim-syntastic-python.noarch
vim-syntastic-qml.noarch
vim-syntastic-ruby.noarch
vim-syntastic-sh.noarch
vim-syntastic-text.noarch
vim-syntastic-xhtml.noarch
vim-syntastic-xml.noarch
vim-syntastic-xslt.noarch
vim-syntastic-yaml.noarch


# Bash shell
------------------------------

powerline-go.x86_64

# Ai
------------------------------
https://github.com/TheR1D/shell_gpt.git
https://github.com/szczyglis-dev/py-gpt.git

gh extension install github/gh-copilot
gh extension upgrade gh-copilot

(Pathogen takes care of the vim/nvim awareness)
git clone https://github.com/github/copilot.vim \
   ~/.vim/pack/github/start/copilot.vim

git clone https://github.com/github/copilot.vim \
   ~/.config/nvim/pack/github/start/copilot.vim

in vim and neovim do in each:
:Copilot setup
:Copilot enable
