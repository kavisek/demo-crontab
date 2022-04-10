
# Start cron service
service cron start

# Creating crontab.
echo '* * * * * /usr/local/bin/python3 /app/main.py >> /app/output 2>&1 ' >> service_cron

# Import crontab.
crontab service_cron

# Remove cron file.
rm service_cron

# List crontab.
echo "checking crontab status."
sleep 5
service cron status
echo "listing tasks."
crontab -l >> /app/output

# Log crontab.
tail -f output
