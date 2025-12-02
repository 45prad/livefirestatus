# Use a lightweight web server image
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy HTML file and image to the web server directory
COPY index.html .
COPY Cyber-Shakti-2025-Logo.png .

# Expose port 80
EXPOSE 80

# Start nginx (already included in the base image)
CMD ["nginx", "-g", "daemon off;"]