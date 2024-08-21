# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Additions from LazyVim

* Added WSL clipboard
* Installed python LSP

### Installed python lsp

sudo npm i -g pyright

### Installed tmux

Use josean's configuration

https://www.youtube.com/watch?v=U-omALWIBos
https://github.com/josean-dev/dev-environment-files

### Installed helm

sudo curl -L https://github.com/mrjosh/helm-ls/releases/download/master/helm_ls_linux_amd64 --output /usr/local/bin/helm_ls
sudo chmod +x /usr/local/bin/helm_ls
sudo npm install -g yaml-language-server

### Tmux

#### Install tpm

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

#### Configuration

~/.tmux.conf
```

set -g default-terminal "screen-256color"
set -ga terminal-overrides ",*256col*:Tc"
set -ga terminal-overrides '*:Ss=\E[%p1%d q:Se=\E[ q'
set-environment -g COLORTERM "truecolor"

set -g prefix C-a
unbind C-b
bind-key C-a send-prefix

# new windows are the same as previous path
bind c new-window -c "#{pane_current_path}"
unbind %
bind | split-window -h -c "#{pane_current_path}"
unbind '"'
bind - split-window -v -c "#{pane_current_path}"

bind 'v' copy-mode

unbind r
bind r source-file ~/.tmux.conf

bind -r j resize-pane -D 5
bind -r k resize-pane -U 5
bind -r l resize-pane -R 5
bind -r h resize-pane -L 5

bind -r m resize-pane -Z

set -g mouse on

set-window-option -g mode-keys vi

bind-key -T copy-mode-vi 'v' send -X begin-selection # start selecting text with "v"
bind-key -T copy-mode-vi 'y' send -X copy-selection # copy text with "y"

unbind -T copy-mode-vi MouseDragEnd1Pane # don't exit copy mode when dragging with mouse

# remove delay for exiting insert mode with ESC in Neovim
set -sg escape-time 10

# tpm plugin
set -g @plugin 'tmux-plugins/tpm'

# list of tmux plugins
set -g @plugin 'christoomey/vim-tmux-navigator'
set -g @plugin 'jimeh/tmux-themepack'
set -g @plugin 'tmux-plugins/tmux-resurrect' # persist tmux sessions after computer restart
set -g @plugin 'tmux-plugins/tmux-continuum' # automatically saves sessions for you every 15 minutes

set -g @themepack 'powerline/default/cyan'

set -g @resurrect-capture-pane-contents 'on'
set -g @continuum-restore 'on'

# initialize tmux plugin manager (keep this at bottom)
run '~/.tmux/plugins/tpm/tpm'
```
