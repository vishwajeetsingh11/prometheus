 Use the official Prometheus image
FROM prom/prometheus:latest

# Copy the Prometheus configuration file
COPY prometheus.yml /etc/prometheus/prometheus.yml

# Expose the port Prometheus listens on
EXPOSE 9090

# Set the command to run Prometheus with the specified configuration
CMD [ "--config.file=/etc/prometheus/prometheus.yml" ]
