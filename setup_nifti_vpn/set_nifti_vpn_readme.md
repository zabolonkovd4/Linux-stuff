## How to configure VPN Ikev2 IPSec
#### Using a Simple Client for One-Off Connections

Let us begin below:

1. Update your local package cache:  

    `sudo apt update`

2. Install charon-cmd and related software  

    `sudo apt install charon-cmd libcharon-extra-plugins`

3. Move to the directory where you copied the CA certificate:  
 
    `cd /path/to/wedgearp-ca.pem`

4. Connect to the VPN server with charon-cmd using the server’s CA certificate, the VPN server’s IP address, and the username you configured: 
 
    `sudo charon-cmd --cert wedgearp-ca.pem --host vpn_domain_or_IP --identity your_username`

5. When prompted, provide the VPN user’s password.
