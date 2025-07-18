# Use official Node.js image
FROM node:18.18.0

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json from server/
COPY server/package.json server/package-lock.json ./

RUN npm install --no-audit --no-fund

# Copy the rest of the server source code
COPY server/src ./src

# Expose port 3000 (or whatever port your app uses)
EXPOSE 3000

# Start the application
CMD ["node", "src/index.js"]
