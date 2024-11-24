# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Copy the HTML files to the default Nginx HTML directory
COPY index.html up /usr/share/nginx/html/


# Expose port 80
EXPOSE 80

# Add a health check to ensure the server is running
HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD curl -f http://localhost/ || exit 1
