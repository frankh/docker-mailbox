#!/usr/bin/env bash
. /tmp/settings.conf

sed -i 's/roundcube\.myserver\.com/'${ROUNDCUBEHOST}'/g' /etc/nginx/sites-available/roundcube
