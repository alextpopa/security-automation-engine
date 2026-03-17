# We are using an old version on purpose to see the security alerts
FROM node:20-alpine
USER root
WORKDIR /app
COPY . .
CMD ["node", "app.js"]
