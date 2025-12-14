# Use Node.js 24 base image
FROM node:24

# Set the working directory
WORKDIR /usr/src/app

# Install build dependencies for native modules and runtime dependencies
RUN apt-get update && apt-get install -y \
    python3 make g++ curl \
    && rm -rf /var/lib/apt/lists/*

# Copy all files
COPY . .

# Install dependencies (keep existing node_modules but install missing)
RUN npm install --ignore-scripts

# Apply patches
RUN npx patch-package || true

# Only rebuild SQLite3 for Linux (skip other problematic native modules)
RUN npm rebuild better-sqlite3 || echo "SQLite rebuild failed, will try at runtime"

# Create data directory
RUN mkdir -p /root/.local/state/keybr

# Copy and set up entrypoint script
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

# Expose the application's default port
EXPOSE 3000

# Use entrypoint script to handle SQLite rebuild if needed
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["npm", "run", "start-docker"]
