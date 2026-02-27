# Use the official Telegram MTProxy image
FROM telegrammessenger/proxy:latest

# MTProxy uses 443 for traffic and 2398 for stats
EXPOSE 443 2398

# The entrypoint in the official image handles the SECRET and TAG 
# environment variables automatically.
