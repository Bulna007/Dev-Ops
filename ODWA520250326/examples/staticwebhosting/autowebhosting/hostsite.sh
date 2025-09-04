#!/bin/bash

function installApache2() {
    sudo dpkg -s apache2 
    local APACHE2_INSTALLED_STATUS=$?    
    if [ $APACHE2_INSTALLED_STATUS -eq 0 ] ; then
        local APACHE2_STATUS=$(sudo systemctl status apache2 | grep Active: | awk '{print $2}')
        if [ $APACHE2_STATUS != "active" ] ; then
            echo "error: apache2 is down! please check the logs and start for hosting the website"
            return 200
        fi
    else
        sudo apt update -y
        sudo apt install -y apache2
        local APACHE2_INSTALLATION_STATUS=$?
        return $APACHE2_INSTALLATION_STATUS
    fi
    return 0
}

function copySite() {
    if [ -e /var/www/$SITE_DIR ] ; then
        sudo rm -rf /var/www/$SITE_DIR
    fi
    sudo cp -r /vagrant/sites/$SITE_DIR /var/www/
}

function enableSite() {
    if [ ! -e /etc/apache2/sites-available/$SITE_DIR.conf ] ; then
        sudo cp /vagrant/template.conf /etc/apache2/sites-available/$SITE_DIR.conf
        sudo sed -i 's/DOMAIN_NM/'$DOMAIN_NAME'/g' /etc/apache2/sites-available/$SITE_DIR.conf
        sudo sed -i 's/SITE_DIR/'$SITE_DIR'/g' /etc/apache2/sites-available/$SITE_DIR.conf

        sudo a2ensite $SITE_DIR
        sudo systemctl daemon-reload
        sudo systemctl restart apache2
    fi
}


#main
NARGS=$#
if [ $NARGS -ne 2 ]; then
    echo "error: site directory and domain name are required"
    exit 100
fi

SITE_DIR=$1
DOMAIN_NAME=$2

installApache2
INSTALL_APACHE2_STATUS=$?
if [ $INSTALL_APACHE2_STATUS -ne 0 ]; then
    echo "error: while installing apache2"
    exit $INSTALL_APACHE2_STATUS
fi

copySite
COPY_SITE_STATUS=$?
if [ $COPY_SITE_STATUS -ne 0 ]; then
    echo "error: while copying the site: $SITE_DIR"
    exit $COPY_SITE_STATUS
fi    

enableSite
ENABLE_SITE_STATUS=$?
if [ $ENABLE_SITE_STATUS -ne 0 ]; then
    echo "error: while enabling the site: $SITE_DIR"
    exit $ENABLE_SITE_STATUS
fi

echo "$SITE_DIR deployed successfully"
