# Font

Install [D2Coding](https://github.com/naver/d2codingfont/releases)

# SSH

Copy master key from Dropbox as

# Terminal

* For Windows:
    1. Use Windows 10 & Windows Subsystem for Linux
    2. Install [Cmder](https://github.com/cmderdev/cmder)
    3. *Add remaining instructions here*

## zsh, oh-my-zsh

```
$ apt-get update
$ apt-get install zsh git
$ chsh -s $(which zsh)

# oh-my-zsh, https://github.com/robbyrussell/oh-my-zsh#basic-installation
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
$ wget https://raw.githubusercontent.com/Snack-X/setting/master/oh-my-zsh/snack.zsh-theme -P ~/.oh-my-zsh/themes
$ wget https://raw.githubusercontent.com/Snack-X/setting/master/oh-my-zsh/node_version.zsh -P ~/.oh-my-zsh/lib

$ vi ~/.zshrc
# change `ZSH_THEME` to `"snack"`
# add `DEFAULT_UESR`
$ . ~/.zshrc
```

## tmux

```
$ wget https://raw.githubusercontent.com/Snack-X/setting/master/tmux/.tmux.conf -P ~
$ tmux source-file ~/.tmux.conf
# C-a            General prefix
# C-a r          Reload config
# C-a [          Buffer
# M-<Left>       Previous window
# M-<Right>      Next window
# M-<Up>         Previous session
# M-<Down>       Next session
# C-a -          Horizontal split pane
# C-a |          Vertical split pane
# S-<Arrow>      Move between panes
# C-a M-<Arrow>  Resize pane
# C-M-Up         Change scope to child tmux
# C-M-Down       Change scope to parent tmux

$ vi ~/.zshrc
# add below
#   if which tmux >/dev/null 2>&1; then
#     #if not inside a tmux session, and if no session is started, start a new session
#     test -z "$TMUX" && (tmux attach || tmux new-session)
#   fi
```

# Sublime Text 3

1. Install [Package Control](https://packagecontrol.io/)
2. Install from Package Control
  * Boxy Theme
  * ConvertToUTF8
  * DocBlockr
  * EditorConfig
  * Emmet
  * JSON Reindent
  * SideBarEnhancements
3. Apply `sublime/Preferences.sublime-settings` to User Settings (`font_size` may be changed)

# Node.js, NVS

```
$ export NVS_HOME="$HOME/.nvs"
$ git clone https://github.com/jasongin/nvs "$NVS_HOME"
$ . "$NVS_HOME/nvs.sh" install

$ nvs add latest
$ nvs use latest
$ nvs link
```
