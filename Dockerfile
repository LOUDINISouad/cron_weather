FROM python

# Install cron package
RUN apt-get update && apt-get install -y cron

# Install dependencies
RUN pip install pandas

# Create directories
RUN mkdir /home/report
RUN mkdir /home/data

# Copy the script and cron job files
COPY etl.py /app/etl.py
COPY etl-cronjob /etc/cron.d/etl-cronjob

# Set file permissions for the cron job file
RUN chmod 0644 /etc/cron.d/etl-cronjob

# Set up cron
RUN crontab /etc/cron.d/etl-cronjob
RUN touch /var/log/cron.log

# Copy requirements file and install dependencies
COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy the rest of the files
COPY . .

# Run cron and tail the log file
CMD cron && tail -f /var/log/cron.log

