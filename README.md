# nginxwebdav

+ Image docker webdav pour traefik

+ Générer le fichier de password htpasswd
```
htpasswd -c htpasswd user
```

+ Modifier les droits du dossier data
```
sudo chown -R www-data:www-data data/
```

+ Build image docker
```
docker build -t nginxwebdav:1.0.0 .
```

+ Lancement image docker
```
docker run --name nginxwebdav -d -p 80:80 -v /path/to/htpasswd:/pass/htpasswd -v /path/to/data:/data nginxwebdav:1.0.0
```

# sources

basé sur : https://github.com/ionelmc/docker-webdav

# NGINX WebDAV container

Usage:

```bash
docker run --restart always --detach --name webdav --publish 7000:8080 \
           --env UID=$UID --volume $PWD:/media ionelmc/webdav
```

Optionally you can add two environment variables to require HTTP basic authentication:

* WEBDAV_USERNAME
* WEBDAV_PASSWORD

Example:

```bash
docker run --restart always --detach --name webdav --publish 7000:8080 \
           --env WEBDAV_USERNAME=myuser --env WEBDAV_PASSWORD=mypassword \
           --env UID=$UID --volume $PWD:/media ionelmc/webdav
```

basé sur : https://github.com/oliverlorenz/docker-nginx-webdav

# docker-nginx-webdav

runs a webdav service based on nginx. the data is protected by basic auth. 

Every user has its own directory. To set the users link in `/etc/nginx/htpasswd`.

## usage

```
docker run --rm -it -p 80:80 -v /path/to/htpasswd:/etc/nginx/htpasswd -v $PWD/data:/data oliverlorenz/docker-nginx-webdav
```
