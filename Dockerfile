FROM node:18-slim
# Install SQLite drivers globally so 9Router can load them at runtime
RUN npm install -g better-sqlite3 sqlite3 sql.js 9router
# Expose port (default fallback to 20128)
EXPOSE 20128
# Bind to Render/Koyeb env PORT, disable browser auto-launch, and skip update checks
CMD 9router --port ${PORT:-20128} --no-browser --skip-update
