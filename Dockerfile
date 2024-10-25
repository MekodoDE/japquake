# Use the latest Nginx image from Docker Hub
FROM nginx:latest

# Remove the default Nginx website files
RUN rm -rf /usr/share/nginx/html/*

# Copy the modified website files into Nginx's document root
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
