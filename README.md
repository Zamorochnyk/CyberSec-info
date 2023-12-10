# Pentesting tools (WIP)
📜 **ALL EXTERNAL RESOURCES BELONG TO THEIR RESPECTIVE OWNERS**

🐳 Cli pentesting tools, packaged in docker images.  
🔨 Use this as a template to build your toolkits.  
♻️ It is meant to be a simple, disposable, "minimal-out-of-the-box" sandbox.  
🔓 It is **not** meant to be secure, stable, "all-in-one" monolith.  

> For more consistent experience - consider to build your images with [KaliLinux](https://hub.docker.com/r/kalilinux/kali-rolling) or [ParrotOs](https://hub.docker.com/r/parrotsec/core).

🚩  
This tools can do real damage.  
Even if you *can* do something, it does not mean that you *should*.  
Be responsible and conscious.  
🚩

🌊 Generic usage example:

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
    - Use [metasploit](#-metasploit) for exploiting;
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

## 🎖️ General

🎓 This and further paragraphs serve as a small, generic knowledge database.  
Threat them as a reference book, not serious academic learning material.  
> (Note: here are a lot of `Arch Linux` wiki/man pages, but they are very usable for other linux distros, just use corresponding packages/directories)

Quick references for programming languages and other tools:
- [Learn x in y](https://learnxinyminutes.com/)
- [QuickRef](https://quickref.me/)
- [GitHub](https://github.com/search?q=cheatsheet&type=repositories)

### 📀 Database
Documentation:
- [Wiki](https://wiki.archlinux.org/title/Category:Database_management_systems)
- [Models](https://learn.microsoft.com/en-us/azure/architecture/guide/technology-choices/data-store-overview)
- [Relational](https://www.digitalocean.com/community/tutorials/understanding-relational-databases)
- [Non-relational](https://learn.microsoft.com/en-us/azure/architecture/data-guide/big-data/non-relational-data)

Common dbs:
- [Oracle](https://en.wikibooks.org/wiki/Oracle_Database/SQL_Cheatsheet)
- [MySql](https://www.mysqltutorial.org/mysql-cheat-sheet.aspx)
- [PostgreSQL](https://www.postgresqltutorial.com/postgresql-cheat-sheet/)
- [MongoDB](https://www.mongodb.com/developer/products/mongodb/cheat-sheet/)
- [Redis](https://developer.redis.com/howtos/quick-start/cheat-sheet/)
- [SqlLite](https://www.sqlitetutorial.net/sqlite-cheat-sheet/)

### 💾 CyberSec databases

Passwords/Enums/etc:
- [SecLists](https://github.com/danielmiessler/SecLists/tree/master)
- [Secrets-patterns-db](https://github.com/mazen160/secrets-patterns-db)

Exploits:
- [ExploitDB](https://www.exploit-db.com/)
- [Rapid7](https://www.rapid7.com/db/)
- [CVE](https://www.cve.org/)
- [0day](https://0day.today/)
- [cxsecurity](https://cxsecurity.com/)

### 📋 Regular expression

- [Docs](https://pubs.opengroup.org/onlinepubs/7908799/xbd/re.html)
- [Generator](https://regex-generator.olafneumann.org)
- [Sandbox](https://regexr.com/)
- [Database](https://regexlib.com/Default.aspx)
- [Cheat Sheet](https://quickref.me/regex.html)

### 🌐 Network

Documentation:
- [Basics](https://www.geeksforgeeks.org/basics-computer-networking/)
- [Configuration](https://wiki.archlinux.org/title/Network_configuration)
- [DNS](https://wiki.archlinux.org/title/Domain_name_resolution)
- [Proxy](https://wiki.archlinux.org/title/Proxy_server)
- [WPA](https://wiki.archlinux.org/title/Wpa_supplicant)
- [Ports](https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers)
- [Cheat Sheet](https://www.geeksforgeeks.org/computer-network-cheat-sheet/)

Common tools:
- [ping](https://man.archlinux.org/man/ping.8.en)
- [traceroute](https://man.archlinux.org/man/core/traceroute/traceroute.8.en)
- [netcat](https://man.archlinux.org/man/extra/openbsd-netcat/nc.1.en)
- [whois](https://man.archlinux.org/man/whois.1)
- [dig](https://man.archlinux.org/man/dig.1)
- [host](https://man.archlinux.org/man/host.1)
- [ss](https://man.archlinux.org/man/ss.8.en)

### 🔒 Cryptography

- [General](https://www.fortinet.com/resources/cyberglossary/what-is-cryptography)
- [Theory](https://gist.github.com/dimosr/317629577c71c376946f8a31a4c2b069)
- [Commons](https://cheatography.com/ipsec/cheat-sheets/cryptography/)
- [Wiki](https://hashcat.net/wiki/)

### 🥋 Where to practice

- [OverTheWire](https://overthewire.org/wargames/)
- [TryHackMe](https://tryhackme.com/)
- [HackTheBox](https://www.hackthebox.com/)
- [HBH](https://hbh.sh/home)
- [DefendTheWeb](https://defendtheweb.net/)

### 🤝 Awesome additional resources

- [Offensive Security Cheatsheet](https://cheatsheet.haax.fr/)
- [ired.team](https://www.ired.team/)
- [RedTeam-Tools](https://github.com/A-poc/RedTeam-Tools)
- [tmpout](https://github.com/tmpout/awesome-elf)
- [OWASP Cheat Sheet Series](https://cheatsheetseries.owasp.org/index.html)
- [the-book-of-secret-knowledge](https://github.com/trimstray/the-book-of-secret-knowledge)
- [PayloadsAllTheThings](https://github.com/swisskyrepo/PayloadsAllTheThings)

## 🏗️ Infrastructure

### 📙 Docker
Docker is a set of platform-as-a-service (PaaS) products that use OS-level virtualization to deliver software in packages called containers.

> Note: Please, use docker compose and do periodical [cleanups](https://docs.docker.com/config/pruning/). 
- [Docs](https://docs.docker.com/)
- [Installation](https://docs.docker.com/compose/install/)
- [Commands](https://docs.docker.com/compose/reference/)
- [Cheat Sheet (compose)](https://devhints.io/docker-compose)
- [Cheat Sheet (docker)](https://quickref.me/docker)

### 📙 Bash

Bash is a sh-compatible command language interpreter that executes commands read from the standard input or a file.
- [Wiki](https://wiki.archlinux.org/title/bash)
- [Manual](https://man.archlinux.org/man/bash.1)
- [Cheat Sheet](https://quickref.me/bash)

### 📙 Linux

Linux is a family of open-source Unix-like operating systems based on the Linux kernel.
Documentation:
- [Docs](https://www.linux.org/)
- [Administration](https://wiki.archlinux.org/title/Category:System_administration)
- [Security](https://wiki.archlinux.org/title/Category:Security)
- [Networking](https://wiki.archlinux.org/title/Category:Networking)
- [Cheat Sheet (commands)](https://www.geeksforgeeks.org/linux-commands-cheat-sheet/)
- [Cheat Sheet (structure)](https://www.tecmint.com/linux-directory-structure-and-important-files-paths-explained/)

Common tools:
- [chmod](https://quickref.me/chmod)
- [awk](https://quickref.me/awk)
- [cron](https://quickref.me/cron)
- [sed](https://quickref.me/sed)
- [grep](https://quickref.me/grep)

### 📙 Arch Linux

Arch Linux is minimal, an independently developed, x86-64 general-purpose Linux distribution that strives to provide the latest stable versions of most software by following a rolling-release model.
- [Docs](https://archlinux.org/)
- [Container](https://hub.docker.com/_/archlinux/)
- [Packages](https://archlinux.org/packages/)
- [Wiki](https://wiki.archlinux.org/)
- [Manuals](https://man.archlinux.org/)

### 📙 BlackArch Linux

BlackArch is a penetration testing distribution based on Arch Linux that provides a large number of security tools.
- [Docs](https://blackarch.org/)
- [Guide](https://blackarch.org/guide.html)
- [Packages](https://blackarch.org/tools.html)
- [GitHub](https://github.com/BlackArch/blackarch)

### 📙 PowerShell

PowerShell is a task automation and configuration management program from Microsoft, consisting of a command-line shell and the associated scripting language.
- [GitHub](https://github.com/PowerShell/PowerShell)
- [Docs](https://learn.microsoft.com/en-us/powershell/)
- [Cheat Sheet](https://www.stationx.net/powershell-cheat-sheet/)

### 📙 Microsoft Windows

Microsoft Windows is a group of several proprietary graphical operating system families developed and marketed by Microsoft.
- [OS](https://learn.microsoft.com/en-us/windows/)
- [Active Directory](https://learn.microsoft.com/en-us/troubleshoot/windows-server/identity/active-directory-overview)
- [Server](https://learn.microsoft.com/en-us/windows-server/)
- [Cheat Sheet](https://www.stationx.net/windows-command-line-cheat-sheet/)

## 🧰 Tools

### 🧑‍🍳 CyberChief

CyberChef is a simple, intuitive web app for carrying out all manner of "cyber" operations within a web browser.  
For security reasons, please, use the local container version.  
To connect - open the browser and type `localhost:8000`  
> (Note: 8000 is example port from `docker-compose.yml`)

[GitHub](https://github.com/gchq/CyberChef) / [Web](https://gchq.github.io/CyberChef/) / [Container](https://hub.docker.com/r/mpepping/cyberchef/)

### 🌱 Core

Essential tools.

#### 📙 Git

Git is a fast, scalable, distributed revision control system with an unusually rich command set that provides both high-level operations and full access to internals.  
[Wiki](https://wiki.archlinux.org/title/git) / [Manual](https://man.archlinux.org/man/git.1) / [Cheat Sheet](https://quickref.me/git)

#### 📙 Curl

Curl is a tool for transferring data from or to a server using URLs.  
[Wiki](https://wiki.archlinux.org/title/CURL) / [Manual](https://man.archlinux.org/man/curl.1) / [Cheat Sheet](https://quickref.me/curl)

#### 📙 Python

Python is a high-level, general-purpose programming language.
> Note: To install/uninstall python-specific apps - use [pipx](https://pypa.github.io/pipx/)

[Wiki](https://wiki.archlinux.org/title/python) / [Cheat Sheet](https://github.com/gto76/python-cheatsheet)

#### 📙 Openvpn
OpenVPN is a virtual private network (VPN) system that implements techniques to create secure point-to-point or site-to-site connections in routed or bridged configurations and remote access facilities. It implements both client and server applications.  
[Docs](https://community.openvpn.net/openvpn) / [Server](https://wiki.archlinux.org/title/OpenVPN) / [Client](https://man.archlinux.org/man/extra/openvpn/openvpn.8.en)

#### 📙 Tmux

Tmux is a terminal multiplexer: it enables a number of terminals to be created, accessed, and controlled from a single screen. Tmux may be detached from a screen and continue running in the background, then later reattached.  
[Wiki](https://wiki.archlinux.org/title/tmux) / [Manual](https://man.archlinux.org/man/tmux.1) / [Cheat Sheet](https://quickref.me/tmux)

#### 📙 Nano

GNU nano (or nano) is a text editor that aims to introduce a simple interface and intuitive command options to console-based text editing.  
[Wiki](https://wiki.archlinux.org/title/nano) / [Manual](https://man.archlinux.org/man/nano.1) / [Cheat Sheet](https://www.nano-editor.org/dist/latest/cheatsheet.html)

#### 📙 Openssh

OpenSSH (OpenBSD Secure Shell) is a set of computer programs providing encrypted communication sessions over a computer network using the Secure Shell (SSH) protocol.  
[Wiki](https://wiki.archlinux.org/title/OpenSSH) / [Manual](https://man.archlinux.org/man/core/openssh/ssh.1.en) / [ssh_config](https://man.archlinux.org/man/ssh_config.5) / [Cheat Sheet](https://quickref.me/ssh.html)

#### 📙 Openssl

OpenSSL is an open-source implementation of the SSL and TLS protocols, designed to be as flexible as possible.  
[Wiki](https://wiki.archlinux.org/title/OpenSSL) / [Manual](https://man.archlinux.org/man/openssl.1ssl) / [Cheat Sheet](https://cheatography.com/albertx/cheat-sheets/openssl/)

### 👁️ Scanners

#### 📙 Nmap

Nmap (“Network Mapper”) is an open-source tool for network exploration and security auditing.  

[Docs](https://nmap.org/docs.html) / [Wiki](https://wiki.archlinux.org/title/nmap) / [Scripts](https://nmap.org/nsedoc/scripts/) /
[Manual](https://man.archlinux.org/man/nmap.1) / [Vulscan](https://github.com/scipag/vulscan) / [Cheat Sheet](https://www.stationx.net/nmap-cheat-sheet/)

#### 📙 Masscan

Masscan is an Internet-scale port scanner, useful for large-scale surveys of the Internet, or of internal networks.
> 🚩  
> Unless you are scanning a giant internal network, please, keep those --rates at ~1000-10000, **do not flood public networks**.  
> Keep it sane.  
> 🚩

[Manual](https://man.archlinux.org/man/masscan.8) / [Cheat Sheet](https://cheatsheet.haax.fr/network/port-scanning/masscan_cheatsheet/)

#### 📙 Mitmproxy
Mitmproxy is an interactive, SSL/TLS-capable intercepting proxy with a console interface for HTTP/1, HTTP/2, and WebSockets.  

To connect: set proxy as `localhost:8081` (search instructions for your browser/tool)
> (Note: 8081 is example port from `docker-compose.yml`)

Also can be used as the gateway to the internal docker network/vpn/etc.  
Commons:
- start with `--ssl-insecure` to ignore certificate verification;
- After the first run certificate will be created in `~/.mitmproxy`. Import them to the external client (search instructions for your browser/tool)  
  Check [concepts-certificates](https://docs.mitmproxy.org/stable/concepts-certificates/) for additional info.
- To transfer traffic from `BurpSuite` - set proxy inside `Burp`: `Burp -> Settings -> Network -> Connections -> Add proxy`.
- Use [mitmproxy2swagger](https://github.com/alufers/mitmproxy2swagger) to build api scheeme. Pairs well with [katana](#-katana).  

[GitHub](https://github.com/mitmproxy/mitmproxy) / [Docs](https://docs.mitmproxy.org/stable/) / [Cheat Sheet](https://quickref.me/mitmproxy.html)

#### 📙 Nuclei

Nuclei is used to send requests across targets based on a template, leading to zero false positives and providing fast scanning on a large number of hosts.   
[GitHub](https://github.com/projectdiscovery/nuclei) / [Templates](https://github.com/projectdiscovery/nuclei-templates) / [Cheat Sheet](https://cheatsheet.haax.fr/web-pentest/tools/nuclei/)

#### 📙 Wapiti

Wapiti performs "black-box" scans, i.e. it does not study the source code of the application but will scans the webpages of the deployed webapp, looking for scripts and forms where it can inject data.  
[GitHub](https://github.com/wapiti-scanner/wapiti) / [Manual](https://manpages.org/wapiti)

#### 📙 Dalfox

DalFox is a powerful open-source tool that focuses on automation, making it ideal for quickly scanning for XSS flaws and analyzing parameters. Its advanced testing engine and niche features are designed to streamline the process of detecting and verifying vulnerabilities.  
[GiHhub](https://github.com/hahwul/dalfox) / [Docs](https://dalfox.hahwul.com/docs/home/) / [Cheat Sheet](https://www.blackhatethicalhacking.com/tools/dalfox/)

#### 📙 Katana

A next-generation crawling and spidering framework.  
[GitHub](https://github.com/projectdiscovery/katana)

#### 📙 Gobuster

Directory/File, DNS, and VHost busting tool written in Go.
Check [CyberSec databases](#-cybersec-databases) for possible enums.  
[GitHub](https://github.com/OJ/gobuster) / [Cheat Sheet](https://3os.org/penetration-testing/cheatsheets/gobuster-cheatsheet/)

### 🗡️ Exploiters

#### 📙 Sqlmap

Sqlmap is an open-source penetration testing tool that automates the process of detecting and exploiting SQL injection flaws and taking over of database servers.  
[GitHub](https://github.com/sqlmapproject/sqlmap) / [Wiki](https://github.com/sqlmapproject/sqlmap/wiki/Features) / [Manual](https://manpages.org/sqlmap) / 
[Cheat Sheet](https://cdn.comparitech.com/wp-content/uploads/2021/07/sqlmap-Cheat-Sheet.pdf)

#### 📙 Metasploit 

The Metasploit Project is a computer security project that provides information about security vulnerabilities and aids in penetration testing and IDS signature development.  
[Wiki](https://wiki.archlinux.org/title/Metasploit_Framework) / [GitHub](https://github.com/rapid7/metasploit-framework) / [Docs](https://docs.metasploit.com/)

#### 📙 Hydra

Hydra is a parallelized login cracker that supports numerous protocols to attack. New modules are easy to add, besides that, it is flexible and very fast.   
[Manual](https://man.archlinux.org/man/extra/hydra/hydra.1.en) / [GitHub](https://github.com/vanhauser-thc/thc-hydra) / [Cheat Sheet](https://haxez.org/wp-content/uploads/2022/06/HaXeZ_Hydra_Cheat_Sheet-1.pdf)

#### 📙 Commix

Commix  is an open-source penetration testing tool, that automates the detection and exploitation of command injection vulnerabilities.  
[GitHub](https://github.com/commixproject/commix) / [Docs](https://github.com/commixproject/commix/wiki/Usage)

#### 📙 Hashcat

Hashcat is the world's fastest and most advanced password recovery utility, supporting five unique modes of attack for over 300 highly optimized hashing algorithms.  
[Docs](https://hashcat.net/hashcat/) / [GitHub](https://github.com/hashcat/hashcat) / [Cheat Sheet](https://cheatsheet.haax.fr/passcracking-hashfiles/hashcat_cheatsheet/)

#### 📙 John the Ripper

John the Ripper is an Open Source password security auditing and password recovery tool available for many operating systems.
[GitHub](https://github.com/openwall/john) / [Docs](https://openwall.info/wiki/john) / [Cheat Sheet](https://cheatsheet.haax.fr/passcracking-hashfiles/john_cheatsheet/)
