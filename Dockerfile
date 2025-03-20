# Generated by https://smithery.ai. See: https://smithery.ai/docs/config#dockerfile
FROM node:lts-alpine
WORKDIR /app

# Copy package files
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install --ignore-scripts

# Copy rest of the files
COPY . .

# Build the project
RUN npm run build

# Expose any necessary ports if needed (none in this MCP, as it uses stdio)

# Start the MCP server
CMD ["node", "build/index.js"]
