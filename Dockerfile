FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.lr3me.mongodb.net
ENV MONGODB_USERNAME manvinder1963
ENV MONGODB_PASSWORD a2PZ7eAKFawJGh7C

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]