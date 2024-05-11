#!/bin/bash

# Run as root or with sudo
# This script will configure Cockpit to use secure HTTPS connections with Let's Encrypt certificates.
# It assumes that you already have a domain name and that you have installed Cockpit on your server.
#
# Let's Encrypt certificates installed on your machine can be made
# available to Cockpit by creating symbolic links to the certificates in
# the /etc/cockpit/ws-certs.d directory.
#################################################################################################


# **Variables you must update:**
# Replace `yourdomain.com` with your actual domain name.
 export yourdomain="demonlab.net"

###############################################################################
######################## DO NOT MODIFY BELOW THIS LINE ########################
###############################################################################

# ## Pre-flight setup ##

# setup logging
 LOG_FILE="/var/log/cockpit-LE-ssl-$(hostname)-$(date +%H%M%S).log"
 exec > >(tee -a "$LOG_FILE") 2>&1


# **Check if the script is run as root**

 if [ "$EUID" -ne 0 ]
   then echo "Please run as root"
   exit
 fi

# **Check if Cockpit is installed**
# If Cockpit is not installed, the script will exit.

 echo "Checking if Cockpit is installed..."
 if ! command -v cockpit &> /dev/null
   then echo "Cockpit is not installed. Please install Cockpit before running this script."
     exit
 fi

# **Check if Let's Encrypt certificates are available**
# If Let's Encrypt certificates are not available, the script will exit.

 echo "Checking if Let's Encrypt certificates are available..."
 if [ ! -d "/etc/letsencrypt/live/$(yourdomain)" ];
   then echo "Let's Encrypt certificates for $(yourdomain) are not available."
     echo "Please obtain Let's Encrypt certificates for your domain before running this script."
    exit
 fi

# ## Everything has passed, begin main script ##


 echo "Configuring Cockpit to use Let's Encrypt certificates..."

# 1. **Create the Cockpit certificates directory if it doesn't exist:**

 echo "Creating the Cockpit certificates directory if it doesn't exist..."
 if [ ! -d /etc/cockpit/ws-certs.d ];
   then mkdir -p /etc/cockpit/ws-certs.d
 fi

# 2. **Create symbolic links to the Let's Encrypt certificates:**
# The `ln -sf` command creates symbolic links and ensures that 
# if the files already exist, they will be overwritten (`-f` flag).
# Replace `yourdomain.com` with your actual domain name.

 echo "Creating symbolic links to the Let's Encrypt certificates..."
 ln -sf "/etc/letsencrypt/live/$(yourdomain)/fullchain.pem" /etc/cockpit/ws-certs.d/1-my-cert.cert
 ln -sf "/etc/letsencrypt/live/$(yourdomain)/privkey.pem" /etc/cockpit/ws-certs.d/1-my-cert.key


# 3. **Set the correct permissions:**
# Cockpit's web server process needs to be able to read these files.

 echo "Setting the correct permissions"
 chown root:cockpit-ws /etc/cockpit/ws-certs.d/*
 chmod 640 /etc/cockpit/ws-certs.d/*

# Remove the default self-signed certificates:

 echo "Removing the default self-signed certificates..."
 rm ws-certs.d/0-self-signed.cert
 rm ws-certs.d/0-self-signed.key

# 4. **Restart Cockpit:**\n
# Apply the changes by restarting the Cockpit service.\n\n   ```

 echo "Restarting Cockpit..."
 systemctl restart cockpit
 echo "Cockpit restarted."

 echo "After restarting, Cockpit should be using the Let's Encrypt certificates."
 echo "You can verify this by accessing Cockpit through your web browser"
 echo "using https://$(yourdomain):9090 and checking the certificate details."


# After restarting, Cockpit should be using the Let's Encrypt certificates.
# You can verify this by accessing Cockpit through your web browser
# using `https://yourdomain.com:9090` and checking the certificate details."
#

