FROM node:14-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install -g @angular/cli
RUN npm install
COPY . .
EXPOSE 5000
CMD ["npm", "start"]

