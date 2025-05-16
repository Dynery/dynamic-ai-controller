# dynamic-ai-controller
AI-powered adaptive control system for industrial applications

This project is under active development. Currently working on integrating Node-RED with Siemens PLCs via OPC UA or nodeS7

Special thanks to the [nodeS7](https://github.com/plcpeople/nodeS7) project and its contributors for providing a powerful open-source S7 communication library.


## This project aims to:
- Read real-time industrial process data directly from PLCs
  - via [nodeS7](https://github.com/plcpeople/nodeS7) (S7 Ethernet Protocol)
  - or via OPC UA (for compatible systems)
- Use AI models to dynamically tune controller parameters (e.g., PID)
- Integrate Python and Node.js environments for seamless decision-making




## Technologies Used
- Python (scikit-learn, pandas, etc.)
- Node-RED (JavaScript flows)
- OPC UA / MQTT or nodeS7 for data acquisition



## Roadmap
- [x] Repository created
- [ ] Node-RED ↔ SPS integration **(in progress)**
- [ ] Data logging and preprocessing
- [ ] AI model development for parameter tuning
- [ ] Real-time integration and testing


## License
Licensed under the Apache 2.0 License.



## 🤝 Open Source Support

I believe in open collaboration and open-source technologies.  
This project is part of my effort to contribute to the industrial AI and automation community.

Feel free to fork, suggest, or contribute. Pull requests are welcome!






## ⚙️ Node-RED Setup

To use the PLC communication part of this project, please install Node-RED and the required modules on your machine.


### 🧰 Prerequisites
Make sure you have Node.js and npm installed

- Install Node-RED

  sudo npm install -g --unsafe-perm node-red
  
  Once Node-RED is installed, navigate to your Node-RED user directory:

  cd ~/.node-red
  

- Install Required Node-RED Modules

  npm install nodes7
  
  npm install -g node-red-contrib-opcua





