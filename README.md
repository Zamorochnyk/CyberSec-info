# Pentesting tools (WIP)
📃 **ALL EXTERNAL RESOURCES BELONG TO THEIR RESPECTIVE OWNERS**

🐳 Cli pen-testing tools, packaged in docker images.  
🔨 Use this as a template to build your toolkits.  
♻️ It is meant to be a simple, disposable, "minimal-out-of-the-box" sandbox.  
🔓 It is **not** meant to be secure, stable, "all-in-one" monolith.  

> For more consistent experience - consider to build your images with [KaliLinux](https://hub.docker.com/r/kalilinux/kali-rolling) or [ParrotOs](https://hub.docker.com/r/parrotsec/core).

⚠️ These tools can do real damage.  
Even if you *can* do something, it does not mean that you *should*.  
Be responsible and conscious. ⚠️

<details>

<summary>⚙️ Generic usage</summary>

1. [Intall docker compose](https://docs.docker.com/compose/install/) if needed;
1. Adjust `docker-compose.yml` and installation scripts.
1. Start containers from the project directory: `sudo docker compose up -d`;  
   > (Note: if you are facing slow download speed - try to adjust [reflector](https://wiki.archlinux.org/title/reflector))
1. Put data in the mounted dirs;  
1. Connect with `ssh`: `ssh -p 120 root@localhost` (default);  
1. Open `tmux` and create a few windows/sessions/etc;
1. Connect to VPN: `openvpn /path/to/config`;
1. Start `mitmproxy`;
1. Do some pen-testing. Example:
    - Use `nmap` for scanning;
    - Search for exploiting scripts/write your own;
    - Use `CyberChief` for any misc operations;
    - etc;
    - Install task-specific tool:
      - Arch Linux packages `pacman -S <package_name>`
      - Python packages `pipx install <package_name>`
1. Get data from the mounted dirs;  
1. Remove containers: `"sudo docker compose down"`;  
   > (add `-v` to clean **all** related volumes)
1. [Clean docker data](https://docs.docker.com/config/pruning/) if needed.

</details>

## 🎓 General

This and further paragraphs serve as a small, generic knowledge database.  
> Threat them as a reference book, not serious academic learning material.

For a structured learning path check [roadmap.sh](https://roadmap.sh/roadmaps).  
For additional resources check [Offensive Security Cheatsheet](https://cheatsheet.haax.fr/).  
For additional security knowledge check [OWASP Cheat Sheet Series](https://cheatsheetseries.owasp.org/index.html).  
For additional information sources check [deepdarkCTI](https://github.com/fastfire/deepdarkCTI).  
For additional tools/tricks check [RedTeam-Tools](https://github.com/A-poc/RedTeam-Tools).  

> (Note: here are a lot of `Arch Linux` wiki/man pages, but they are very usable for other Linux distros, just use corresponding packages/directories)

| Topic | Links |
|---|---|
| 🌩️ Quick cheat sheets | [Learn x in y](https://learnxinyminutes.com/) <br> [quickref.me](https://quickref.me/) <br> [devhints.io](https://devhints.io/) <br> [GitHub](https://github.com/search?q=cheatsheet&type=repositories) |
| 💾 Database (Theory) | [Wiki](https://wiki.archlinux.org/title/Category:Database_management_systems) <br> [Models](https://learn.microsoft.com/en-us/azure/architecture/guide/technology-choices/data-store-overview) <br> [Relational](https://www.digitalocean.com/community/tutorials/understanding-relational-databases) <br> [Non-relational](https://learn.microsoft.com/en-us/azure/architecture/data-guide/big-data/non-relational-data) |
| 💾 Database (Cheat Sheet) | [Oracle](https://en.wikibooks.org/wiki/Oracle_Database/SQL_Cheatsheet) <br> [MySql](https://www.mysqltutorial.org/mysql-cheat-sheet.aspx) <br> [PostgreSQL](https://www.postgresqltutorial.com/postgresql-cheat-sheet/) <br> [MongoDB](https://www.mongodb.com/developer/products/mongodb/cheat-sheet/) <br> [Redis](https://developer.redis.com/howtos/quick-start/cheat-sheet/) <br> [SqlLite](https://www.sqlitetutorial.net/sqlite-cheat-sheet/) |
| 📂 Passwords/Exploits/Etc | [All in one](https://github.com/danielmiessler/SecLists/tree/master) <br> [Patterns](https://github.com/mazen160/secrets-patterns-db) <br> [Passwords](https://weakpass.com/) <br> [Exploits](https://github.com/fastfire/deepdarkCTI/blob/main/exploits.md) |
| 📝 Regular expression (regex) | [Docs](https://pubs.opengroup.org/onlinepubs/7908799/xbd/re.html) <br> [Generator](https://regex-generator.olafneumann.org) <br> [Sandbox](https://regexr.com/) <br> [Database](https://ihateregex.io) <br> [Cheat Sheet](https://quickref.me/regex.html) |
| 🌐 Network |[Basics](https://www.geeksforgeeks.org/basics-computer-networking/) <br> [Configuration](https://wiki.archlinux.org/title/Network_configuration) <br> [DNS](https://wiki.archlinux.org/title/Domain_name_resolution) <br> [Proxy](https://wiki.archlinux.org/title/Proxy_server) <br> [WPA](https://wiki.archlinux.org/title/Wpa_supplicant) <br> [Ports](https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers) <br> [Cheat Sheet](https://www.geeksforgeeks.org/computer-network-cheat-sheet/) <br> [Common Linux commands](https://www.geeksforgeeks.org/linux-commands-cheat-sheet/#networking) <br> [Common Windows commands](https://www.geeksforgeeks.org/networking-commands-for-troubleshooting-windows/) |
| 🔒 Cryptography | [Basics](https://www.fortinet.com/resources/cyberglossary/what-is-cryptography) <br> [Advanced](https://wiki.owasp.org/index.php/Guide_to_Cryptography) <br> [SSL/TLS](https://cheatsheetseries.owasp.org/cheatsheets/Transport_Layer_Protection_Cheat_Sheet.html) <br> [Creation](https://gist.github.com/dimosr/317629577c71c376946f8a31a4c2b069) <br> [Wiki](https://hashcat.net/wiki/)  |
| 🥷 Where to practice | [OverTheWire](https://overthewire.org/wargames/)  <br> [TryHackMe](https://tryhackme.com/) <br> [HackTheBox](https://www.hackthebox.com/) <br> [HBH](https://hbh.sh/home) <br> [DefendTheWeb](https://defendtheweb.net/) |
| 🤝 Awesome additional resources | [ired.team](https://www.ired.team/) <br> [tmpout](https://github.com/tmpout/awesome-elf) <br> [PayloadsAllTheThings](https://github.com/swisskyrepo/PayloadsAllTheThings) |

## 🏗️ Infrastructure
### 📗 General
| Topic | Links |
|---|---|
| 📘 Docker | [Docs](https://docs.docker.com/) <br> [Installation](https://docs.docker.com/compose/install/) <br> [Commands](https://docs.docker.com/compose/reference/) <br>  [Compose cheat sheet](https://devhints.io/docker-compose) <br> [Docker cheat sheet](https://quickref.me/docker) <br>  [Cleanups](https://docs.docker.com/config/pruning/) |

### 📗 Scripting
| Topic | Links |
|---|---|
| 📘 Python |[Wiki](https://wiki.archlinux.org/title/python) <br> [Cheat Sheet](https://github.com/gto76/python-cheatsheet) <br> [pipx](https://pypa.github.io/pipx/) <br> [Packages](https://pypi.org/) |
| 📘 Bash | [Wiki](https://wiki.archlinux.org/title/bash) <br> [Manual](https://man.archlinux.org/man/bash.1) <br> [Cheat Sheet](https://quickref.me/bash) |
| 📘 PowerShell |[GitHub](https://github.com/PowerShell/PowerShell) <br> [Docs](https://learn.microsoft.com/en-us/powershell/) <br> [Cheat Sheet](https://www.stationx.net/powershell-cheat-sheet/) |

### 📗 Linux
| Topic | Links |
|---|---|
| 📘 General | [All in one guides](https://linuxjourney.com/) <br> [Administration](https://wiki.archlinux.org/title/Category:System_administration) <br> [Security](https://wiki.archlinux.org/title/Category:Security) <br> [Networking](https://wiki.archlinux.org/title/Category:Networking) <br> [Commands cheat sheet](https://www.geeksforgeeks.org/linux-commands-cheat-sheet/) <br> [Dir cheat sheet](https://www.tecmint.com/linux-directory-structure-and-important-files-paths-explained/) |
| 📘 Arch Linux | [Docs](https://archlinux.org/) <br> [Container](https://hub.docker.com/_/archlinux/) <br> [Packages](https://archlinux.org/packages/) <br> [Wiki](https://wiki.archlinux.org/) <br> [Manuals](https://man.archlinux.org/) |
| 📘 BlackArch Linux | [Docs](https://blackarch.org/) <br> [Guide](https://blackarch.org/guide.html) <br> [Packages](https://blackarch.org/tools.html) <br> [GitHub](https://github.com/BlackArch/blackarch) |

### 📗 Microsoft Windows
| Topic | Links |
|---|---|
| 📘 General | [OS](https://learn.microsoft.com/en-us/windows/) <br> [Active Directory](https://learn.microsoft.com/en-us/troubleshoot/windows-server/identity/active-directory-overview) <br> [Server](https://learn.microsoft.com/en-us/windows-server/) <br> [Commands cheat sheet](https://www.stationx.net/windows-command-line-cheat-sheet/) |

## 🧰 Tools

### Separate

| Tool | Links | Note |
|---|---|---|
| 👨‍🍳 CyberChief | [GitHub](https://github.com/gchq/CyberChef) <br> [Web](https://gchq.github.io/CyberChef/) <br> [Server](https://learn.microsoft.com/en-us/windows-server/) <br> [Container](https://hub.docker.com/r/mpepping/cyberchef/) | To connect - open the browser and type `localhost:8000` (default) |

### 🌱 Core

| Tool | Links | Note |
|---|---|---|
| 📘 Git | [Wiki](https://wiki.archlinux.org/title/git) <br> [Manual](https://man.archlinux.org/man/git.1) <br> [Cheat Sheet](https://quickref.me/git) |
| 📘 Openvpn | [Docs](https://community.openvpn.net/openvpn) <br> [Server](https://wiki.archlinux.org/title/OpenVPN) <br> [Client](https://man.archlinux.org/man/extra/openvpn/openvpn.8.en) |
| 📘 Tmux | [Wiki](https://wiki.archlinux.org/title/tmux) <br> [Manual](https://man.archlinux.org/man/tmux.1) <br> [Cheat Sheet](https://quickref.me/tmux) |
| 📘 Nano | [Wiki](https://wiki.archlinux.org/title/nano) <br> [Manual](https://man.archlinux.org/man/nano.1) <br> [Cheat Sheet](https://www.nano-editor.org/dist/latest/cheatsheet.html) |
| 📘 Openssh | [Wiki](https://wiki.archlinux.org/title/OpenSSH) <br> [Manual](https://man.archlinux.org/man/core/openssh/ssh.1.en) <br> [ssh_config](https://man.archlinux.org/man/ssh_config.5) <br> [Cheat Sheet](https://quickref.me/ssh.html) |
| 📘 Openssl | [Wiki](https://wiki.archlinux.org/title/OpenSSL) <br> [Manual](https://man.archlinux.org/man/openssl.1ssl) <br> [Cheat Sheet](https://cheatography.com/albertx/cheat-sheets/openssl/) |

### 👁️ Intelligence

| Tool | Links | Note |
|---|---|---|
| 📘 Nmap | [Docs](https://nmap.org/docs.html) <br> [Wiki](https://wiki.archlinux.org/title/nmap) <br> [Scripts](https://nmap.org/nsedoc/scripts/) <br> [Manual](https://man.archlinux.org/man/nmap.1) <br> [Vulscan](https://github.com/scipag/vulscan) <br> [Cheat Sheet](https://www.stationx.net/nmap-cheat-sheet/) |
| 📘 Masscan | [Manual](https://man.archlinux.org/man/masscan.8) <br> [Cheat Sheet](https://cheatsheet.haax.fr/network/port-scanning/masscan_cheatsheet/) | ⚠️Unless you are scanning a giant internal network, please, keep those --rates as low as possible, **do not flood public networks**⚠️ |
| 📘 Mitmproxy | [GitHub](https://github.com/mitmproxy/mitmproxy) <br> [Docs](https://docs.mitmproxy.org/stable/) <br> [Cheat Sheet](https://quickref.me/mitmproxy.html) <br> [mitmproxy2swagger](https://github.com/alufers/mitmproxy2swagger) | To connect: set proxy as `localhost:8081` (defaults) |
| 📘 Nuclei | [GitHub](https://github.com/projectdiscovery/nuclei) <br> [Templates](https://github.com/projectdiscovery/nuclei-templates) <br> [Cheat Sheet](https://cheatsheet.haax.fr/web-pentest/tools/nuclei/) |
| 📘 Dalfox | [GiHhub](https://github.com/hahwul/dalfox) <br> [Docs](https://dalfox.hahwul.com/docs/home/) <br> [Cheat Sheet](https://www.blackhatethicalhacking.com/tools/dalfox/) |
| 📘 Katana | [GitHub](https://github.com/projectdiscovery/katana) |
| 📘 Gobuster | [GitHub](https://github.com/OJ/gobuster) <br> [Cheat Sheet](https://3os.org/penetration-testing/cheatsheets/gobuster-cheatsheet/) |

### ⚔️ Exploiting

| Tool | Links | Note |
|---|---|---|
| 📘 Sqlmap | [GitHub](https://github.com/sqlmapproject/sqlmap) <br> [Wiki](https://github.com/sqlmapproject/sqlmap/wiki/Features) <br> [Manual](https://manpages.org/sqlmap) <br> [Cheat Sheet](https://cdn.comparitech.com/wp-content/uploads/2021/07/sqlmap-Cheat-Sheet.pdf) |
| 📘 Hydra | [Manual](https://man.archlinux.org/man/extra/hydra/hydra.1.en) <br> [GitHub](https://github.com/vanhauser-thc/thc-hydra) <br> [Cheat Sheet](https://haxez.org/wp-content/uploads/2022/06/HaXeZ_Hydra_Cheat_Sheet-1.pdf) |
| 📘 Commix | [GitHub](https://github.com/commixproject/commix) <br> [Docs](https://github.com/commixproject/commix/wiki/Usage) |
| 📘 Hashcat | [Docs](https://hashcat.net/hashcat/) <br> [GitHub](https://github.com/hashcat/hashcat) <br> [Cheat Sheet](https://cheatsheet.haax.fr/passcracking-hashfiles/hashcat_cheatsheet/) |
| 📘 John the Ripper | [GitHub](https://github.com/openwall/john) <br> [Docs](https://openwall.info/wiki/john) <br> [Cheat Sheet](https://cheatsheet.haax.fr/passcracking-hashfiles/john_cheatsheet/) |
