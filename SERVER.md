# Locale

```
locale-gen ko_KR.UTF-8
```

# Hostname

```
nano /etc/hostname
# open /etc/hosts
# add below lines
#   127.0.0.1       <FQDN>  <HOSTNAME>
#   <IP_OF_SERVER>  <FQDN>  <HOSTNAME>
hostname -F /etc/hostname
```

# zsh, oh-my-zsh

```
apt-get update
apt-get install zsh git
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# open ~/.zshrc
# change ZSH_THEME to "bureau"
. ~/.zshrc
```

# Timezone

```
ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime
```

# Byobu

```
apt-get install byobu
byobu-enable
byobu
# F9
#   Toggle status notifications
#     date, hostname, load_average, memory, time, uptime
#  Byobu currently does not ~~
#     toggle on
```

# nvm

```
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash
# open ~/.zshrc
# add below
#   export NVM_DIR="/root/.nvm"
#   [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
. ~/.zshrc
nvm install 0.12
nvm alias default 0.12
```
