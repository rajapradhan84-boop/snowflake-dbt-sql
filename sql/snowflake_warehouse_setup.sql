-- Snowflake setup script for warehouse, database, and schema
create or replace warehouse analytics_wh
    warehouse_size = 'XSMALL'
    auto_suspend = 300
    auto_resume = true
    initially_suspended = true
    max_cluster_size = 1;

create or replace database analytics_db;
create or replace schema analytics_db.public;

grant usage on warehouse analytics_wh to role sysadmin;
grant usage on database analytics_db to role sysadmin;
grant usage on schema analytics_db.public to role sysadmin;
