# Install neovim

Follow [instructions](https://github.com/neovim/neovim/wiki/Installing-Neovim)

# Locale

```
$ locale-gen ko_KR.UTF-8
```

# Hostname

```
$ vi /etc/hostname
# open /etc/hosts
# add below lines
#   127.0.0.1       <FQDN>  <HOSTNAME>
#   <IP_OF_SERVER>  <FQDN>  <HOSTNAME>
$ hostname -F /etc/hostname
```

# zsh, oh-my-zsh

```
$ apt-get update
$ apt-get install zsh git
$ chsh -s $(which zsh)
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# copy `/oh-my-zsh/bureau-snack.zsh-theme` to `/.oh-my-zsh/themes`
# open ~/.zshrc
# change ZSH_THEME to "bureau-snack"
$ . ~/.zshrc
```

# Timezone

```
$ ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime
```

# tmux

```
# copy `/.tmux.conf` to `~/`
$ tmux source-file ~/.tmux.conf
# Use C-a as prefix
#   C-a r    reload config
#   M-Left   Previous window
#   M-Right  Next window
#   M-Up     Previous session
#   M-Down   Next session
```

# Node.js, nvm

Follow [instruction](https://github.com/creationix/nvm#install-script) to install nvm

```
$ vi ~/.zshrc
# add below
#   export NVM_DIR="/root/.nvm"
#   [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
$ . ~/.zshrc
$ nvm install latest
$ nvm alias default 0.12
```
