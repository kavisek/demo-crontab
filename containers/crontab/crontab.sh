
# Start cron service
service cron start

# Creating crontab.
echo "creating crontab tasks."
echo '* * * * * /usr/local/bin/python3 /app/main.py --env-id "dev" >> /app/output.log 2>&1 ' >> service_cron
echo '*/2 * * * * /usr/local/bin/python3 /app/main.py --env-id "prod" >> /app/output.log 2>&1 ' >> service_cron
echo '*/3 * * * * /usr/local/bin/python3 /app/main.py --env-id "qa" >> /app/output.log 2>&1 ' >> service_cron

# Import crontab.
echo "importing crontab tasks."
crontab service_cron

# Remove cron file.
echo "removing crontab file."
rm service_cron

# List crontab.
echo "checking crontab status."
sleep 5
service cron status
echo "listing tasks."
crontab -l >> /app/output.log

# Log crontab.
tail -f output.log
