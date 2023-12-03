# Pentesting tools (WIP)
📜 <b>ALL EXTERNAL RESOURCES BELONG TO THEIR RESPECTIVE OWNERS</b>

🐳 Cli pentesting tools, packaged in docker images. <br>
🔨 Use this as a template to build your own toolkits. <br>
♻️ It is meant to be simple, disposable, "minimal-out-of-the-box" tool. <br>
🔓 It is <b>not</b> meant to be secure, stable, "all-in-one" tool. <br>

> For more consistent experience - consider to build your own images with [KaliLinux](https://hub.docker.com/r/kalilinux/kali-rolling) or [ParrotOs](https://hub.docker.com/r/parrotsec/core). <br>

🚩 <br>
<b>Warning: this tools can do real damage.<br>
Even if you <i>can</i> do something, it does not mean that you <i>should</i>. <br>
Be responsible and conscious.</b> <br>
🚩

<details>
<summary>🌊<b>Generic usage example</b></summary>

1. Start containers from the project directory: `"sudo docker compose up -d"`
2. Open [CyberChief](#-cyberchief)
3. Put data in the mounted directory
4. Connect with [ssh](#-openssh): `"ssh -p 120(mapped port) root@localhost"`
5. Open [tmux](#-tmux)
6. Connect to [vpn](#-openvpn): `"openvpn /path/to/config"`
7. Start [proxy](#-mitmproxy)
8. <b>Do some pentesting</b>
    - Install task-specific tool:
      - [arch](#-arch-linux) packages `"pacman -S <package_name>"`
      - [python](#-python) packages `"pipx install <pacakge_name>"`
9. Exit from a container (by typing `"exit"` or by killing the connection/terminal)
10. Get data from the mounted directory
11. Remove containers: `"sudo docker compose down"`( add -v to clean <b>all</b> related volumes)
12. [Clean docker data](#-docker) if needed

</details>

## 🎖️ General

🎓 This and further paragraphs serve as a small, generic knowledge database. <br> 
Threat them as a reference book, not serious academic learning material.

Quick references for programming languages and other tools:
- [learn x in y](https://learnxinyminutes.com/)
- [QuickRef](https://quickref.me/)

### 💾 Databases

[SecLists](https://github.com/danielmiessler/SecLists/tree/master) - giant database of passwords/hashes/etc <br>(install what you need)

<details>
<summary>Exploits</summary>

- [ExploitDB](https://www.exploit-db.com/)
- [Rapid7](https://www.rapid7.com/db/)
- [CVE](https://www.cve.org/)
- [0day](https://0day.today/)
- [cxsecurity](https://cxsecurity.com/)

</details>

### 📋 Regular expression

- [Docs](https://pubs.opengroup.org/onlinepubs/7908799/xbd/re.html)
- [generator](https://regex-generator.olafneumann.org)
- [patterns&sandbox](https://regexr.com/)
- [cheat sheet](https://quickref.me/regex.html)

### 🌐 Network
<details>
<summary>Manuals</summary>

- [network configuration](https://wiki.archlinux.org/title/Network_configuration)
- [dns](https://wiki.archlinux.org/title/Domain_name_resolution)
- [proxy](https://wiki.archlinux.org/title/Proxy_server)
- [wpa](https://wiki.archlinux.org/title/Wpa_supplicant)
- [ports](https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers)
- [network cheat sheet](https://www.geeksforgeeks.org/computer-network-cheat-sheet/)

</details>

<details>
<summary>Tools</summary>

- [ping](https://man.archlinux.org/man/ping.8.en)
- [traceroute](https://man.archlinux.org/man/core/traceroute/traceroute.8.en)
- [netcat](https://man.archlinux.org/man/extra/openbsd-netcat/nc.1.en)
- [whois](https://man.archlinux.org/man/whois.1)
- [dig](https://man.archlinux.org/man/dig.1)
- [host](https://man.archlinux.org/man/host.1)
- [nslookup](https://man.archlinux.org/man/extra/bind/nslookup.1.en)

</details>


### 🔒 Cryptography

- [basic info](https://www.fortinet.com/resources/cyberglossary/what-is-cryptography)
- [theory cheat sheet](https://gist.github.com/dimosr/317629577c71c376946f8a31a4c2b069)
- [commons cheat sheet](https://cheatography.com/ipsec/cheat-sheets/cryptography/)
- [wiki](https://hashcat.net/wiki/)

### 👩‍💻 Where to practice

- [OverTheWire](https://overthewire.org/wargames/)
- [TryHackMe](https://tryhackme.com/)
- [HackTheBox](https://www.hackthebox.com/)
- [HBH](https://hbh.sh/home)
- [DefendTheWeb](https://defendtheweb.net/)

### 🤝 More of awesome practical tools and info

- [Offensive Security Cheatsheet](https://cheatsheet.haax.fr/)
- [Pentest-Cheat-Sheets](https://github.com/Kitsun3Sec/Pentest-Cheat-Sheets)
- [ired.team](https://www.ired.team/)
- [RedTeam-Tools](https://github.com/A-poc/RedTeam-Tools)

## 🏗️ Infrastructure

### 📙 Docker
Docker is a set of platform-as-a-service (PaaS) products that use OS-level virtualization to deliver software in packages called containers. <br>

>Note: Please, use docker compose and do periodical [cleanups](https://docs.docker.com/config/pruning/). <br>

<details>
<summary>References</summary>

- [Docs](https://docs.docker.com/)
- [Docker compose installation](https://docs.docker.com/compose/install/)
- [Docker compose cli](https://docs.docker.com/compose/reference/)
- [cheat sheet](https://devhints.io/docker-compose)

</details>

### 📙 Bash
Bash is a sh-compatible command language interpreter that executes commands read from the standard input or a file.

<details>
<summary>References</summary>

- [wiki](https://wiki.archlinux.org/title/bash)
- [man](https://man.archlinux.org/man/bash.1)
- [cheat sheet](https://quickref.me/bash)

</details>

### 📙 Linux

Linux is a family of open-source Unix-like operating systems based on the Linux kernel.

<details>
<summary>References</summary>

- [Сommands cheat sheet](https://www.geeksforgeeks.org/linux-commands-cheat-sheet/)
- [Docs](https://www.linux.org/)

</details>

### 📙 Arch Linux

Arch Linux is minimal, an independently developed, x86-64 general-purpose Linux distribution that strives to provide the latest stable versions of most software by following a rolling-release model.<br>

<details>
<summary>References</summary>

- [Arch Linux](https://archlinux.org/)
- [Docker image](https://hub.docker.com/_/archlinux/)
- [Packages](https://archlinux.org/packages/)
- [Wiki](https://wiki.archlinux.org/)

</details>

### 📙 BlackArch

BlackArch is a penetration testing distribution based on Arch Linux that provides a large number of security tools.

<details>
<summary>References</summary>

- [BlackArch Linux](https://blackarch.org/)
- [Guide](https://blackarch.org/guide.html)
- [Packages](https://blackarch.org/tools.html)

</details>

### 📙 PowerShell
PowerShell is a task automation and configuration management program from Microsoft, consisting of a command-line shell and the associated scripting language.

<details>
<summary>References</summary>

- [github](https://github.com/PowerShell/PowerShell)
- [docs](https://learn.microsoft.com/en-us/powershell/)
- [cheat sheet](https://www.stationx.net/powershell-cheat-sheet/)

</details>

### 📙 Microsoft Windows

Microsoft Windows is a group of several proprietary graphical operating system families developed and marketed by Microsoft.

<details>
<summary>References</summary>

- [OS docs](https://learn.microsoft.com/en-us/windows/)
- [Active Directory docs](https://learn.microsoft.com/en-us/troubleshoot/windows-server/identity/active-directory-overview)
- [Server docs](https://learn.microsoft.com/en-us/windows-server/)
- [cheat sheet](https://www.stationx.net/windows-command-line-cheat-sheet/)

</details>

## 🧰 Tools

### 🧑‍🍳 CyberChief

CyberChef is a simple, intuitive web app for carrying out all manner of "cyber" operations within a web browser. 
For security reasons, please, use the local container version. <br>
To connect - open the browser and type `localhost:8000(mapped port)`

<details>
<summary>References</summary>

- [Github](https://github.com/gchq/CyberChef)
- [Web version](https://gchq.github.io/CyberChef/)
- [Docker image](https://hub.docker.com/r/mpepping/cyberchef/)

</details>

### 🌱 Core

Essential tools.

#### 📙 Git

Git is a fast, scalable, distributed revision control system with an unusually rich command set that provides both high-level operations and full access to internals.

<details>
<summary>References</summary>

- [wiki](https://wiki.archlinux.org/title/git)
- [man](https://man.archlinux.org/man/git.1)
- [cheat sheet](https://education.github.com/git-cheat-sheet-education.pdf)

</details>

#### 📙 Curl

Curl is a tool for transferring data from or to a server using URLs.
<details>
<summary>References</summary>

- [wiki](https://wiki.archlinux.org/title/CURL)
- [man](https://man.archlinux.org/man/curl.1)
- [cheat sheet](https://devhints.io/curl)

</details>

#### 📙 Python

Python is a high-level, general-purpose programming language.
>Note: To install/uninstall python-specific apps - use [pipx](https://pypa.github.io/pipx/)

<details>
<summary>References</summary>

- [wiki](https://wiki.archlinux.org/title/python)
- [cheat sheet](https://github.com/gto76/python-cheatsheet)

</details>

#### 📙 Openvpn
OpenVPN is a virtual private network (VPN) system that implements techniques to create secure point-to-point or site-to-site connections in routed or bridged configurations and remote access facilities. It implements both client and server applications. 
<details>
<summary>References</summary>

- [docs](https://community.openvpn.net/openvpn)
- [server](https://wiki.archlinux.org/title/OpenVPN)
- [client](https://man.archlinux.org/man/extra/openvpn/openvpn.8.en)

</details>

#### 📙 Tmux

Tmux is a terminal multiplexer: it enables a number of terminals to be created, accessed, and controlled from a single screen. Tmux may be detached from a screen and continue running in the background, then later reattached.
<details>
<summary>References</summary>

- [wiki](https://wiki.archlinux.org/title/tmux)
- [man](https://man.archlinux.org/man/tmux.1)
- [cheat sheet](https://tmuxcheatsheet.com/)
</details>

#### 📙 Nano

GNU nano (or nano) is a text editor which aims to introduce a simple interface and intuitive command options to console-based text editing. 

<details>
<summary>References</summary>

- [wiki](https://wiki.archlinux.org/title/nano)
- [man](https://man.archlinux.org/man/nano.1)
- [cheat sheet](https://www.nano-editor.org/dist/latest/cheatsheet.html)

</details>

#### 📙 Openssh

OpenSSH (OpenBSD Secure Shell) is a set of computer programs providing encrypted communication sessions over a computer network using the Secure Shell (SSH) protocol.

<details>
<summary>References</summary>

- [wiki](https://wiki.archlinux.org/title/OpenSSH)
- [man](https://man.archlinux.org/man/core/openssh/ssh.1.en)
- [ssh_config](https://man.archlinux.org/man/ssh_config.5)
- [cheat sheet](https://quickref.me/ssh.html)

</details>

#### 📙 Openssl

OpenSSL is an open-source implementation of the SSL and TLS protocols, designed to be as flexible as possible.

<details>
<summary>References</summary>

- [wiki](https://wiki.archlinux.org/title/OpenSSL)
- [man](https://man.archlinux.org/man/openssl.1ssl)
- [cheat sheet](https://cheatography.com/albertx/cheat-sheets/openssl/)

</details>

### 👁️ Scanners

#### 📙 Nmap

Nmap (“Network Mapper”) is an open-source tool for network exploration and security auditing.

<details>
<summary>References</summary>

- [docs](https://nmap.org/docs.html)
- [wiki](https://wiki.archlinux.org/title/nmap)
- [scripts](https://nmap.org/nsedoc/scripts/)
- [man](https://man.archlinux.org/man/nmap.1)
- [vulscan](https://github.com/scipag/vulscan)
- [cheat sheet](https://www.stationx.net/nmap-cheat-sheet/)

</details>

#### 📙 Masscan

Masscan is an Internet-scale port scanner, useful for large-scale surveys of the Internet, or of internal networks.

>🚩 Warning: Unless you are scanning a giant internal network, please, keep those --rates at ~1000-10000, <b>do not flood public networks</b>. <br>
>Keep it sane.

<details>
<summary>References</summary>

- [man](https://man.archlinux.org/man/masscan.8)
- [cheat sheet](https://cheatsheet.haax.fr/network/port-scanning/masscan_cheatsheet/)

</details>

#### 📙 Mitmproxy
Mitmproxy is an interactive, SSL/TLS-capable intercepting proxy with a console interface for HTTP/1, HTTP/2, and WebSockets.

Intercepting proxy can be used with any client that allows proxy. <br>
To connect: set proxy as `localhost:<insert mapped port from docker-compose>` (search instructions for your browser/tool) <br>
Also can be used as the gateway to the internal docker network/vpn.<br>
Commons:
- start with `--ssl-insecure` to ignore certificate verification;
- After the first run certificate will be created in `~/.mitmproxy`. Import them to the external client (search instructions for your browser/tool) <br>
check [concepts-certificates](https://docs.mitmproxy.org/stable/concepts-certificates/) for additional info.
- If you want to use BurpSuite with this - use `Burp -> Settings -> Network -> Connections -> Add proxy`. Boom, now you have the best of both worlds.
- Use (mitmproxy2swagger)[https://github.com/alufers/mitmproxy2swagger] to build api scheeme. Pairs well with [katana](#-katana)

<details>
<summary>References</summary>

- [github](https://github.com/mitmproxy/mitmproxy)
- [docs](https://docs.mitmproxy.org/stable/)
- [cheat sheet](https://quickref.me/mitmproxy.html)

</details>

#### 📙 Nuclei

Nuclei is used to send requests across targets based on a template, leading to zero false positives and providing fast scanning on a large number of hosts. 

<details>
<summary>References</summary>

- [github](https://github.com/projectdiscovery/nuclei)
- [templates](https://github.com/projectdiscovery/nuclei-templates)
- [cheat sheet](https://cheatsheet.haax.fr/web-pentest/tools/nuclei/)

</details>

#### 📙 Wapiti

Wapiti allows you to audit the security of your web applications.
It performs "black-box" scans, i.e. it does not study the source code of the application but will scans the webpages of the deployed webapp, looking for scripts and forms where it can inject data. 

<details>
<summary>References</summary>

- [github](https://github.com/wapiti-scanner/wapiti)
- [man](https://manpages.org/wapiti)

</details>

#### 📙 Dalfox

DalFox is a powerful open-source tool that focuses on automation, making it ideal for quickly scanning for XSS flaws and analyzing parameters. Its advanced testing engine and niche features are designed to streamline the process of detecting and verifying vulnerabilities.

<details>
<summary>References</summary>

- [github](https://github.com/hahwul/dalfox)
- [docs](https://dalfox.hahwul.com/docs/home/)
- [cheat sheet](https://www.blackhatethicalhacking.com/tools/dalfox/)

</details>

#### 📙 Katana

A next-generation crawling and spidering framework. 

<details>
<summary>References</summary>

- [github](https://github.com/projectdiscovery/katana)

</details>

#### 📙 Gobuster

Directory/File, DNS and VHost busting tool written in Go 

<details>
<summary>References</summary>

- [github](https://github.com/OJ/gobuster)
- [cheat sheet](https://3os.org/penetration-testing/cheatsheets/gobuster-cheatsheet/)

</details>

### 🗡️ Exploiters

#### 📙 Sqlmap

Sqlmap is an open source penetration testing tool that automates the process of detecting and exploiting SQL injection flaws and taking over of database servers.

<details>
<summary>References</summary>

- [github](https://github.com/sqlmapproject/sqlmap)
- [wiki](https://github.com/sqlmapproject/sqlmap/wiki/Features)
- [man](https://manpages.org/sqlmap)
- [cheat sheet](https://cdn.comparitech.com/wp-content/uploads/2021/07/sqlmap-Cheat-Sheet.pdf)

</details>

#### 📙 Metasploit 

The Metasploit Project is a computer security project that provides information about security vulnerabilities and aids in penetration testing and IDS signature development.

<details>
<summary>References</summary>

- [wiki](https://wiki.archlinux.org/title/Metasploit_Framework)
- [github](https://github.com/rapid7/metasploit-framework)
- [docs](https://docs.metasploit.com/)

</details>

#### 📙 Hydra

Hydra is a parallelized login cracker which supports numerous protocols to attack. New modules are easy to add, beside that, it is flexible and very fast.

<details>
<summary>References</summary>

- [man](https://man.archlinux.org/man/extra/hydra/hydra.1.en)
- [github](https://github.com/vanhauser-thc/thc-hydra)
- [cheat sheet](https://haxez.org/wp-content/uploads/2022/06/HaXeZ_Hydra_Cheat_Sheet-1.pdf)

</details>

#### 📙 Commix

Commix  is an open source penetration testing tool, that automates the detection and exploitation of command injection vulnerabilities.

<details>
<summary>References</summary>

- [github](https://github.com/commixproject/commix)
- [docs](https://github.com/commixproject/commix/wiki/Usage)

</details>

#### 📙 Hashcat

Hashcat is the world's fastest and most advanced password recovery utility, supporting five unique modes of attack for over 300 highly-optimized hashing algorithms. 

<details>
<summary>References</summary>

- [docs](https://hashcat.net/hashcat/)
- [github](https://github.com/hashcat/hashcat)
- [cheat sheet](https://cheatsheet.haax.fr/passcracking-hashfiles/hashcat_cheatsheet/)

</details>

#### 📙 John the ripper

John the Ripper is an Open Source password security auditing and password recovery tool available for many operating systems.

<details>
<summary>References</summary>

- [github](https://github.com/openwall/john)
- [docs](https://openwall.info/wiki/john)
- [cheat sheet](https://cheatsheet.haax.fr/passcracking-hashfiles/john_cheatsheet/)

</details>
