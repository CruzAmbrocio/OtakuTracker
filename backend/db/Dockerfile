# Use an official PostgreSQL image as a parent image
FROM postgres:latest

# Set the working directory in the container
WORKDIR /usr/src/postgres

# Set environment variables for PostgreSQL
ENV POSTGRES_DB=postgres \
    POSTGRES_USER=postgres \
    POSTGRES_PASSWORD=o1234

# Copy the initialization SQL script to the Docker entrypoint directory
COPY init.sql /docker-entrypoint-initdb.d/

# Expose the default PostgreSQL port
EXPOSE 5432