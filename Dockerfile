FROM node:16.0.0-alpine
WORKDIR /app
RUN apk add git openssh-client
COPY . /app/
RUN npm install
RUN rm /app/package-lock.json
#RUN npm run setup
#RUN npm run build
RUN npm config set registry https://andorglobant.jfrog.io/artifactory/api/npm/poc-npm/
RUN npm publish
