FROM httpd:latest
ENV APP_NAME=sales_app APP_VERSION=v1.0.0 APP_TITLE=senior
COPY . /usr/local/apache2/htdocs

