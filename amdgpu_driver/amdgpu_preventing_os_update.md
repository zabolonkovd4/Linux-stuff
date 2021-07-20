## Mitigating Ubuntu 20.04.2 HWE kernel 5.8 rollout

# Description of the issue
Problem Summary
Systems running Ubuntu 20.04.1 HWE may be updated to kernel 5.8 with no user intervention
Release 20.45 does not support kernel 5.8 (as support was planned in the upcoming release 20.50)
Solution
Users of release 20.45 have to manually downgrade and lock into kernel 5.4 until they are ready to upgrade to release 20.50 or later release
Instructions to accomplish manual downgrade and lock are provided below
Instructions to reverse the downgrade and lock are provided below, ready for use when upgrading to release 20.50
## How to check if system has upgraded to 20.04.2
Run the following command:

dpkg -l | grep linux.*5\.8.*-generic

If the command returns any output, your system has upgraded to 20.04.2. Conversely, if this command returns nothing, your system has not been upgraded to 20.04.2.

## Downgrading existing system from 20.04.2 to 20.04.1
Make sure the 20.04.1 kernel is installed:

sudo apt-get install linux-image-5.4.0-42-generic linux-modules-5.4.0-42-generic linux-modules-extra-5.4.0-42-generic linux-headers-5.4.0-42-generic

Remove 20.04.2 kernel and reboot. If prompted, say no to aborting the removal of the kernel.

sudo apt-get purge linux*5.8*

sudo reboot

## Preventing kernel upgrade on 20.04.1 HWE system
To prevent Ubuntu 20.04.1 system with amdgpu-pro stack release 20.45 installed from experiencing issues after system update, it is recommended to perform the following

sudo apt-mark hold linux-generic-hwe-20.04 linux-image-generic-hwe-20.04 linux-headers-generic-hwe-20.04

That will prevent Ubuntu 20.04.1 HWE system from updating to kernel 5.8 when running apt update / apt upgrade / apt dist-upgrade

Once user is ready to upgrade to release 20.50 or later, it's recommended to perform the following actions:

Uninstall amdgpu-pro stack release 20.45 with amdgpu-uninstall or amdgpu-pro-uninstall
Remove hold:

sudo apt-mark unhold linux-generic-hwe-20.04 linux-image-generic-hwe-20.04 linux-headers-generic-hwe-20.04
 
Update the system with apt update / apt dist-upgrade
Install release 20.50 or later release
