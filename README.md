🛠️ Linux System Security and Management Script

This script is designed to enhance the security and management of a Linux system by performing the following tasks:

    System Update: It updates the system packages to ensure that all software is up-to-date with the latest security patches and features.

    Install UFW and Fail2Ban:
        UFW (Uncomplicated Firewall): A user-friendly interface for managing firewall rules, which helps secure the system by controlling incoming and outgoing traffic.
        Fail2Ban: A security tool that monitors log files for suspicious activity and automatically blocks IP addresses that show malicious behavior, such as repeated failed login attempts.

    Configure UFW:
        The script sets UFW to deny all incoming traffic by default while allowing outgoing traffic.
        It specifically allows SSH (port 22), HTTP (port 80), and HTTPS (port 443) traffic, ensuring that only necessary services are accessible.

    Secure SSH Configuration:
        The script modifies the SSH configuration to change the default port from 22 to a custom port (e.g., 2222) to reduce the risk of brute-force attacks.
        It disables root login via SSH, enhancing security by preventing direct access to the root account.

    Install ClamAV:
        ClamAV is installed as an antivirus solution to scan the system for malware and viruses, providing an additional layer of security.
        The script also updates the ClamAV virus database to ensure it can detect the latest threats.

    Status Checks:
        Finally, the script displays the status of UFW, Fail2Ban, and ClamAV, allowing the user to verify that these services are running correctly.

This script provides a solid foundation for securing a Linux system, making it suitable for various applications while minimizing vulnerabilities.

🛠️ How to Use the Security and Management Script

Before you can clone the repository, ensure that Git is installed on your system. You can install it using the following command:

sudo apt update
sudo apt install git -y

Use the git clone command to download the repository containing the script. Replace YOUR_REPOSITORY_URL with the actual URL of the repository where the script is hosted.

git clone https://github.com/bosota-the-boron/linuxrules
cd linuxrules
chmod +x setup_security.sh
./setup_security.sh

The script will run and perform the tasks outlined, such as updating the system, configuring UFW, securing SSH, and installing ClamAV. Follow any prompts that may appear during the execution.
Once the script has completed, you can check the status of UFW, Fail2Ban, and ClamAV to ensure everything is running correctly. The script will display this information at the end of its execution.
Additional Notes

    Run as Root: Depending on your system configuration, you may need to run the script with sudo to ensure it has the necessary permissions to make system changes. You can do this by executing sudo ./setup_security.sh.
    Backup Important Data: Before running scripts that modify system settings, it's always a good idea to back up any important data.

By following these steps, you can effectively use the security and management script to enhance the security of your Linux system. If you have any questions or need further assistance, feel free to ask!
