# Step 1: Use official Nginx lightweight image
FROM nginx:alpine

# Step 2: Copy your game files into Nginx's default folder
COPY . /usr/share/nginx/html

# Step 3: Expose port 80 (default web port)
EXPOSE 80

# Step 4: Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
