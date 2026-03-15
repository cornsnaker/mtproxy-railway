FROM telegrammessenger/proxy:latest

# Expose the necessary ports
EXPOSE 443 2398

# Railway sometimes requires the proxy to bind to 0.0.0.0 explicitly
# We use the CMD to ensure the proxy knows its external identity
CMD ["/bin/sh", "-c", "/usr/bin/mtproto-proxy -u root -p 2398 -H 443 -S $SECRET --nat-info $INTERNAL_IP:$EXTERNAL_IP --aes-pwd /etc/telegram/hello-exploit 0"]
