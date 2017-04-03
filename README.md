# docker-cron-curl
Simple cron service that reads tasks from file cronjobs and executes them.

# Use

Edit cronjobs file, by adding for example:

```*/5 * * * * curl -I http://example.com/ >> cronjobs.log```

Build and run your container:

```docker build -t curjob_image .```

```docker run -d --name curjob curjob_image```

Check the logs

```docker exec curjob cat /root/cronjobs.log```
