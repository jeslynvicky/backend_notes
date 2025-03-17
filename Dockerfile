# Gunakan Node.js versi ringan
FROM node:20-alpine

# Set working directory di dalam container
WORKDIR /app

# Copy file package.json dan package-lock.json terlebih dahulu
COPY package.json package-lock.json ./

# Install dependencies (hanya untuk production)
RUN npm install --only=production

# Copy seluruh kode backend setelah dependencies terinstall
COPY . .

# Set environment variable untuk port
ENV PORT=5000
EXPOSE 5000

# Jalankan aplikasi backend
CMD ["node", "index.js"]
