FROM node:18-slim
RUN npm install -g 9router
# Expose port (default fallback to 20128)
EXPOSE 20128
# Bind to Render/Koyeb env PORT, disable browser auto-launch, and skip update checks
CMD 9router --port ${PORT:-20128} --no-browser --skip-update
