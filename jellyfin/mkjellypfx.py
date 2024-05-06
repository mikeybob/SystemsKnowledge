from OpenSSL import crypto
import os

# Replace these file paths with your actual Let's Encrypt certificate files
cert_file_path = '/etc/letsencrypt/live/demonlab.net/fullchain.pem'
key_file_path = '/etc/letsencrypt/live/demonlab.net/privkey.pem'

# Read in the certificate and private key
with open(cert_file_path, 'r') as cert_file:
    cert_data = cert_file.read()
certificate = crypto.load_certificate(crypto.FILETYPE_PEM, cert_data)

with open(key_file_path, 'r') as key_file:
    key_data = key_file.read()
private_key = crypto.load_privatekey(crypto.FILETYPE_PEM, key_data)

# Create a PKCS#12 object
p12 = crypto.PKCS12()

# Set the certificate and the key
p12.set_certificate(certificate)
p12.set_privatekey(private_key)

# Optionally set a friendly name for the certificate
p12.set_friendlyname(b'jellycert')

# Export the PKCS#12 file
pfx_data = p12.export()

# Write the PKCS#12 file to disk
pfx_file_path = '/etc/jellyfin/certificate.pfx'
with open(pfx_file_path, 'wb') as pfx_file:
    pfx_file.write(pfx_data)

