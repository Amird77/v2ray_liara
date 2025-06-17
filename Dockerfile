# Use official V2Ray image
FROM v2fly/v2fly-core:latest

# Copy config.json to container
COPY config.json /etc/v2ray/config.json

# Expose port 443
EXPOSE 443

# Run V2Ray with the config file
ENTRYPOINT ["/usr/bin/v2ray", "-config", "/etc/v2ray/config.json"]
