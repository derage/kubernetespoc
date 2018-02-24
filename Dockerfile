FROM node:8.9.4-slim

ENV HOME /home/node
ADD ./ $HOME/kubernetespoc
RUN  chown -R node:node $HOME
WORKDIR $HOME/kubernetespoc
USER node
RUN yarn install
EXPOSE 3000

CMD ["./bin/start"]
