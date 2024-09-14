#!/bin/bash

# Generate a private key
openssl genrsa -out privatekey.pem 2048

# Generate a Certificate Signing Request (CSR)
openssl req -new -key privatekey.pem -out csr.pem \
  -subj "/C=US/ST=State/L=City/O=Organization/OU=OrgUnit/CN=api.psykon.com"

# Generate a self-signed certificate (valid for 365 days)
openssl req -x509 -key privatekey.pem -in csr.pem -out certificate.pem -days 365

# Combine private key and certificate into a single PEM file
cat privatekey.pem certificate.pem > fullchain.pem

# Print a message that the PEM files have been generated
echo "PEM files generated: privatekey.pem, csr.pem, certificate.pem, fullchain.pem"
