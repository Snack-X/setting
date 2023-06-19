# ZSH and Oh My Zsh

## Prerequisites

* ZSH
* Git

```shell
$ apt update
$ apt install zsh git
```

## Use ZSH as default shell

```shell
$ chsh -s $(which zsh)
```

## Setup Oh My Zsh

```shell
# installation command might change, follow https://github.com/robbyrussell/oh-my-zsh#basic-installation
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

$ wget https://raw.githubusercontent.com/Snack-X/setting/master/zsh/snack.zsh-theme -P ~/.oh-my-zsh/themes
$ wget https://raw.githubusercontent.com/Snack-X/setting/master/zsh/node_version.zsh -P ~/.oh-my-zsh/lib
$ wget https://raw.githubusercontent.com/Snack-X/setting/master/zsh/.zshrc -O ~/.zshrc

$ vi ~/.zshrc
# change `ZSH_THEME` to `"snack"`
# add `DEFAULT_UESR`
$ . ~/.zshrc
```