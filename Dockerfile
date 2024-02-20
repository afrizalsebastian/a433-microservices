FROM node:16-alpine
WORKDIR /app
COPY package*.json ./

RUN npm install
RUN apk add --no-cache bash
RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
RUN chmod +x /bin/wait-for-it.sh

COPY ./*.js ./
EXPOSE 3000

CMD ["npm", "start"]