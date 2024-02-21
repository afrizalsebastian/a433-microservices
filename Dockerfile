# Menggunakan image node:16-alpine sebagai base image
FROM node:16-alpine 

# Set working directory ke /app
WORKDIR /app

# Copy package.json dan file package lain ke working directory
COPY package*.json ./

# Install dependency npm
RUN npm install

# Install bash pada container
RUN apk add --no-cache bash 

# Download wait-for-it.sh dan set executable permission
RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
RUN chmod +x /bin/wait-for-it.sh

# Copy app source code ke working directory 
COPY ./*.js ./

# Expose port 3001
EXPOSE 3001  

# Jalankan npm start saat container dijalankan
CMD ["npm", "start"]