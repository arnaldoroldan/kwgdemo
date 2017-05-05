# kwgdemo
Kaazing WebSocket Gateway docker image configured to run as a remote gateway connect to the Kaazing hosted onpremise gateway.

## Requirements
Docker version 17 or newer

## Building The Demo

To build the docker image run:

`docker build -t kwgdemo .`

## Running The Demo

To run the demo:

`run --rm --name remotegw -p 8000:8000 -p 5001:5001 kwgdemo`

To run the demo using a different set of host ports (say ports 8080 & 5050):

`run --rm --name remotegw -p 8080:8000 -p 5050:5001 kwgdemo`
