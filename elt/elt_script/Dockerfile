FROM python:3.8-slim

# Install PostgreSQL command-line tools
RUN apt-get update && apt-get install -y postgresql-client-15 cron

# Copy the ELT script and the "starter"
COPY start.sh /app/start.sh
COPY elt_script.py .

WORKDIR /app

RUN echo "0 * * * * python /app/elt_script.py" | crontab -

# ENTRY POINT -- Make start.sh executable and set it as the entry point
RUN chmod +x /app/start.sh
CMD ["/app/start.sh"]
