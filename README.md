# Launching the server

```
docker run \
	--name unity-cache-server \
	--detach \
	--restart always \
	--publish 8126:8126 \
	apkd/unity-cache-server
```