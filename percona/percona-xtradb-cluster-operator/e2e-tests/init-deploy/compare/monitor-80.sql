GRANT SELECT, RELOAD, PROCESS, SUPER, REPLICATION CLIENT ON *.* TO `monitor`@`%`
GRANT SERVICE_CONNECTION_ADMIN,SYSTEM_USER ON *.* TO `monitor`@`%`
GRANT SELECT ON `performance_schema`.* TO `monitor`@`%`
