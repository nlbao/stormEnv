# ln -s /home/nlbao/env/apps/tmux/conf.sh ~/.tmux.conf

# change prefix to C-a
unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix

# reload tmux config
bind r source-file ~/.tmux.conf \; display-message "~/.tmux.conf reloaded"

# open window with currrent path                                                                   
bind c new-window -c '#{pane_current_path}'

# split panes using | and _
bind | split-window -h -c '#{pane_current_path}'
bind _ split-window -v -c '#{pane_current_path}'
unbind '"'
unbind %

# resize panes using Shift-arrow keys without prefix
bind -n S-Left resize-pane -L
bind -n S-Right resize-pane -R
bind -n S-Up resize-pane -U
bind -n S-Down resize-pane -D

# switch panes using Alt-arrow without prefix
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

# Ctrl arrow to switch windows
bind -n C-Left  previous-window
bind -n C-Right next-window

# # Enable mouse mode (tmux 2.1 and above)
# set -g mouse on

# Automatically set window title
set-window-option -g automatic-rename on
set-option -g set-titles on

# # don't rename windows automatically
# set-option -g allow-rename off

# No delay for escape key press
set -sg escape-time 0

# execute commands on all the panes simultaneously
bind C-x setw synchronize-panes

# Vi-bindings for visual mode
setw -g mode-keys vi

# others
setw -g monitor-activity on
set -g status-keys vi
set -g history-limit 10000


# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-continuum'
set -g @plugin 'jimeh/tmux-themepack'

# Automatic restore
set -g @continuum-restore 'on'
set -g @continuum-save-interval '15'
set -g status-right 'Continuum status: #{continuum_status}'

# theme
set -g @themepack 'powerline/block/cyan'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run -b '~/.tmux/plugins/tpm/tpm'

