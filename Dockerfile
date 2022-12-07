FROM node:alpine

LABEL maintainer="Alexander Grimstad <github+post@grimstad.dev>"

RUN npm install --global --save-dev @commitlint/config-conventional @commitlint/cli
RUN echo "module.exports = {extends: ['@commitlint/config-conventional']}" > commitlint.config.js

ENTRYPOINT ["commitlint"]
