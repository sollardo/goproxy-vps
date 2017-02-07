 cat <<EOF >goproxy-vps.toml
[default]
log_level = 2

[[http2]]
listen = ":443"
server_name = ["${server_name}"]
proxy_fallback = "http://127.0.0.1:80"
EOF
