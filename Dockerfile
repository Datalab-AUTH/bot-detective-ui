FROM node:8 AS build
ARG REACT_APP_SERVER_URL=https://bot-detective.csd.auth.gr/api/
ENV REACT_APP_SERVER_URL=$REACT_APP_SERVER_URL
COPY . /src/
WORKDIR /src
RUN npm install && \
	npm install serve && \
	npm run build
CMD ["npx", "serve", "-s", "build", "-p", "3000"]


