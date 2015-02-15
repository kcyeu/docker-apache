# docker-apache

Dockerized Apache Web Server.

## Usage

By default, persistent storage is set to `/var/docker-data1/apache`.

To run the container, do the following:

```
sudo docker run -d -p 80:80 --name apache kcyeu/apache
```

To mount a directory from your own host into a container.

```
sudo docker run -d -p 80:80 --name apache -v /var/docker-data1/apache:/var/docker-data1/apache kcyeu/apache
```
