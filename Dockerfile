# use an official Node.js runtime as a parent image
FROM node:20-alpine as build

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and pakage-Lock.json to the working directory
COPY package*.json ./

# Install the dependencies 
RUN npm install

# Copy the rest of the application code
COPY . .

RUN npm run build 

#Production stage
From nginx:alpine

COPY --from=build /app/dist /usr/share/nginx/html

# Expose the port the app runs on 
EXPOSE 80

# Define the command to run the application in development mode, accessible externally 
CMD ["nginx", "-g","daemon off;"]  
