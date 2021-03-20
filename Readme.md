# Express openshift demo


## Environment variables
- PORT
- USERNAME


## Build

docker build . -t express-openshift:1.0.0

## Run

docker run -p 3000:3000 -e USERNAME=Antonio express-openshift:1.0.0
