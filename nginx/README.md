# SSL / TLS Enabling NGINX

The file supplied in this folder may need a few tweaks. The Lets Encrypt generated certificate and key should be the same with the exception of the domain name. 



Validate the configuration after any modifications.

```bash
sudo nginx -t  # Test the NGINX configuration
sudo systemctl reload nginx  # Reload NGINX with the new configuration
```
