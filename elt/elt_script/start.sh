#!/bin/bash
echo "Cron started at $(date)" > /proc/1/fd/1  # Visible in `docker logs`
cron -f
