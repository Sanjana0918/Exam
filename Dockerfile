# Step 1: Used an official Nginx base image
FROM nginx:alpine

# Step 2: Remove the default website files
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy your website code into the container
COPY . /usr/share/nginx/html

# Step 4: Expose port 80 (Nginx default port)
EXPOSE 80

# Step 5: Start Nginx
CMD ["nginx", "-g", "daemon off;"]
