# Specify a base image
FROM node:17-alpine

# Specify the directory
WORKDIR /usr/app

# COPY the package.json file for dependency installation
COPY ./package.json ./package-lock.json ./

# Install dependencies
RUN npm install

# COPY the project files
COPY ./ ./

# Default command
CMD ["npm", "start"]