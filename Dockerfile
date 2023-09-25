# 使用Alpine Linux作为基础镜像
FROM alpine:latest

# 更新包列表并安装WireGuard和nftables
RUN apk update && apk add wireguard-tools nftables

# 复制启动脚本到容器
COPY ./entrypoint.sh /entrypoint.sh

# 设定脚本可执行权限
RUN chmod +x /entrypoint.sh

# 定义启动时运行的脚本
ENTRYPOINT ["/entrypoint.sh"]
