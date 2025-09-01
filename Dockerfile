# Use official Nginx image
FROM nginx:alpine

# Remove default Nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML file to Nginx web root
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

