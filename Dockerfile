# take default image of node 8.x
FROM node:23.11.0-bookworm-slim

MAINTAINER Carl Utter <carl.j.utter@gmail.com>

# install "global" npm dependencies as non-root user: node
# NPM_CONFIG_PREFIX /home/node/.npm-global

# create /home/node/app directory in container
RUN mkdir -p /home/node/app

# set /home/node/app directory as default working directory
WORKDIR /home/node/app

# only copy package.json once; so that the `RUN yarn` layer
# is recreated if package.json changes exist
ADD package.json yarn.lock /home/node/app/

# --pure-lockfile: Do not generate yarn.lock lockfile
RUN yarn --pure-lockfile

# copy all files from current dir to /home/node/app in container
COPY . /home/node/app/

# expose port 4040
EXPOSE 4040

# run as non-root user: node
USER node

# cmd to start service
CMD [ "yarn", "start" ]
