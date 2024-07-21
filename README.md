![image](https://github.com/user-attachments/assets/65610873-681b-4d74-b9ff-05c1209ddd6f)

## Rivalz rClint CLi Ultimate Guide 
 
## Requirements


- You must need to buy a VPS for running Rivalz rClient
- You can buy from : Contabo
- You should buy VPS which is fulfilling all these requirements : 
```bash
Operating System : Ubuntu 22.04
CPU : Minimum of 4 cores
RAM : 4 GB
Storage : SSD or NVMe with at least 50GB of space
```

## Deployment 
Step1: 
```bash
apt install wget 
```

Step2: 
```bash
apt install screen
```

Step3: Create Screen
```bash
screen -S rivalz
```

Step4:
```bash
wget https://raw.githubusercontent.com/0xtnpxsgt/rivalzcli/main/rivalzcli.sh && chmod +x rivalzcli.sh && 
sed -i -e 's/\r$//' rivalzcli.sh && ./rivalzcli.sh
```
- In the last part of the command execution, it will ask for your `wallet & Vps Info`, Here you need to input the details manually)

Step5: Dettached Screen
```bash
hold crtl press A & D
```

## Other Commands ✅

```bash
rivalz version-update 
rivalz run
```

Open Screen List
```bash
Screen -ls
```

Open Screen 
```bash
Screen -r screen-name
```

Re-attached Screen 
```bash
Screen -d -r screen-name
```

Remove Screen 
```bash
Screen -XS screen-name quit
```
