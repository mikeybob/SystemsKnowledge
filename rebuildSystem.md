# Fedora Workstation Install and Rebuild Checklist and Installation Guide
*Based on Fedora 39 and Fedora 40 Workstation system recovery exercises April/May 2024. This document is compiled specifically from the Meat Version 4 rebuild.*

Relevant GitHub repositories
- [ ] one
- [ ] two
- [ ] three
- [ ] four
## File Format
One package per line

## Filesystems and Subvolumes
x


```bash
package1
package2
package3
```

Command to execute:
```bash
cat << EOF > packages.txt
package1
package2
package3
EOF
dnf install $(cat packages.txt)
```

## System General
```text
* nerdfonts
```

```bash
gh repo clone ryanoasis/nerd-fonts
```
* eza
```text
bat
kleopatra
pcsc-lite
pcsc-lite-acsccid
pcsc-tools
ykclient.x86_64
ykpers.x86_64
ykocli.noarch
yubibomb.x86_64
yubikey-personalization-gui.x86_64
yubikey-manager.noarch
pam_yubico.x86_64
yubico-piv-tool.x86_64
```
___

### Core Edit: VIM/Neovim
```text
* neovim.x86_64
* vim-pathogen.noarch
* vim-airline.noarch
* awesome-vim-colorschemes.noarch
* vim-devicons.noarch
* vim-nerdtree.noarch
* vim-gitgutter.noarch
* ShellCheck.x86_64
```
 ___
### Syntastic
```text
* vim-syntastic.noarch
* vim-syntastic-asciidoc.noarch
* vim-syntastic-c.noarch
* vim-syntastic-cpp.noarch
* vim-syntastic-cs.noarch
* vim-syntastic-css.noarch
* vim-syntastic-fortran.noarch
* vim-syntastic-go.noarch
* vim-syntastic-haskell.noarch
* vim-syntastic-help.noarch
* vim-syntastic-html.noarch
* vim-syntastic-java.noarch
* vim-syntastic-json.noarch
* vim-syntastic-julia.noarch
* vim-syntastic-less.noarch
* vim-syntastic-lua.noarch
* vim-syntastic-matlab.noarch
* vim-syntastic-perl.noarch
* vim-syntastic-perl6.noarch
* vim-syntastic-php.noarch
* vim-syntastic-python.noarch
* vim-syntastic-qml.noarch
* vim-syntastic-ruby.noarch
* vim-syntastic-sh.noarch
* vim-syntastic-text.noarch
* vim-syntastic-xhtml.noarch
* vim-syntastic-xml.noarch
* vim-syntastic-xslt.noarch
* vim-syntastic-yaml.noarch
```

## Bash shell
* powerline-go.x86_64


## Ai
Note about these here.

### GPT utilities
```bash
gh repo clone https://github.com/TheR1D/shell_gpt.git
```


### GitHub Copilot vim/nvim
Installing GitHub copilot

```bash
gh extension install github/gh-copilot
```

Upgrading an existing installation
```bash
gh extension upgrade gh-copilot
```

*~~Note: Pathogen takes care of the vim/nvim extension activation~~*

 ```bash
 git clone https://github.com/github/copilot.vim ~/.vim/pack/github/start/copilot.vim
```

 ```bash
 git clone https://github.com/github/copilot.vim ~/. config/nvim/pack/github/start/copilot.vim
```

In vim and neovim do in each:
```vim
:Copilot setup
:Copilot enable
```

## Yubikey Tool installation and PAM configuration
x

## Jellyfin Media System
x

## Cloudflare Argo Tunnel Reverse Proxy
x

## Nginx webserver
x

## Fun and flashy stuff
x
fastfetch