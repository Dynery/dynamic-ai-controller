# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Disable interactive prompts during package installs
ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies (Node.js needs curl, gnupg, etc.)
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    ca-certificates \
    build-essential \
    sudo \
    python3 \
    python3-pip

# Install Node.js 18.x (LTS) using NodeSource repository
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs
    
# Install Node-RED globally via npm
RUN npm install -g --unsafe-perm node-red                         

# Set working directory
WORKDIR /data

# 4. Copy Python dependencies list and install them
COPY requirements.txt /tmp/requirements.txt
RUN pip3 install --no-cache-dir -r /tmp/requirements.txt

# Copy project-specific files into the container
COPY flows/flows.json /data/flows.json
COPY scripts/ /data/scripts/
COPY ai_model/ /data/ai_model/
COPY data/ /data/data/

# Expose Node-RED's default port
EXPOSE 1880

# Start Node-RED
CMD ["node-red", "--userDir", "/data"]
