# Linux x64
FROM alpine

LABEL maintainer="andres.sanchez7910@alumnos.udg.mx"

# Install Node and NPM
RUN apk add --update nodejs npm curl

# Copy app to /src
COPY . /src

WORKDIR /src

# Install dependencies
RUN  npm install

EXPOSE 8080

ENTRYPOINT ["node", "./app.js"]
