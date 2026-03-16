# use an official Node.js runtime as a parent image
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and pakage-Lock.json to the working directory
COPY package*.json ./

# Install the dependencies 
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on 
EXPOSE 5173

# Define the command to run the application in development mode, accessible externally 
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]  
