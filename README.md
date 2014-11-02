# docker-apache

Dockerized Apache Web Server.

## Usage

By default, persistent storage is set to `/var/docker-data1/apache2`.

To run the container, do the following:

```
sudo docker run -d -p 80:80 --name apache2 kcyeu/apache2
```

To mount a directory from your own host into a container.

```
sudo docker run -d -p 80:80 --name apache2 -v /var/docker-data1/apache2:/var/docker-data1/apache2 kcyeu/apache
```
