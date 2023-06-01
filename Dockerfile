# Use for dev Environment
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy all myApp files to the container
COPY app-v2/ .

# Expose a port for myApp
EXPOSE 80

# The command will run when the container starts
CMD ["nginx", "-g", "daemon off;"]

