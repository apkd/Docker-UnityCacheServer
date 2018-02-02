FROM ubuntu:16.04

RUN apt-get update && \
    apt-get -qy --no-install-recommends install \
        unzip \
        curl \
        && \
    apt-get -q -y clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* && \
    rm -rf /usr/share/man/?? /usr/share/man/??_*

RUN curl -k -o cacheserver.zip https://download.unity3d.com/download_unity/94bf3f9e6b5e/CacheServer-2017.2.1f1.zip && \
    unzip cacheserver.zip && \
    rm cacheserver.zip

ENTRYPOINT ["/CacheServer/RunLinux.sh"]
