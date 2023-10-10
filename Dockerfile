# Create the image from node:18-alpine by downloading it
FROM node:18-alpine

# Create target directory /app
WORKDIR /app

# Copy the instructions to application
COPY . .

#install the application dependencies
RUN yarn install --production

#default command to run when starting the container from this image
CMD ["node", "src/index.js"]

# host the application at port 3000
EXPOSE 3000
