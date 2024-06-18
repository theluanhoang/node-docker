FROM node:15
WORKDIR /app
COPY package.json .
RUN npm install
COPY . ./
EXPOSE 3000
ENV PORT 3000
EXPOSE $PORT
CMD ["npm", "run", "dev"]