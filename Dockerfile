FROM node:12.18.1

WORKDIR /src

# Copy package file
COPY package.json .

# Copy .env file
COPY .env .

# install nodemon for global
RUN npm install -g nodemon
