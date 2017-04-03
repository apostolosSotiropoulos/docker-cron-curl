# docker-cron-curl
Simple cron service that reads tasks from file cronjobs and executes them.

# Use

Edit cronjobs file, by adding for example:

```*/5 * * * * curl -I http://example.com/ >> cronjobs.log```

Build and run your container:

```docker build -t curljob_image .```

```docker run -d --name curljob curljob_image```

Check the logs

```docker exec curljob cat /root/cronjobs.log```
