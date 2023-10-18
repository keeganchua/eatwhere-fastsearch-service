# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory within the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code, including the src directory, to the working directory
COPY . .

# Expose the port that your Express.js application listens on
EXPOSE 8080

# Define the command to start your Node.js application
CMD [ "node", "src/server.js" ]  
