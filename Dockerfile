FROM searxng/searxng:latest

# Copy optimized settings file
COPY settings.yml /etc/searxng/settings.yml
RUN chown searxng:searxng /etc/searxng/settings.yml

# Ensure proper permissions
USER searxng
