# kwgdemo
Docker image for the Kaazing WebSocket Gateway configured to run as a `remote` gateway connecting to a Kaazing hosted `onpremise` gateway.

## Requirements
Docker version 17 or newer
iperf (not iperf3)

## Building The Demo

To build the docker image run:

`docker build -t kwgdemo .`

## Running The Demo

To run the demo:

`run --rm --name remotegw -p 8000:8000 -p 5001:5001 kwgdemo`

To test the `echo` service run the following on the host system:

`telnet localhost 8000`

To test the `iperf` service run the following on the host system:

'iperf -c localhost -p 5001`

To run the demo using a different set of host ports (say ports 8080 & 5050):

`run --rm --name remotegw -p 8080:8000 -p 5050:5001 kwgdemo`
