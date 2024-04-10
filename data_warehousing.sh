#!/bin/bash

# Create log file in its own directory
mkdir -p ~/Documents/assignment_7/zip_folder ~/Documents/assignment_7/unzip_folder ~/Documents/assignment_7/log_folder

touch ~/Documents/assignment_7/log_folder/data_warehouse_log.log
date +"%c log file for assignment 7 - data warehouse created" >> ~/Documents/assignment_7/log_folder/data_warehouse_log.log

# Download zip file from the url
url=https://elasticbeanstalk-us-east-2-340729127361.s3.us-east-2.amazonaws.com/billing-datawarehouse.tgz
wget $url -P ~/Documents/assignment_7/zip_folder
date +"%c downloaded billing-datawarehouse.tgz successfully." >> ~/Documents/assignment_7/log_folder/data_warehouse_log.log

# Unzip file into a seperate folder
tar -xvzf ~/Documents/assignment_7/zip_folder/billing-datawarehouse.tgz -C ~/Documents/assignment_7/unzip_folder >> ~/Documents/assignment_7/log_folder/data_warehouse_log.log
date +"%c Unzipped billing-datawarehouse.tgz successfully. Files saved to unzip_folder" >> ~/Documents/assignment_7/log_folder/data_warehouse_log.log

# Execute star-schema.sql
psql "host=localhost port=5432 dbname=bill_DWH user=postgres password=postgres" -a -f ~/Documents/assignment_7/unzip_folder/star-schema.sql>>~/Documents/assignment_7/log_folder/data_warehouse_log.log
date +"%c Star Schema executed. All tables created successfully " >> ~/Documents/assignment_7/log_folder/data_warehouse_log.log


# Execute DimCustomer.sql
psql "host=localhost port=5432 dbname=bill_DWH user=postgres password=postgres" -a -f ~/Documents/assignment_7/unzip_folder/DimCustomer.sql>>~/Documents/assignment_7/log_folder/data_warehouse_log.log
date +"%c DimCustomer.sql executed successfully" >> ~/Documents/assignment_7/log_folder/data_warehouse_log.log


# Execute DimMonth.sql
psql "host=localhost port=5432 dbname=bill_DWH user=postgres password=postgres" -a -f ~/Documents/assignment_7/unzip_folder/DimMonth.sql>>~/Documents/assignment_7/log_folder/data_warehouse_log.log
date +"%c DimMonth.sql executed successfully" >> ~/Documents/assignment_7/log_folder/data_warehouse_log.log

# Execute FactBilling.sql
psql "host=localhost port=5432 dbname=bill_DWH user=postgres password=postgres" -a -f ~/Documents/assignment_7/unzip_folder/FactBilling.sql>>~/Documents/assignment_7/log_folder/data_warehouse_log.log
date +"%c FactBilling.sql executed successfully" >>~/Documents/assignment_7/log_folder/data_warehouse_log.log


# Execute verify.sql
psql "host=localhost port=5432 dbname=bill_DWH user=postgres password=postgres" -a -f ~/Documents/assignment_7/unzip_folder/verify.sql>>~/Documents/assignment_7/log_folder/data_warehouse_log.log
date +"%c Verify.sql executed successfully" >> ~/Documents/assignment_7/log_folder/data_warehouse_log.log


