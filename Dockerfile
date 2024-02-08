FROM node:18-alpine
WORKDIR /app
RUN npm install -g npm@10.4.0
COPY package.json .
COPY package-lock.json .
RUN npm install
RUN npm install @evershop/evershop
COPY . .
RUN npm run build
EXPOSE 80
CMD ["npm","run","start"]
