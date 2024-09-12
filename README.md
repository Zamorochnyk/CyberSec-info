# Pentesting tools (WIP)
📃 **ALL EXTERNAL RESOURCES BELONG TO THEIR RESPECTIVE OWNERS**

🐳 Cli pen-testing tools, packaged in docker images.  
🔨 Use this as a template to build your toolkits.  
♻️ It is meant to be a simple, disposable, "minimal-out-of-the-box" sandbox.  
🔓 It is **not** meant to be secure, stable, "all-in-one" monolith.  

⚠️⚠️⚠️  
These tools/knowledge can do real damage.  
Even if you *can* do something, it does not mean that you *should*.  
Be responsible and conscious.  
⚠️⚠️⚠️

<details>

<summary>⚙️ Generic usage</summary>

1. [Install docker compose](https://docs.docker.com/compose/install/) if needed;
1. Adjust `docker-compose.yml` and installation scripts.
1. Start containers from the project directory: `sudo docker compose up -d`;  
1. Connect with `sudo docker attach pentest` (compose default);  
1. Anonymization (check corresponding topics):
   - Connect to VPN: `openvpn /path/to/config`;
   - Start `tor` with `tor --runasdaemon 1`;
   - Use `proxychains` before every command;
1. Do some pen-testing. Example:
    - Use `nmap/nuclei/etc` for scanning;
    - Search for exploiting scripts/write your own;
    - Use `CyberChief` for any misc operations;
    - Use `mitmproxy` to capture requests/respones (check corresponding topic at tools) <br> Example (default compose):
      - http_proxy=http://mitmproxy:8080/ curl http://example.com/;
      - https_proxy=http://mitmproxy:8080/ curl -k https://example.com/;
      - Uncomment coresponding lines in `core.sh`/add them manually to always use `mitmproxy`;
    - Move data between host and container (default dir `transf`);
    - Install task-specific tool:
      - Void packages `xbps-install <package_name>`;
      - Python packages `pipx install <package_name>`;
      - Get latest bin from GitHub `github_loader.sh <user/repo> <dir to install>`;
    - etc;
1. Remove containers: `"sudo docker compose down"`;  
   > (add `-v` to clean related volumes)
1. [Clean docker data](https://docs.docker.com/config/pruning/) if needed.

</details>

<details>

<summary>❓ FAQ </summary>

**Q: Why?**  
A: Because I needed a portable place to store and systematize Linux/network/cybersec/etc knowledge and tools.  

**Q: Why not Kali/Blackarch/Parrot/etc?**  
A: Because packages will be broken/outdated/missing/etc anyway. So it makes sense to use a decent base and build only whatever you need.  
**Less is more.**

**Q: What to do if there is no tool or packages are broken?**  
A: There are several ways to solve it:
- Fix/add by yourself or notify maintainer;
- Install from another external repo (Example: `pipx`);
- Grab and install binary from GitHub/other sources (check installation scripts for example);
- Compile or do some misc installation manually.

**Q: How to fix the changed key error?**  
A: Use `ssh-keygen -R [localhost]:120 -f ~/.ssh/known_hosts` (defaults) or remove the host entry manually.

**Q: How to use on not amd64 architecture?**  
A: Change the Dockerfile to grab the corresponding Docker image and change the installation scripts to grab the corresponding binaries/packages (if any)

</details>


## 🎓 General

This and further paragraphs serve as a small, generic knowledge database.  
Threat them as a reference book, not serious academic learning material.

> (Note: here are a lot of `Arch Linux` wiki/man pages, but they are very usable for other Linux distros, just use corresponding packages/directories)

| Topic | Links |
|---|---|
| 🌩️ General cheat sheets | [Learn x in y](https://learnxinyminutes.com/) <br> [quickref.me](https://quickref.me/) <br> [devhints.io](https://devhints.io/) <br> [roadmap.sh](https://roadmap.sh/roadmaps) <br> [Search engines](https://en.wikipedia.org/wiki/List_of_search_engines) <br> [OWASP Cheat Sheet Series](https://cheatsheetseries.owasp.org/index.html) <br> [CyberSec Resources](https://github.com/edoardottt/awesome-hacker-search-engines) |
| 📂 Passwords/Exploits/Etc | [SecLists](https://github.com/danielmiessler/SecLists/tree/master) <br> [Patterns](https://github.com/mazen160/secrets-patterns-db) <br> [Passwords](https://weakpass.com/) <br> [Vulnerabilities](https://github.com/edoardottt/awesome-hacker-search-engines#vulnerabilities) <br> [Exploits](https://github.com/edoardottt/awesome-hacker-search-engines#exploits) |
| 📝 Regular expression (regex) | [Docs](https://pubs.opengroup.org/onlinepubs/7908799/xbd/re.html) <br> [Generator](https://regex-generator.olafneumann.org) <br> [Sandbox](https://regexr.com/) <br> [Database](https://ihateregex.io) <br> [Cheat Sheet](https://quickref.me/regex.html) |
| 🌐 Network |[Basics](https://www.geeksforgeeks.org/basics-computer-networking/) <br> [Configuration](https://wiki.archlinux.org/title/Network_configuration) <br> [DNS](https://wiki.archlinux.org/title/Domain_name_resolution) <br> [Proxy](https://wiki.archlinux.org/title/Proxy_server) <br> [WPA](https://wiki.archlinux.org/title/Wpa_supplicant) <br> [Ports](https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers) <br> [Cheat Sheet](https://www.geeksforgeeks.org/computer-network-cheat-sheet/) <br> [Common Linux commands](https://www.geeksforgeeks.org/linux-commands-cheat-sheet/#networking) <br> [Common Windows commands](https://www.geeksforgeeks.org/networking-commands-for-troubleshooting-windows/) <br> [Autonomous Internet System](https://en.wikipedia.org/wiki/Autonomous_system_(Internet)) <br> [RIPEStat](https://stat.ripe.net/docs/02.data-api/) |
| 🔒 Cryptography | [Basics](https://www.fortinet.com/resources/cyberglossary/what-is-cryptography) <br> [Advanced](https://wiki.owasp.org/index.php/Guide_to_Cryptography) <br> [SSL/TLS](https://cheatsheetseries.owasp.org/cheatsheets/Transport_Layer_Protection_Cheat_Sheet.html) |
| 👻 Anonymization | [Tor](https://www.torproject.org/) <br> [I2P](https://geti2p.net/en/) <br> [proxychains](https://github.com/haad/proxychains) |

💾 Database
| Topic | Links |
|---|---|
| 📘 Theory | [Wiki](https://wiki.archlinux.org/title/Category:Database_management_systems) <br> [Models](https://learn.microsoft.com/en-us/azure/architecture/guide/technology-choices/data-store-overview) <br> [Relational](https://www.digitalocean.com/community/tutorials/understanding-relational-databases) <br> [Non-relational](https://learn.microsoft.com/en-us/azure/architecture/data-guide/big-data/non-relational-data) |
| 📘 Cheat Sheet | [Oracle](https://en.wikibooks.org/wiki/Oracle_Database/SQL_Cheatsheet) <br> [MySql](https://www.mysqltutorial.org/mysql-cheat-sheet.aspx) <br> [PostgreSQL](https://www.postgresqltutorial.com/postgresql-cheat-sheet/) <br> [MongoDB](https://www.mongodb.com/developer/products/mongodb/cheat-sheet/) <br> [Redis](https://developer.redis.com/howtos/quick-start/cheat-sheet/) <br> [SqlLite](https://www.sqlitetutorial.net/sqlite-cheat-sheet/) |

## ⚔️ Attack
| Topic | Links |
|---|---|
| 📘 Attack surface | [List of resources](https://github.com/edoardottt/awesome-hacker-search-engines#attack-surface) <br> [Servers](https://github.com/edoardottt/awesome-hacker-search-engines#servers) |
| 📘 Additional knowledge | [HackTrics](https://book.hacktricks.xyz/welcome/readme) <br> [Offensive Security Cheatsheet](https://cheatsheet.haax.fr/) <br> [deepdarkCTI](https://github.com/fastfire/deepdarkCTI) <br> [ired.team](https://www.ired.team/) <br> [tmpout](https://github.com/tmpout/awesome-elf)
| 📘 Additional tools | [RedTeam-Tools](https://github.com/A-poc/RedTeam-Tools) |
| 🥷 Where to practice | [OverTheWire](https://overthewire.org/wargames/)  <br> [TryHackMe](https://tryhackme.com/) <br> [HackTheBox](https://www.hackthebox.com/) <br> [HBH](https://hbh.sh/home) <br> [DefendTheWeb](https://defendtheweb.net/) |

## 🛡️ Defend

| Topic | Links |
|---|---|
| 📘 Threat Intelligence | [List of resources](https://github.com/edoardottt/awesome-hacker-search-engines#threat-intelligence) <br> [Servers](https://github.com/edoardottt/awesome-hacker-search-engines#servers) |
| 📘 Additional knowledge | [awesome-soc](https://github.com/cyb3rxp/awesome-soc) <br> [facyber.me](https://facyber.me/) |
| 📘 Additional tools | [BlueTeam-Tools](https://github.com/A-poc/BlueTeam-Tools) |
| 🥷 Where to practice | [LastDefend](https://letsdefend.io/) <br> [CyberDefenders](https://cyberdefenders.org/) <br> [BlueTeamLabs](https://blueteamlabs.online/) |

## 🏗️ Infrastructure
### 📗 General
| Topic | Links |
|---|---|
| 📘 Docker | [Docs](https://docs.docker.com/) <br> [Installation](https://docs.docker.com/compose/install/) <br> [Commands](https://docs.docker.com/compose/reference/) <br>  [Compose cheat sheet](https://devhints.io/docker-compose) <br> [Docker cheat sheet](https://quickref.me/docker) <br>  [Cleanups](https://docs.docker.com/config/pruning/) |

### 📗 Scripting
| Topic | Links |
|---|---|
| 📘 Python |[Wiki](https://wiki.archlinux.org/title/python) <br> [Cheat Sheet](https://github.com/gto76/python-cheatsheet) <br> [pipx](https://pypa.github.io/pipx/) <br> [Packages](https://pypi.org/) |
| 📘 Bash | [Wiki](https://wiki.archlinux.org/title/bash) <br> [Manual](https://man.archlinux.org/man/bash.1) <br> [Cheat Sheet](https://quickref.me/bash) <br> [Command explanation](https://explainshell.com/) |
| 📘 PowerShell |[GitHub](https://github.com/PowerShell/PowerShell) <br> [Docs](https://learn.microsoft.com/en-us/powershell/) <br> [Cheat Sheet](https://www.stationx.net/powershell-cheat-sheet/) |

### 📗 Linux
| Topic | Links |
|---|---|
| 📘 General | [All in one guides](https://linuxjourney.com/) <br> [Administration](https://wiki.archlinux.org/title/Category:System_administration) <br> [Security](https://wiki.archlinux.org/title/Category:Security) <br> [Networking](https://wiki.archlinux.org/title/Category:Networking) <br> [Commands cheat sheet](https://www.geeksforgeeks.org/linux-commands-cheat-sheet/) <br> [Filesystem Hierarchy](https://en.m.wikipedia.org/wiki/Filesystem_Hierarchy_Standard) |
| 📘 Void | [Docs](https://docs.voidlinux.org/) <br> [Container](https://voidlinux.org/download/#containers) <br> [Packages](https://voidlinux.org/download/#containers) |

### 📗 Microsoft Windows
| Topic | Links |
|---|---|
| 📘 General | [OS](https://learn.microsoft.com/en-us/windows/) <br> [Active Directory](https://learn.microsoft.com/en-us/troubleshoot/windows-server/identity/active-directory-overview) <br> [Server](https://learn.microsoft.com/en-us/windows-server/) <br> [Commands cheat sheet](https://www.stationx.net/windows-command-line-cheat-sheet/) |

## 🧰 Used tools

### 👽 External (Separate container)

| Tool | Links | Note |
|---|---|---|
| 👨‍🍳 CyberChief | [GitHub](https://github.com/gchq/CyberChef) <br> [Web](https://gchq.github.io/CyberChef/) <br> [Container](https://hub.docker.com/r/mpepping/cyberchef/) | To connect - open the browser and type `localhost:8000` (compose defaults) |
| 📘 mitmproxy | [GitHub](https://github.com/mitmproxy/mitmproxy) <br> [Docs](https://docs.mitmproxy.org/stable/) <br> [Cheat Sheet](https://quickref.me/mitmproxy.html) <br> [mitmproxy2swagger](https://github.com/alufers/mitmproxy2swagger) | Connect to proxy: set proxy as `localhost:8082` (compose defaults) <br> Connect for web interface: open in browser `localhost:8083` (compose defaults)  <br> After the first run certificate [will be created](https://docs.mitmproxy.org/stable/concepts-certificates/) in `mitmproxy` folder. Import them to the external client. |

### 🌱 Core

| Tool | Links | Note |
|---|---|---|
| 📘 git | [Wiki](https://wiki.archlinux.org/title/git) <br> [Manual](https://man.archlinux.org/man/git.1) <br> [Cheat Sheet](https://quickref.me/git) |
| 📘 openvpn | [Docs](https://community.openvpn.net/openvpn) <br> [Server](https://wiki.archlinux.org/title/OpenVPN) <br> [Client](https://man.archlinux.org/man/extra/openvpn/openvpn.8.en) |
| 📘 nano | [Wiki](https://wiki.archlinux.org/title/nano) <br> [Manual](https://man.archlinux.org/man/nano.1) <br> [Cheat Sheet](https://www.nano-editor.org/dist/latest/cheatsheet.html) |
| 📘 drill | [Docs](https://www.nlnetlabs.nl/projects/ldns/about/) <br> [Manual](https://man.archlinux.org/man/drill.1) |
| 📘 curl | [Wiki](https://wiki.archlinux.org/title/CURL) <br> [Manual](https://man.archlinux.org/man/curl.1) <br> [Cheat Sheet](https://quickref.me/curl) |

### 👁️ Intelligence

| Tool | Links | Note |
|---|---|---|
| 📘 nmap | [Docs](https://nmap.org/docs.html) <br> [Wiki](https://wiki.archlinux.org/title/nmap) <br> [Scripts](https://nmap.org/nsedoc/scripts/) <br> [Manual](https://man.archlinux.org/man/nmap.1) <br> [Vulscan](https://github.com/scipag/vulscan) <br> [Cheat Sheet](https://www.stationx.net/nmap-cheat-sheet/) | Very powerful, so please, carefully read documentation and description of the scripts |
| 📘 masscan | [Manual](https://man.archlinux.org/man/masscan.8) <br> [Cheat Sheet](https://cheatsheet.haax.fr/network/port-scanning/masscan_cheatsheet/) | ⚠️Unless you are scanning a giant internal network, please, keep those --rate as low as possible (10000 at max), **do not flood/melt network infrastructure**⚠️ |
| 📘 nuclei | [GitHub](https://github.com/projectdiscovery/nuclei) <br> [Templates](https://github.com/projectdiscovery/nuclei-templates) <br> [Cheat Sheet](https://cheatsheet.haax.fr/web-pentest/tools/nuclei/) |
| 📘 dalfox | [GiHhub](https://github.com/hahwul/dalfox) <br> [Docs](https://dalfox.hahwul.com/docs/home/) <br> [Cheat Sheet](https://www.blackhatethicalhacking.com/tools/dalfox/) |
| 📘 katana | [GitHub](https://github.com/projectdiscovery/katana) | Pairs well with `mitmproxy2swagger` |
| 📘 gobuster | [GitHub](https://github.com/OJ/gobuster) <br> [Cheat Sheet](https://3os.org/penetration-testing/cheatsheets/gobuster-cheatsheet/) |

### ⚔️ Exploiting

| Tool | Links | Note |
|---|---|---|
| 📘 sqlmap | [GitHub](https://github.com/sqlmapproject/sqlmap) <br> [Wiki](https://github.com/sqlmapproject/sqlmap/wiki/Features) <br> [Manual](https://manpages.org/sqlmap) <br> [Cheat Sheet](https://cdn.comparitech.com/wp-content/uploads/2021/07/sqlmap-Cheat-Sheet.pdf) |
| 📘 hydra | [Manual](https://man.archlinux.org/man/extra/hydra/hydra.1.en) <br> [GitHub](https://github.com/vanhauser-thc/thc-hydra) <br> [Cheat Sheet](https://haxez.org/wp-content/uploads/2022/06/HaXeZ_Hydra_Cheat_Sheet-1.pdf) |
| 📘 commix | [GitHub](https://github.com/commixproject/commix) <br> [Docs](https://github.com/commixproject/commix/wiki/Usage) |
| 📘 hashcat | [GitHub](https://github.com/hashcat/hashcat) <br> [Cheat Sheet](https://cheatsheet.haax.fr/passcracking-hashfiles/hashcat_cheatsheet/) <br> [Wiki](https://hashcat.net/wiki/) |
| 📘 john the ripper | [GitHub](https://github.com/openwall/john) <br> [Docs](https://openwall.info/wiki/john) <br> [Cheat Sheet](https://cheatsheet.haax.fr/passcracking-hashfiles/john_cheatsheet/) |
