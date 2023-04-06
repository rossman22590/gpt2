FROM node:18

# Set the working directory in the container
WORKDIR /app/
COPY . /app/.

# Run 'npm install' in the root directory
RUN npm install

# Set the working directory to the client directory
WORKDIR /app/client

# Run 'npm install' in the client directory
RUN npm install
RUN npm run build
# Set the working directory back to the root directory
WORKDIR /app/


EXPOSE 3080
CMD ["node", "index.js"]

