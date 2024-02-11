FROM node:21.6.1-bookworm-slim › zlib/zlib1g@1:1.2.13.dfsg-1 

RUN npm install -g npm@9.1.3

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install

EXPOSE 8080

CMD [ "node", "index.js" ]
