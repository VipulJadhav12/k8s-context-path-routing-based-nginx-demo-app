# Creates a layer of the parent image/base image that will be used
FROM ubuntu/nginx:1.18-21.10_beta

# Set your working directory
WORKDIR /usr/share/nginx/html/

# Create different working path directories for nginx demo apps
RUN mkdir -p <path-for-nginx-demo-app-1>
RUN mkdir -p <path-for-nginx-demo-app-2>
# Ex:
# RUN mkdir -p /usr/share/nginx/html/app1
# RUN mkdir -p /usr/share/nginx/html/app2

# Copy the html files at the respective working path directories for nginx demo apps
COPY index.html <path-for-nginx-demo-app-1>
# Ex:
# COPY index.html /usr/share/nginx/html/app1/index.html
