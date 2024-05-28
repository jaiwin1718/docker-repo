# Use the official Node.js 14 image as base
FROM node:14

# Set the working directory inside the container
WORKDIR /Desktop/docker-lab

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Command to run the application
CMD ["node", "index.js"]
