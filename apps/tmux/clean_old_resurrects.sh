# remove all except the first 3 lines
ls ~/.tmux/resurrect/tmux_* | sort -r | tail -n +4 | xargs rm
