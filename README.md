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
- [x] Node-RED ↔ SPS integration **(in progress)**
- [ ] Data logging and preprocessing
- [ ] AI model development for parameter tuning
- [ ] Real-time integration and testing


## License
Licensed under the Apache 2.0 License.



## 🤝 Open Source Support

I believe in open collaboration and open-source technologies.  
This project is part of my effort to contribute to the industrial AI and automation community.

Feel free to fork, suggest, or contribute. Pull requests are welcome!



## ⚙️ Getting Started with Docker

This project includes Node-RED, Python-based AI integration, and PLC communication — all bundled in a Docker image for easy setup.



### 🧰 Prerequisites

- Docker installed on your system  
  [Get Docker](https://docs.docker.com/get-docker/)



### 🚀 Getting Started

1. Clone this repository:

```bash
git clone https://github.com/Dynery/dynamic-ai-controller.git
cd dynamic-ai-controller
```

2. Build the Docker image:
```
sudo docker build -t dynamic-ai .
```

3. Run the container:
```
sudo docker run -d --name dynamic-ai-controller -p 1880:1880 dynamic-ai-controller
```

4. Open Node-RED in your browser:
```
http://localhost:1880
```








## ⚠️ **Safety and Responsibility Disclaimer**

This project is intended for educational, testing, and prototyping purposes only.

If you plan to connect this system to a real industrial process or live production environment, you do so **at your own risk**.

Always ensure proper **industrial safety procedures**, **process isolation**, and **fail-safe mechanisms** are in place.

The developers of this project are **not responsible** for any damage, injury, or downtime caused by improper or unsafe usage.














