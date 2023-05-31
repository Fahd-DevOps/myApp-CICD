# Use for dev Environment
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy all myApp files to the container
COPY index.html .
COPY udagram.jpg .
COPY clean-blog.min.css .
COPY clean-blog.css .

# Expose a port for myApp
EXPOSE 80

# The command will run when the container starts
CMD ["nginx", "-g", "daemon off;"]

