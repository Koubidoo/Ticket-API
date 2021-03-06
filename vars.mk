SERVICE_USER	= ticket-api
SERVICE_GROUP	= www-data

APACHE_CONFIG_ROOT = /etc/apache2
SERVER_ROOT = /var/www/html/ticketapi
VAR_LOG_ROOT = /var/log/ticket-api

APACHE_CONFIG_CHMOD		= 0644
SERVER_ROOT_CHMOD			= 0755
SERVER_CONFIG_CHMOD		= 0400
SERVER_BIN_CHMOD			= 0750
VAR_LOG_CHMOD					= 0775

SERVER_CHOWN = $(SERVICE_USER):$(SERVICE_GROUP)

APACHE_CONFIG_INSTALL_FLAGS	= -o root -g root
SERVER_INSTALL_FLAGS		= -o $(SERVICE_USER) -g $(SERVICE_GROUP)
VAR_LOG_INSTALL_FLAGS		= -o $(SERVICE_USER) -g $(SERVICE_GROUP)
