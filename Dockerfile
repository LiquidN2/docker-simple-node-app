# Specify a base image
FROM node:17-alpine

# Specify the directory
WORKDIR /usr/app

# COPY all the files in the current dir to the container
COPY ./ ./

# Install dependencies
RUN npm install

# Default command
CMD ["npm", "start"]