# Docker Registry Proxy
### Setup

To build the image, simply run `./build.sh`. This will create the image `docker-registry-proxy:latest`

After the image is built, run `docker-compose up -d`. The first time you do this, it will create the volume for the login file, but it will be empty, so no one will be able to log in. Go to `/var/lib/docker/volumes/[PROJECT_NAME]_registry-proxy-auth/_data`, run `htpasswd -c nginx.htpasswd [USERNAME]`, and enter your password when prompted