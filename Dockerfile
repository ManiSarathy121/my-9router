FROM node:18-alpine
RUN npm install -g 9router
# Expose port 20128 (9Router's default port)
EXPOSE 20128
CMD ["9router", "--port", "20128"]
