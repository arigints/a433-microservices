#menggunakan image node:14
FROM node:14

#masuk ke direktori /app
WORKDIR /app

#copy semua yang ada di direktori saat ini ke direktori container sekarang
COPY . .

#menggunakan mode production dan menggunakan container bernama item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

#enginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

#ekspos port yang digunakan oleh aplikasi adalah 8080
EXPOSE 8080

#menjalankan perintah "npm start" saat container dijalankan
CMD ["npm", "start"]
