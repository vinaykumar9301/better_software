# Use the official Node.js 20.17.0 image as the base image
FROM node:20

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available) for dependency installation
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the port that the application will run on
EXPOSE 3000

# Command to start the application
CMD ["node", "server.js"]
