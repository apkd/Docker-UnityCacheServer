- Now updated to the latest [Unity-Technologies/unity-cache-server](https://github.com/Unity-Technologies/unity-cache-server) version.
- Based on the light [`node:8-slim`](https://hub.docker.com/_/node/) image.

### Launching the server

```
docker run \
	--name unity-cache-server \
	--detach \
	--restart always \
	--publish 8126:8126 \
	apkd/unity-cache-server
```
