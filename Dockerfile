# Use for dev Environment
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy all myApp files to container
COPY vendor/ img/ CSS/ index.html .

# Expose a port for myApp
EXPOSE 80

# The command will run when the container starts
CMD ["nginx", "-g", "daemon off;"]
