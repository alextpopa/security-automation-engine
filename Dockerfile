# Use a build stage to keep it clean
FROM node:20-alpine AS build
WORKDIR /app
COPY . .

# The Final Secure Image (Distroless)
FROM gcr.io/distroless/nodejs20-debian12
COPY --from=build /app /app
WORKDIR /app
CMD ["app.js"]
