 cd /opt/goproxy
 cat <<EOF >goproxy-vps.toml
[default]
log_level = 2

[[http2]]
listen = ":443"
server_name = ["$SERVER_NAME"]
proxy_fallback = "http://127.0.0.1:80"
EOF

goproxy-vps -logtostderr -v 3
