FROM alpine:3.7

RUN apk add --update nodejs && npm config set unsafe-perm true && npm install -g nodemon

WORKDIR /var/openKB
COPY package.json .snyk ./
RUN npm install

COPY . ./

VOLUME /var/openKB/data

EXPOSE 4444
ENTRYPOINT ["npm", "start"]
