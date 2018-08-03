#!/usr/bin/env bash

sudo tee /etc/supervisor/conf.d/frp.conf <<EOF

[program:frp] ; 程序名称，在 supervisorctl 中通过这个值来对程序进行一系列的操作
user=yang
command=/etc/frp/frpc -c /etc/frp/frpc.ini  ; 启动命令，与手动在命令行启动的命令是一样的
process_name=%(program_name)s
autostart=True        ; 在 supervisord 启动的时候也自动启动
autorestart=True      ; 程序异常退出后自动重启
startsecs=30
startretries=5
exitcodes=0,2
stopsignal=TERM
stopwaitsecs=30
redirect_stderr=True  ; 把 stderr 重定向到 stdout，默认 false
;日志文件，需要注意当指定目录不存在时无法正常启动，所以需要手动创建目录（supervisord 会自动创建日志文件）
stdout_logfile_maxbytes = 20MB  ; stdout 日志文件大小
stdout_logfile_backups = 10     ; stdout 日志文件备份数
stdout_logfile = /var/log/frp/stdout.log

EOF
