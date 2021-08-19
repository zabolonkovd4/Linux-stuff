## How to configure VPN Ikev2 IPSec
#### Using a Simple Client for One-Off Connections

Let us begin below:

1. Update your local package cache:  

    `sudo apt update`

2. Install charon-cmd and related software  

    `sudo apt install charon-cmd libcharon-extra-plugins`

3. Move CA certificate to the directory. Let's say it will be ~/local/nifti_cert/:  
 
    `mkdir ~/local/nifti_cert/ && mv /path/to/your/cert  ~/local/nifti_cert/`

4. Connect to the VPN server with charon-cmd using the server’s CA certificate, the VPN server’s IP address, and the username you configured: 
 
    `sudo charon-cmd --cert ~/local/nifti_cert/nifti2019_cacert.pem --host 85.143.6.98 --identity your_username`

OR 

use activate_nifti_vpn.sh with your own parameters $USERNAME and $FILE

5. When prompted, provide the VPN user’s password.
