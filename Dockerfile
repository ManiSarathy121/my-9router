FROM node:18-alpine
RUN npm install -g 9router
# Expose port (defaults to Render's fallback port)
EXPOSE 20128
# Bind to Render's env PORT, disable browser auto-launch, and skip update checks
CMD 9router --port ${PORT:-20128} --no-browser --skip-update
