# Use for dev Environment
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy all myApp files to the container
COPY index.html clean-blog.css clean-blog.min.css udagram.jpg .

# Expose a port for myApp
EXPOSE 80

# The command will run when the container starts
CMD ["nginx", "-g", "daemon off;"]

