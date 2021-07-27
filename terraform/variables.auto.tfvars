# Update this file with the variables you want to use in your Snowpipe deployment

# ----------------------------------------------------------------------------------------------------------------------
# General

application_name = ""
# Description: The name of the application / project to be deployed. This value will be used in the naming of most of 
# the created resources. Value should be lowercase alphanumeric characters only with no spaces.


# ----------------------------------------------------------------------------------------------------------------------
# AWS

s3_bucket_unique_identifier = ""
# Description: The S3 bucket will be named with the pattern "{unique_identifier}-{application_name}", this is necessary 
# as S3 buckets must be globally unqiue.


# ----------------------------------------------------------------------------------------------------------------------
# Snowflake

snowflake_database = ""
# Description: The name of the database that the Pipe will be added to (must already exist).

snowflake_schema = ""
# Description: The name of the schema that the Pipe will be added to (must already exist).

stage_prefix = ""
# Description: The S3 prefix that the Snowflake Stage will get access to (eg. if the you are giving access to the 
# "public" folder inside the "data" folder in the "example" bucket the value would be "data/public/"). This can be left 
# blank to give access to the whole bucket.

pipe_prefix = ""
# Description: The S3 prefix that the Pipe will get access to, starting from the stage folder (eg. if the stage has 
# access to the "data/public/" prefix and the Pipe should have access to "data/public/new/" the value would be 
# "new/" ). This can be left blank which would give the same access as the Stage.

table_name = ""
# Description: The name of the table that the Pipe will write to.




