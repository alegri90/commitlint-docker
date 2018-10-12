FROM node:alpine

LABEL maintainer="Felix Boerner <github@felix-boerner.de>"

RUN npm install --global --save-dev @commitlint/config-conventional @commitlint/cli
RUN echo "module.exports = {extends: ['@commitlint/config-conventional']}" > commitlint.config.js

ENTRYPOINT ["commitlint", "--color=false"]
