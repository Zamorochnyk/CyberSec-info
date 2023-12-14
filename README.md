# Pentesting tools (WIP)
📃 **ALL EXTERNAL RESOURCES BELONG TO THEIR RESPECTIVE OWNERS**

🐳 Cli pentesting tools, packaged in docker images.  
🔨 Use this as a template to build your toolkits.  
♻️ It is meant to be a simple, disposable, "minimal-out-of-the-box" sandbox.  
🔓 It is **not** meant to be secure, stable, "all-in-one" monolith.  

> For more consistent experience - consider to build your images with [KaliLinux](https://hub.docker.com/r/kalilinux/kali-rolling) or [ParrotOs](https://hub.docker.com/r/parrotsec/core).

⚠️ This tools can do real damage.  
Even if you *can* do something, it does not mean that you *should*.  
Be responsible and conscious. ⚠️

⚙️ Generic usage example:

0. [Intall docker compose](https://docs.docker.com/compose/install/) if needed;
1. Start containers from the project directory: `sudo docker compose up -d`;  
   > (Note: if you are facing slow download speed - try to adjust [reflector](https://wiki.archlinux.org/title/reflector))
1. Put data in the mounted directory;  
   > (Example: `/transf/`, edit/add/remove in `docker-compose.yml`)
1. Connect with [ssh](#-openssh): `ssh -p 120 root@localhost`;  
   > (Note: 120 is example port from `docker-compose.yml`)
1. Open [tmux](#-tmux) and create few windows/sessions/etc;
1. Connect to [vpn](#-openvpn): `openvpn /path/to/config`;
1. Start [mitmproxy](#-mitmproxy);
1. Do some pentesting:
    - Use [nmap](#-nmap) for scanning;
    - [Search](#-cybersec-databases) for exploiting scripts/write your own;
    - Use [CyberChief](#-cyberchief) for any misc operations;
    - etc;
    - Install task-specific tool:
      - [Arch-linux](#-arch-linux) packages `pacman -S <package_name>`
      - [Python](#-python) packages `pipx install <pacakge_name>`
1. Exit from a container;  
   > (Use `Ctrl + C` to kill foreground process)  
   > (Type alot of `exit` or kill the connection/terminal)  
   > (Note: if you are just closing connection/terminal - tmux session will remain in background)
1. Get data from the mounted directory;  
   > (Example: `/transf/`, edit/add/remove in `docker-compose.yml`)
1. Remove containers: `"sudo docker compose down"`;  
   > (add `-v` to clean **all** related volumes)
1. [Clean docker data](https://docs.docker.com/config/pruning/) if needed.

## 🍪 General

🎓 This and further paragraphs serve as a small, generic knowledge database.  
Threat them as a reference book, not serious academic learning material.  
For structured learning path check this fantastic [roadmap.sh](https://roadmap.sh/roadmaps)
> (Note: here are a lot of `Arch Linux` wiki/man pages, but they are very usable for other linux distros, just use corresponding packages/directories)

[Learn x in y](https://learnxinyminutes.com/) | [quickref.me](https://quickref.me/) | [devhints.io](https://devhints.io/) | 
[GitHub](https://github.com/search?q=cheatsheet&type=repositories)

### 💾 Database (db)
[Wiki](https://wiki.archlinux.org/title/Category:Database_management_systems) | [Models](https://learn.microsoft.com/en-us/azure/architecture/guide/technology-choices/data-store-overview) | 
[Relational](https://www.digitalocean.com/community/tutorials/understanding-relational-databases) | [Non-relational](https://learn.microsoft.com/en-us/azure/architecture/data-guide/big-data/non-relational-data)

[Oracle](https://en.wikibooks.org/wiki/Oracle_Database/SQL_Cheatsheet) | [MySql](https://www.mysqltutorial.org/mysql-cheat-sheet.aspx) | 
[PostgreSQL](https://www.postgresqltutorial.com/postgresql-cheat-sheet/) | [MongoDB](https://www.mongodb.com/developer/products/mongodb/cheat-sheet/) | 
[Redis](https://developer.redis.com/howtos/quick-start/cheat-sheet/) | [SqlLite](https://www.sqlitetutorial.net/sqlite-cheat-sheet/)

### 📂 Passwords/Exploits/Etc

[SecLists](https://github.com/danielmiessler/SecLists/tree/master) | [Patterns](https://github.com/mazen160/secrets-patterns-db) | 
[Passwords](https://weakpass.com/) | [Exploits/info sources](https://github.com/fastfire/deepdarkCTI)


### 📝 Regular expression (regex)

[Docs](https://pubs.opengroup.org/onlinepubs/7908799/xbd/re.html) | [Generator](https://regex-generator.olafneumann.org) | [Sandbox](https://regexr.com/) | [Database](https://regexlib.com/Default.aspx) | 
[Cheat Sheet](https://quickref.me/regex.html)

### 🌐 Network

[Basics](https://www.geeksforgeeks.org/basics-computer-networking/) | [Configuration](https://wiki.archlinux.org/title/Network_configuration) | [DNS](https://wiki.archlinux.org/title/Domain_name_resolution) | [Proxy](https://wiki.archlinux.org/title/Proxy_server) | [WPA](https://wiki.archlinux.org/title/Wpa_supplicant) | [Ports](https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers) | [Cheat Sheet](https://www.geeksforgeeks.org/computer-network-cheat-sheet/) | [Common Linux commands](https://www.geeksforgeeks.org/linux-commands-cheat-sheet/#networking) | [Common Windows commands](https://www.geeksforgeeks.org/networking-commands-for-troubleshooting-windows/)

### 🔒 Cryptography

[Basics](https://www.fortinet.com/resources/cyberglossary/what-is-cryptography) | [Advanced](https://wiki.owasp.org/index.php/Guide_to_Cryptography) | [SSL/TLS](https://cheatsheetseries.owasp.org/cheatsheets/Transport_Layer_Protection_Cheat_Sheet.html) | [Creation](https://gist.github.com/dimosr/317629577c71c376946f8a31a4c2b069) | [Wiki](https://hashcat.net/wiki/) 
### 🥷 Where to practice

[OverTheWire](https://overthewire.org/wargames/) | [TryHackMe](https://tryhackme.com/) | [HackTheBox](https://www.hackthebox.com/) | [HBH](https://hbh.sh/home) | [DefendTheWeb](https://defendtheweb.net/)

### 🤝 Awesome additional resources

[Offensive Security Cheatsheet](https://cheatsheet.haax.fr/resources/general_infosec/) | [ired.team](https://www.ired.team/) | [RedTeam-Tools](https://github.com/A-poc/RedTeam-Tools) | [tmpout](https://github.com/tmpout/awesome-elf) | [OWASP Cheat Sheet Series](https://cheatsheetseries.owasp.org/index.html) | [PayloadsAllTheThings](https://github.com/swisskyrepo/PayloadsAllTheThings)

## 🏗️ Infrastructure

### 📗 Docker

[Docs](https://docs.docker.com/) | [Installation](https://docs.docker.com/compose/install/) | [Commands](https://docs.docker.com/compose/reference/) | [Compose cheat sheet](https://devhints.io/docker-compose) | [Docker cheat sheet](https://quickref.me/docker) | [Cleanups](https://docs.docker.com/config/pruning/)

### 📗 Linux

[All in one guides](https://linuxjourney.com/) | [Administration](https://wiki.archlinux.org/title/Category:System_administration) | [Security](https://wiki.archlinux.org/title/Category:Security) | [Networking](https://wiki.archlinux.org/title/Category:Networking) | [Commands cheat sheet](https://www.geeksforgeeks.org/linux-commands-cheat-sheet/) | [Dir cheat sheet](https://www.tecmint.com/linux-directory-structure-and-important-files-paths-explained/)

#### 📘 Bash

[Wiki](https://wiki.archlinux.org/title/bash) | [Manual](https://man.archlinux.org/man/bash.1) | [Cheat Sheet](https://quickref.me/bash)

#### 📘 Arch Linux

[Docs](https://archlinux.org/) | [Container](https://hub.docker.com/_/archlinux/) | [Packages](https://archlinux.org/packages/) | [Wiki](https://wiki.archlinux.org/) | [Manuals](https://man.archlinux.org/)

#### 📘 BlackArch Linux

[Docs](https://blackarch.org/) | [Guide](https://blackarch.org/guide.html) | [Packages](https://blackarch.org/tools.html) | [GitHub](https://github.com/BlackArch/blackarch)

### 📗 Microsoft Windows

[OS](https://learn.microsoft.com/en-us/windows/) | [Active Directory](https://learn.microsoft.com/en-us/troubleshoot/windows-server/identity/active-directory-overview) | [Server](https://learn.microsoft.com/en-us/windows-server/) | [Commands cheat sheet](https://www.stationx.net/windows-command-line-cheat-sheet/)

#### 📘 PowerShell
[GitHub](https://github.com/PowerShell/PowerShell) | [Docs](https://learn.microsoft.com/en-us/powershell/) | [Cheat Sheet](https://www.stationx.net/powershell-cheat-sheet/)

## 🧰 Tools

### 👨‍🍳 CyberChief

To connect - open the browser and type `localhost:8000`  
> (Note: 8000 is example port from `docker-compose.yml`)

[GitHub](https://github.com/gchq/CyberChef) | [Web](https://gchq.github.io/CyberChef/) | [Container](https://hub.docker.com/r/mpepping/cyberchef/)

### 🌱 Core


#### 📘 Git

[Wiki](https://wiki.archlinux.org/title/git) | [Manual](https://man.archlinux.org/man/git.1) | [Cheat Sheet](https://quickref.me/git)

#### 📘 Python

[Wiki](https://wiki.archlinux.org/title/python) | [Cheat Sheet](https://github.com/gto76/python-cheatsheet) | [pipx](https://pypa.github.io/pipx/)

#### 📘 Openvpn

[Docs](https://community.openvpn.net/openvpn) | [Server](https://wiki.archlinux.org/title/OpenVPN) | [Client](https://man.archlinux.org/man/extra/openvpn/openvpn.8.en)

#### 📘 Tmux

[Wiki](https://wiki.archlinux.org/title/tmux) | [Manual](https://man.archlinux.org/man/tmux.1) | [Cheat Sheet](https://quickref.me/tmux)

#### 📘 Nano
 
[Wiki](https://wiki.archlinux.org/title/nano) | [Manual](https://man.archlinux.org/man/nano.1) | [Cheat Sheet](https://www.nano-editor.org/dist/latest/cheatsheet.html)

#### 📘 Openssh

[Wiki](https://wiki.archlinux.org/title/OpenSSH) | [Manual](https://man.archlinux.org/man/core/openssh/ssh.1.en) | [ssh_config](https://man.archlinux.org/man/ssh_config.5) | [Cheat Sheet](https://quickref.me/ssh.html)

#### 📘 Openssl
 
[Wiki](https://wiki.archlinux.org/title/OpenSSL) | [Manual](https://man.archlinux.org/man/openssl.1ssl) | [Cheat Sheet](https://cheatography.com/albertx/cheat-sheets/openssl/)

### 👁️ Scanners

#### 📘 Nmap

[Docs](https://nmap.org/docs.html) | [Wiki](https://wiki.archlinux.org/title/nmap) | [Scripts](https://nmap.org/nsedoc/scripts/) | 
[Manual](https://man.archlinux.org/man/nmap.1) | [Vulscan](https://github.com/scipag/vulscan) | [Cheat Sheet](https://www.stationx.net/nmap-cheat-sheet/)

#### 📘 Masscan

⚠️Unless you are scanning a giant internal network, please, keep those --rates at ~1000-10000, **do not flood public networks**⚠️

[Manual](https://man.archlinux.org/man/masscan.8) | [Cheat Sheet](https://cheatsheet.haax.fr/network/port-scanning/masscan_cheatsheet/)

#### 📘 Mitmproxy

To connect: set proxy as `localhost:8081`.
> (Note: 8081 is example port from `docker-compose.yml`)

Also can be used as the gateway to the internal docker network/vpn/etc.  
Commons:
- start with `--ssl-insecure` to ignore certificate verification;
- After the first run certificate will be created in `~/.mitmproxy`. Import them to the external client.  
  (Check [About Certificates](https://docs.mitmproxy.org/stable/concepts-certificates/)) for additional info.
- To transfer traffic from `BurpSuite` - set proxy as: `Burp -> Settings -> Network -> Connections -> Add proxy`.
  > (Same logic applies to any tool like ZAP, Metasploit, etc)

[GitHub](https://github.com/mitmproxy/mitmproxy) | [Docs](https://docs.mitmproxy.org/stable/) | [Cheat Sheet](https://quickref.me/mitmproxy.html) | [mitmproxy2swagger](https://github.com/alufers/mitmproxy2swagger)

#### 📘 Nuclei

[GitHub](https://github.com/projectdiscovery/nuclei) | [Templates](https://github.com/projectdiscovery/nuclei-templates) | [Cheat Sheet](https://cheatsheet.haax.fr/web-pentest/tools/nuclei/)

#### 📘 Wapiti

[GitHub](https://github.com/wapiti-scanner/wapiti) | [Manual](https://manpages.org/wapiti)

#### 📘 Dalfox

[GiHhub](https://github.com/hahwul/dalfox) | [Docs](https://dalfox.hahwul.com/docs/home/) | [Cheat Sheet](https://www.blackhatethicalhacking.com/tools/dalfox/)

#### 📘 Katana

[GitHub](https://github.com/projectdiscovery/katana)

#### 📘 Gobuster

[GitHub](https://github.com/OJ/gobuster) | [Cheat Sheet](https://3os.org/penetration-testing/cheatsheets/gobuster-cheatsheet/)

### ⚔️ Exploiters

#### 📘 Sqlmap

[GitHub](https://github.com/sqlmapproject/sqlmap) | [Wiki](https://github.com/sqlmapproject/sqlmap/wiki/Features) | [Manual](https://manpages.org/sqlmap) | 
[Cheat Sheet](https://cdn.comparitech.com/wp-content/uploads/2021/07/sqlmap-Cheat-Sheet.pdf)

#### 📘 Hydra

[Manual](https://man.archlinux.org/man/extra/hydra/hydra.1.en) | [GitHub](https://github.com/vanhauser-thc/thc-hydra) | [Cheat Sheet](https://haxez.org/wp-content/uploads/2022/06/HaXeZ_Hydra_Cheat_Sheet-1.pdf)

#### 📘 Commix

[GitHub](https://github.com/commixproject/commix) | [Docs](https://github.com/commixproject/commix/wiki/Usage)

#### 📘 Hashcat

[Docs](https://hashcat.net/hashcat/) | [GitHub](https://github.com/hashcat/hashcat) | [Cheat Sheet](https://cheatsheet.haax.fr/passcracking-hashfiles/hashcat_cheatsheet/)

#### 📘 John the Ripper

[GitHub](https://github.com/openwall/john) | [Docs](https://openwall.info/wiki/john) | [Cheat Sheet](https://cheatsheet.haax.fr/passcracking-hashfiles/john_cheatsheet/)
