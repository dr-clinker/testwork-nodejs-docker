# Используйте подходящий базовый образ Node.js
FROM node:20

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

# Копирование исходного кода приложения в образ
COPY . .

# Определение команды запуска приложения
CMD ["node", "app.js"]
