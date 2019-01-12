FROM node:8-alpine

# Expose port and set work dir
EXPOSE 3000
WORKDIR /app

# Sometime you need to install os package here to build dependencies

# Copy and install node dependencies
ADD src/package.json src/yarn.lock /app/
RUN yarn --pure-lockfile

# Copy source code
ADD ./src /app

# Start my application
CMD ["yarn", "start"]