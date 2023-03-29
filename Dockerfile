# Use the official Node.js image as base
FROM node:14-alpine

# Set working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the application
RUN npm run build

# Expose port 3000 for the React app
EXPOSE 3000

# Start the Node.js server
CMD ["npm", "start"]

