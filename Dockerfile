# 1. Use the official Node-RED base image
FROM nodered/node-red:latest

# 2. Switch to root user to install system dependencies
USER root

# 3. Install Python and pip (for AI training and prediction scripts)
RUN apt-get update && apt-get install -y python3 python3-pip

# 4. Copy Python dependencies list and install them
COPY requirements.txt /tmp/requirements.txt
RUN pip3 install --no-cache-dir -r /tmp/requirements.txt

# 5. Copy project files into the container
COPY flows/flows.json /data/flows.json       # Node-RED flow
COPY scripts/ /data/scripts/                 # Training and prediction scripts
COPY ai_model/ /data/ai_model/               # Trained model will be stored here
COPY data/ /data/data/                       # Training data (CSV)

# 6. Switch back to the default Node-RED user for security and compatibility
USER node-red

# 7. Start only Node-RED for now (Flask will be added later)
CMD ["node-red"]
