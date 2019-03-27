# Remote_server_Log_Collector
This is sample repository for collecting the server logs using bash scripts.

## Execution flow :
## *** On Remote Server (Server2)***
### Step 1:
Copy log_generator.sh file to the server, where the custom log files will be generated.

### Step 2:
Before setting the cronjob , check the file has executable permission. Then set the crontab as follows.
##### 1. To add crontab for the user, use 
```crontab -e ```
##### 2. Then add the following line at the end of file<br>
This will execute bash script in every 5 minute.<br><br>
``` */5 * * * * /home/ubuntu/log_generator.sh ```<br>
## *** On Local Server (Server1)***<br>
### Step 3:
Copy remote_log_collector.sh to the server where we want to collect log files.

Before setting the cronjob , check the file has executable permission. Then set the crontab as follows.

##### 1. To add crontab for the user, use 
```crontab -e ```
##### 2. Then add the following line at the end of file

This will execute bash script in every 5 minute.<br>

``` */5 * * * * /home/ubuntu/remote_log_collector.sh ```
<br>

------------------------------------------------------------------------------------------------
Note: Make sure that .pem file is available on server1
