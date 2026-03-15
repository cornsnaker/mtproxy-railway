FROM telegrammessenger/proxy:latest

# MTProxy uses 443 for traffic and 2398 for stats
EXPOSE 443 2398

# Use the correct binary path (/usr/local/bin/) 
# and include the NAT fix for Railway
CMD ["/bin/sh", "-c", "/usr/local/bin/mtproto-proxy -u root -p 2398 -H 443 -M $WORKERS -C 60000 --aes-pwd /etc/telegram/hello-explorers-how-are-you-doing --nat-info $INTERNAL_IP:$EXTERNAL_IP $SECRET_CMD $TAG_CMD"]
