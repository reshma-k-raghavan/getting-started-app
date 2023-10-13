# Download the Registry image node:18-alpine to create a new image for the app
FROM node:18-alpine

# Create target directory /app in the container
WORKDIR /app

# Copy all the source files from the project folder to /app folder
COPY . .

# Install only production dependencies from package.json. Do not download/install the dev dependencies
RUN yarn install --production

# default command to run when starting the container from this image
# cmd> node src/index.js to start the app
CMD ["node", "src/index.js"]

# host the application at port 3000
EXPOSE 3000
