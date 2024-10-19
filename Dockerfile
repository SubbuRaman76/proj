# Use an official Node.js image as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./


# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 80 to make the app accessible via HTTP
EXPOSE 80

# Start the application
CMD ["npm", "start"]

