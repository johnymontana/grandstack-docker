# Use the official image as a parent image.
FROM node:12

# Set the working directory.
WORKDIR /usr/src/app

# Copy the file from your host to your current location.
#COPY package.json .

# Run the command inside your image filesystem.
RUN npm install -g grandstack

# Inform Docker that the container is listening on the specified port at runtime.
EXPOSE 3003

# Run the specified command within the container.
CMD grandstack graphql inferschema --run-server --neo4j-uri $NEO4J_BOLT_URI --neo4j-user $NEO4J_USER --neo4j-password $NEO4J_PASSWORD

# Copy the rest of your app's source code from your host to your image filesystem.
COPY . .