FROM node:21.6.1-bookworm-slim gnutls28/libgnutls30@3.7.9-2+deb12u2, @3.7.9-2+deb12u2 


RUN npm install -g npm@9.1.3

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install

EXPOSE 8080

CMD [ "node", "index.js" ]
