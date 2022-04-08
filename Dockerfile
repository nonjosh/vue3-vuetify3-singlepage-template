#
# ---- builder ----
FROM node:16-buster AS builder

# set working directory
WORKDIR /app
# copy project file
COPY package.json .
COPY yarn.lock .
# install node packages
RUN yarn install

# copy project file and build
COPY . .
RUN yarn generate

#
# ---- httpd ----
FROM httpd:2.4.46

COPY --from=builder /app/dist /usr/local/apache2/htdocs

COPY --from=builder /usr/bin/curl /usr/bin/curl
HEALTHCHECK CMD curl --fail http://localhost:80/ || exit 1
