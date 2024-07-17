# Use the official Node.js 12 image with Alpine Linux as the base image
FROM node:12-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port on which your Node.js application will run
EXPOSE 5000

# Command to run your Node.js application
CMD ["npm", "start"]
