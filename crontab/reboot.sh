@reboot crontab ~/env/crontab/reboot.sh

@reboot ~/env/apps/tmux/clean_old_resurrects.sh && date > /tmp/clean_old_resurrects.log

