# Secure Apache with SSL in Docker: A Complete Guide

This repository provides a detailed guide for setting up an Apache server with PHP support inside a Docker container, secured with an SSL certificate for local development purposes. 

## Table of Contents
- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Accessing Your Secure Apache Server](#accessing-your-secure-apache-server)
- [Conclusion](#conclusion)
- [License](#license)

## Introduction
This guide focuses on configuring an Apache server with SSL in Docker, providing a secure, isolated environment for development.

## Prerequisites
- Docker installed on your machine.
- Basic knowledge of Docker, Apache, and SSL certificates.
- OpenSSL for generating a self-signed certificate.

## Usage
To use this setup, follow these steps:

1. Clone this repository:

```bash
git clone https://github.com/your-username/docker-Secure-Apache.git
cd docker-Secure-Apache
```

2. Generate the SSL certificate
Before setting up your Docker container, you need to generate a self-signed SSL certificate for localhost. Open a terminal and run the following command:
```bash
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout localhost.key -out localhost.crt -subj "/C=US/ST=YourState/L=YourCity/O=YourOrganization/CN=localhost"
```
This command generates a new SSL certificate (localhost.crt) and a private key (localhost.key), valid for 365 days.

3. Build the Docker container:
```bash
docker build -t apache-php-ssl .
```

4. Run the container:
```bash
docker run -d -p 443:443 apache-php-ssl
```

## Accessing Your Secure Apache Server
Open a web browser and navigate to https://localhost. You should see your PHP application running securely under HTTPS. Since the certificate is self-signed, your browser may warn you about the site's security certificate. You can proceed by allowing an exception for this certificate.

## Conclusion
You've successfully set up an Apache server with SSL inside a Docker container, making your local development environment secure and more aligned with production settings. This setup ensures that your development practices include necessary security measures right from the start.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Thank you for the Support
- ⭐ Give this repo a ⭐ star ⭐ at the top of the page
- 🐦 Follow me on [X](https://twitter.com/tshenolo)
- 📺 Subscribe to my [Youtube channel](https://www.youtube.com/@tshenolo?sub_confirmation=1)













