# Retrieve the current production version of KWG
FROM kaazing/enterprise-gateway:5.6.0

# Install the demo gateway configuration file
COPY gateway-config-forward.xml conf/gateway-config.xml

# Installing some utilities for troubleshooting purposes (optional)
RUN apt-get update && apt-get install -y \
  netcat \
  telnet \
  vim
