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

Step3: 
```bash
screen -S rivalz
```

Step4:
```bash
wget https://raw.githubusercontent.com/0xtnpxsgt/rivalzcli/main/rivalzcli.sh && chmod +x rivalzcli.sh && 
sed -i -e 's/\r$//' rivalzcli.sh && ./rivalzcli.sh
```
Step5: Dettached Screen
```bash
crtl A+D
```

## Other Commands ✅

```bash
rivalz version-update 
rivalz run
```

Screen re-attached
```bash
Screen -d -x screen-name
```
