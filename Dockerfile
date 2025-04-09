# Base image
FROM node:18

# Create app directory
WORKDIR /usr/demasy/src/app

# Copy project files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the app
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]