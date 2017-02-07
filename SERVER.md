# SSH

```
# Add public key of my master key
$ echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDeMFkZtjc9vdc+tDvdBy4iurI1vsG6JRjnnh51hIQOVYFYHbjatTsmuCeWFkAJcKbh5KVzYIbH1bh+FjAM++ZGBbE3jvtQdPjNo4j+Igq6xcRyRRFf6MeZnFS7dOOJO1/HO11sIoEpoqXEYv4Tn94brOJKTeWlP11+WZcwNCv0QQjgGvgQ2ghyg3Mi3WUELEbx+DIuqZFSC4zZsJTgTqslhy3a6taHggLN6qL3Jky+XuucFFJdYhNC3AI5cRtVcZDujNqi0cxvok8FfgcmSid1ybdph6tn+gXu4b4VHyF/DimuaYBSFO9MVjAaVvyj2XTyiVMTaBjgO7TVM+yhjWUCb/28yFkwDUsF2/t3ZhP/mjAbuUPDOrCsnuOyk9X/XKr8XLdkKIUhovjqTloXhDn9HtzGpIZgEIETqDzwBYw3Ck4VEhKeA549OIUQkTQnsTCjGx3Kygs7LXI6x5y5YTAJ30dFVL80WodgStBORa4Caa30L+efc1KHX2S9aBSpj5qiTSxrfJ6WpNYr4qeDFIH4HtIx4JNP1ZcVdKd1XEDqaY2amzGjBJMaAf/Nu4n/DMku4IweZOJ/AAmNXFUZdibvEg6jXbMm+7Mt4m9mA9vfkq/EY8/tlFVF/F4nfVuTN1UIx2iV6Z3sXLTUU+D3EZUbvwTPjuYUieNWx1aB3bIfSw==" >> ~/.ssh/authorized_keys
$ vi /etc/ssh/sshd_config
# add below
#   PasswordAuthentication no
# change `UsePAM` to `no`
$ service ssh restart
```

# Neovim

Follow [instructions](https://github.com/neovim/neovim/wiki/Installing-Neovim)

```
$ mkdir -p ~/.config/nvim
$ wget https://raw.githubusercontent.com/Snack-X/setting/master/nvim/init.vim -P ~/.config/nvim
```

# Locale

```
$ locale-gen ko_KR.UTF-8
```

# Hostname

```
$ vi /etc/hostname
# enter hostname

$ hostname -F /etc/hostname
```

# zsh, oh-my-zsh

```
$ apt-get update
$ apt-get install zsh git
$ chsh -s $(which zsh)

$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
$ wget https://raw.githubusercontent.com/Snack-X/setting/master/oh-my-zsh/bureau-snack.zsh-theme -P ~/.oh-my-zsh/themes
$ wget https://raw.githubusercontent.com/Snack-X/setting/master/oh-my-zsh/node_version.zsh -P ~/.oh-my-zsh/lib

$ vi ~/.zshrc
# change `ZSH_THEME` to `"bureau-snack"`
$ . ~/.zshrc
```

# Timezone

```
$ ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime
```

# tmux

```
$ wget https://raw.githubusercontent.com/Snack-X/setting/master/tmux/.tmux.conf -P ~
$ tmux source-file ~/.tmux.conf
# Use C-a as prefix
#   C-a r    reload config
#   M-Left   Previous window
#   M-Right  Next window
#   M-Up     Previous session
#   M-Down   Next session

$ vi ~/.zshrc
# add below
#   if which tmux >/dev/null 2>&1; then
#     #if not inside a tmux session, and if no session is started, start a new session
#     test -z "$TMUX" && (tmux attach || tmux new-session)
#   fi
```

# Node.js, NVS

*Installation may change, See https://github.com/jasongin/nvs*

```
$ export NVS_HOME="$HOME/.nvs"
$ git clone https://github.com/jasongin/nvs "$NVS_HOME"
$ . "$NVS_HOME/nvs.sh" install

$ nvs add latest
$ nvs link latest
```

# Yarn

```
$ curl -o- -L https://yarnpkg.com/install.sh | bash
```
