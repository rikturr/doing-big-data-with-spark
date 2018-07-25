# REMOVE BEFORE COMMITTING!!!
Sys.setenv(SPARK_HOME = '/usr/local/opt/apache-spark/libexec')
library(sparklyr)
library(dplyr)

config <- spark_config()
config$`sparklyr.shell.driver-memory` <- "4G"
config$`sparklyr.shell.executor-memory` <- "4G"
sc <- spark_connect(master = "local", config = config)