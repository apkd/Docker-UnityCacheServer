FROM node:8-slim

RUN npm install unity-cache-server -g && npm cache clean --force

ENTRYPOINT unity-cache-server --monitor-parent-process
