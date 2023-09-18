This is a demo to showcase how unexpectably slow it runs under Docker, when it is not compiled as AOT.
For this use case we need access to the VM Service, so as far as I know, we cannot use AOT and we
need to provide the --enable-vm-service flag when running.

On my development machine it runs normally but on Docker it takes 3 whole minutes to start.

## Steps to run locally

`dart run --enable-vm-service bin/main.dart`


## Steps to run in Docker

`docker build -t vm_demo .`

`docker run --rm vm_demo`
