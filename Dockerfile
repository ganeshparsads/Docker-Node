FROM node:4.4.7

RUN useradd --user-group --create-home --shel /bin/false nodejs

ENV HOME=/Users/unbxd/workspace/Docker_apps/Docker-Node

ENV NODE_ENV=production

COPY package.json npm-shrinkwrap.json $HOME/app/
RUN chown -R nodejs:nodejs $HOME/*
USER nodejs
WORKDIR $HOME/app
RUN npm install

CMD ["node", "server.js"]
