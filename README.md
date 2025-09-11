# Blocklist Generator

This repository contains a simple script to generate a blocklist file in hosts format from a list of domains.

The domain list is what i explicitly want to block using pihole in my local network.

## Files

*   `listOfDomains.txt`: This is the input file. Add any domains you want to block to this file, with one domain per line.
*   `generate.sh`: This is the shell script that reads the domains from `listOfDomains.txt` and creates the `blocklist.txt` file.
*   `blocklist.txt`: This is the generated output file. Each line will be in the format `0.0.0.0 <domain>`, which can be used in a hosts file to block the specified domains.

## Usage

1.  Add the domains you want to block to the `listOfDomains.txt` file, one domain per line.
2.  Make the `generate.sh` script executable:
    ```bash
    chmod +x generate.sh
    ```
3.  Run the script:
    ```bash
    ./generate.sh
    ```
4.  The `blocklist.txt` file will be generated or updated with the domains from `listOfDomains.txt`.