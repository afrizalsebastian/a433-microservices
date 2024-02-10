# Menggunakan base image node versi 14 dari docker hub
FROM node:14  

# Menentukan working directory untuk container adalah /app
WORKDIR /app

# Menyalin semua file dan folder ke working directory
COPY . .  

# Menentukan environment variable NODE_ENV dan DB_HOST
ENV NODE_ENV=production DB_HOST=item-db  

# Menginstall dependencies untuk production dan build aplikasi  
RUN npm install --production --unsafe-perm && npm run build

# Membuka port 8080
EXPOSE 8080  

# Perintah untuk menjalankan item-app
CMD [ "npm", "start" ]