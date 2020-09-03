# Docker Registry Proxy
### Setup

To build the image, simply run `./build.sh`. This will create the image `docker-registry-proxy:latest`

After the image is built, run `docker-compose up -d`. The first time you do this, it will create the volume for the whitelist file, but it will be empty, so create a `whitelist.ips` file and populate it as desired. The format is `CIDR_BLOCK 1;` (i.e. `10.1.0.0/24 1;`) to allow certain addresses. You can do multiple lines, with one block per line 
