```bash
#!/bin/bash

# Check if the script is being run as root
if [ "$EUID" -ne 0 ]
  then echo "Please run this script as root"
  exit 1
fi

# Save current iptables rules to current directory
ipFilename="iptables_rules_$(date +%F_%T).bak"
iptables-save > ${filename}

# Initialize nftables rules
nfFilename="nftables_rules_$(date +%F_%T).nft"
iptables-restore-translate -f $filename > $nfFilename

# List rules for validation
nft list ruleset

echo "iptables rules have been converted to nftables rules."
```
