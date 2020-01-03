# TODO: command to open log in vim
alias log='date +"%n(%V) %Y-%m-%d %R:%S (%Z %:::z)%n* " >> ~/.daily.log/daily.log; vim --servername daily-log --remote-send "<ESC>:e<CR>G"; i3-msg -q [title="DAILY-LOG"] focus'
alias log-push='d="$(sed -n '"'"'/^([0-9]\{2\}) [0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\} [0-9]\{2\}:[0-9]\{2\}:[0-9]\{2\} ([A-Z]\{3\} [+-][0-9:]\+)/h; ${s/^.*+//;s/ .*$//;x;G;s/\n/ /p}'"'"' ~/.daily.log/daily.log)"; git -C ~/.daily.log add ~/.daily.log/daily.log && git -C ~/.daily.log commit -m "$d" && git -C ~/.daily.log push'
alias load-log='vim --servername daily-log ~/.daily.log/daily.log'
