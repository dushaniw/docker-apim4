```
am4-docker-dist
├── am-core
│   ├── conf
│   │   └── deployment.toml
│   ├── Dockerfile
│   └── lib
├── bin
│   ├── docker-compose-apim-with-si.yaml
│   ├── docker-compose-basic-apim.yaml
│   └── startup.sh
├── int-gw
│   ├── conf
│   │   └── deployment.toml
│   ├── deployment
│   │   ├── carbonapps
│   │   └── synapse-configs
│   │       └── default
│   │           ├── imports
│   │           ├── inbound-endpoints
│   │           ├── local-entries
│   │           ├── proxy-services
│   │           ├── registry.xml
│   │           ├── sequences
│   │           │   ├── fault.xml
│   │           │   └── main.xml
│   │           └── synapse.xml
│   ├── Dockerfile
│   └── lib
└── streaming-provider
    ├── conf
    │   └── deployment.yaml
    ├── deployment
    │   └── siddhi-files
    ├── Dockerfile
    └── lib
```

To run am4-docker-distribution in **basic** mode with AM Core and Integration Gateway,  
1. Go to `am4-docker-dist/bin/`
2. Open a terminal and run `sh startup.sh --basic`

To run am4-docker-distribution in **full** mode with AM Core, Integration Gateway and Streaming Provider,  
1. Go to `am4-docker-dist/bin/`
2. Open a terminal and run `sh startup.sh --full`
