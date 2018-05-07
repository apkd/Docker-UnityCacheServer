- Now updated to the latest [Unity-Technologies/unity-cache-server](https://github.com/Unity-Technologies/unity-cache-server) version.
- Based on the lightweight [`node:8-alpine`](https://hub.docker.com/_/node/) image.

### Launching the server

```
docker run \
	--name unity-cache-server \
	--detach \
	--restart always \
	--publish 8126:8126 \
	apkd/unity-cache-server
```

### Customizing port and args

```
docker run \
	--name unity-cache-server \
	--detach \
	--restart always \
	--publish 1337:8126 \ # custom port
	apkd/unity-cache-server --workers 8 --log-level 5 # custom server args
```
