# Base image
FROM node

# Create app directory
WORKDIR /usr/src/app



# Installing the project dependencies
RUN npm install

# Bundle app source
COPY . .

# Port mapped to the docker daemon, this is the port that your app is running on:
EXPOSE 80
CMD ["node", "index.js"]
