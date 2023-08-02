# Use the official Node.js runtime as the base image
FROM node:18

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY package*.json ./

# Install all dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Expose port 3000 for the app
EXPOSE 3000

# Run the application
CMD ["npm", "start"]