# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /docs

# Copy the current directory contents into the container at /docs
COPY . /docs

# Install MkDocs and the Material theme
RUN pip install -r requirements.txt

# Expose the port MkDocs will serve on
EXPOSE 8000

# Command to run MkDocs with live reload (optional: you can also use 'serve' instead of 'build' for production)
CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]




# # Stage 1: Build the documentation
# FROM python:3.11-slim as builder

# # Set the working directory in the container
# WORKDIR /docs

# # Copy the current directory contents into the container
# COPY . /docs

# # Install the required Python packages
# RUN pip install --no-cache-dir -r requirements.txt

# # Build the documentation using MkDocs
# RUN mkdocs build

# # Stage 2: Serve the documentation with Nginx
# FROM nginx:alpine

# # Remove the default Nginx static assets
# RUN rm -rf /usr/share/nginx/html/*

# # Copy the built documentation from the builder stage to the Nginx directory
# COPY --from=builder /docs/site /usr/share/nginx/html

# # Copy the custom Nginx configuration
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# # Expose port 80 to allow external access
# EXPOSE 8000

# # Start Nginx server
# CMD ["nginx", "-g", "daemon off;"]
