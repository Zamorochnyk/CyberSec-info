# Pentesting tools (WIP)
⚠️ **ALL EXTERNAL RESOURCES BELONG TO THEIR RESPECTIVE OWNERS**  
\==================================================================================

🐳 Cli pen-testing tools, packaged in docker images.  
🔨 Use this as a template to build your toolkits.  
♻️ It is meant to be a simple, disposable, "minimal-out-of-the-box" sandbox.  
🔓 It is **not** meant to be secure, stable, "all-in-one" monolith.  

Based on [Void Linux container](https://voidlinux.org/download/#containers)

\==================================================================================

⚠️⚠️⚠️  
These tools/knowledge can do real damage.  
Even if you *can* do something, it does not mean that you *should*.  
Be responsible and conscious.  
⚠️⚠️⚠️

\==================================================================================


## ⚙️ Generic usage
1. [Install docker compose](https://docs.docker.com/compose/install/) if needed;
1. Adjust `docker-compose.yml` and installation scripts.
1. Start containers from the project directory: `sudo docker compose up -d`;  
1. Connect with `sudo docker attach pentest` (compose default);  
1. Anonymization (check corresponding topics):
   - Connect to VPN: `openvpn /path/to/config`;
   - Use setup proxies in the end of `/etc/proxychains.conf` and use `proxychains` before every command  
   or use `anon` alias. Default proxy is local `tor` container.
1. Do some pen-testing. Example:
    - Use `nmap/nuclei/etc` for scanning;
    - Search for exploiting scripts/write your own;
    - Use `CyberChief` for any misc operations;
    - Use `mitmproxy` to capture requests/respones (check corresponding topic at tools)  
    Example (default compose):
      - http_proxy=http://mitmproxy:8080/ curl http://example.com/;
      - https_proxy=http://mitmproxy:8080/ curl -k https://example.com/;
    - Move data between host and container (default dir `transf`);
    - Install task-specific tool:
      - Void packages `xbps-install <package_name>`;
      - Python packages `pipx install <package_name>`;
      - Get latest bin from GitHub `github_loader <user/repo> <dir to install>`;
    - etc;
1. Remove containers: `sudo docker compose down`;  
   > (add `-v` to clean related volumes)
1. [Clean docker data](https://docs.docker.com/config/pruning/) if needed.

## ❓ FAQ
**Q: Why?**  
A: Because I needed a portable place to store and systematize Linux/network/cybersec/etc knowledge and tools.  

**Q: Why not Kali/Blackarch/Parrot/etc?**  
A: Because packages will be broken/outdated/missing/etc anyway. So it makes sense to use a decent base and build only whatever you need.  

**Q: What to do if there is no tool or packages are broken?**  
A: There are several ways to solve it:
- Fix/add by yourself or notify maintainer;
- Install from another external repo (Example: `pipx`);
- Grab and install binary from GitHub/other sources (check Dockerfile for example);
- Compile or do some misc installation manually.

**Q: How to use on not amd64 architecture?**  
A: Change the Dockerfile to grab a corresponding Docker image and grab a corresponding binaries/packages (if any)

**Q: Why proxychains/vpn/etc does not work?**  
A: Learn about tools and its limitation. 
For example `proxychains` is modifying standard C lib calls, so programms written in `Go` will not be rerouted since they have custom netstack.  
⚠️ Always check connections for IP and DNS leaks.

## 🌩️ Scripting
- [Learn x in y](https://learnxinyminutes.com/)  

### 📘 Python
- [Wiki](https://wiki.archlinux.org/title/python)
- [Cheat Sheet](https://github.com/gto76/python-cheatsheet) 
- [pipx](https://pypa.github.io/pipx/) 
- [Packages](https://pypi.org/)

### 📘 Bash
- [Wiki](https://wiki.archlinux.org/title/bash)  
- [Manual](https://man.archlinux.org/man/bash.1)  
- [Cheat Sheet](https://quickref.me/bash)  
- [Command explanation](https://explainshell.com/)  

### 📘 Powershell
- [GitHub](https://github.com/PowerShell/PowerShell)  
- [Docs](https://learn.microsoft.com/en-us/powershell/)  
- [Cheat Sheet](https://www.stationx.net/powershell-cheat-sheet/)  

### 📘 Lua

### 📘 Perl

### 📝 Regular expression (regex)
- [Docs](https://pubs.opengroup.org/onlinepubs/7908799/xbd/re.html)  
- [Generator](https://regex-generator.olafneumann.org)  
- [Sandbox](https://regexr.com/)  
- [Database](https://ihateregex.io)  
- [Cheat Sheet](https://quickref.me/regex.html)  

## 🌐 Network

### WWWeb
- [Wiki](https://en.wikipedia.org/wiki/World_Wide_Web)
- [Search engines](https://en.wikipedia.org/wiki/List_of_search_engines) 
- [Common crawler data](https://data.commoncrawl.org/crawl-data/index.html) 
- [Autonomous Internet System](https://en.wikipedia.org/wiki/Autonomous_system_(Internet))  
- [RIPEStat](https://stat.ripe.net/docs/02.data-api/) 

### Technical
- [OSI model](https://en.wikipedia.org/wiki/OSI_model)
- [Basics](https://www.geeksforgeeks.org/basics-computer-networking/)  
- [DNS](https://wiki.archlinux.org/title/Domain_name_resolution)  
- [Proxy](https://wiki.archlinux.org/title/Proxy_server)  
- [Ports](https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers)   
- [Cheat Sheet](https://www.geeksforgeeks.org/computer-network-cheat-sheet/)  

### 🔒 Cryptography   
- [Basics](https://wiki.owasp.org/index.php/Guide_to_Cryptography)  
- [SSL/TLS](https://cheatsheetseries.owasp.org/cheatsheets/Transport_Layer_Security_Cheat_Sheet.html)  

### 👻 Anonymization 
- [Tor](https://www.torproject.org/)  
- [I2P](https://geti2p.net/en/)  
- [proxychains](https://github.com/haad/proxychains)

## 💾 Database
### General:
- [Wiki](https://wiki.archlinux.org/title/Category:Database_management_systems)  
- [Models](https://learn.microsoft.com/en-us/azure/architecture/guide/technology-choices/data-store-overview)  
- [Relational](https://www.digitalocean.com/community/tutorials/understanding-relational-databases)  
- [Non-relational](https://learn.microsoft.com/en-us/azure/architecture/data-guide/big-data/non-relational-data)  

### Specific:
- [Oracle](https://en.wikibooks.org/wiki/Oracle_Database/SQL_Cheatsheet)  
- [MySql](https://www.mysqltutorial.org/mysql-cheat-sheet.aspx)  
- [PostgreSQL](https://www.postgresqltutorial.com/postgresql-cheat-sheet/)  
- [MongoDB](https://www.mongodb.com/developer/products/mongodb/cheat-sheet/)  
- [Redis](https://developer.redis.com/howtos/quick-start/cheat-sheet/)  
- [SqlLite](https://www.sqlitetutorial.net/sqlite-cheat-sheet/)  

## Security
### General
- [Penetration Testing Execution standard](http://www.pentest-standard.org/index.php/Main_Page)  
- [OWASP Cheat Sheet Series](https://cheatsheetseries.owasp.org/index.html)  
- [OWASP Web Checklist](https://github.com/0xRadi/OWASP-Web-Checklist?tab=readme-ov-file)
- [List of resources](https://github.com/edoardottt/awesome-hacker-search-engines)  
- [Hacking communities](https://github.com/fastfire/deepdarkCTI)   
- [All about ELF](https://github.com/tmpout/awesome-elf)  
- [RedTeam Tools](https://github.com/A-poc/RedTeam-Tools)
- [BlueTeam Tools](https://github.com/A-poc/BlueTeam-Tools)
- [Security Operations Center](https://github.com/cyb3rxp/awesome-soc)  

#### 📂 Passwords/Exploits/Etc
- [SecLists](https://github.com/danielmiessler/SecLists/tree/master)  
- [Patterns](https://github.com/mazen160/secrets-patterns-db)  
- [Passwords](https://weakpass.com/)  
- [Vulnerabilities](https://github.com/edoardottt/awesome-hacker-search-engines#vulnerabilities)  
- [Exploits](https://github.com/edoardottt/awesome-hacker-search-engines#exploits)  

### Practice attack
- [OverTheWire](https://overthewire.org/wargames/)  
- [TryHackMe](https://tryhackme.com/)  
- [HackTheBox](https://www.hackthebox.com/)  
- [HBH](https://hbh.sh/home)  
- [DefendTheWeb](https://defendtheweb.net/)  

### Practice defend
- [LastDefend](https://letsdefend.io/)  
- [CyberDefenders](https://cyberdefenders.org/)  
- [BlueTeamLabs](https://blueteamlabs.online/)

## OS/Infrastructure

### 📗 Docker
- [Docs](https://docs.docker.com/)  
- [Installation](https://docs.docker.com/compose/install/)  
- [Commands](https://docs.docker.com/compose/reference/)  
- [Compose cheat sheet](https://devhints.io/docker-compose)  
- [Docker cheat sheet](https://quickref.me/docker)  
- [Cleanups](https://docs.docker.com/config/pruning/)  

### 📗 Linux
General:
- [All in one guides](https://linuxjourney.com/)  
- [Administration](https://wiki.archlinux.org/title/Category:System_administration)  
- [Security](https://wiki.archlinux.org/title/Category:Security)  
- [Networking](https://wiki.archlinux.org/title/Category:Networking)  
- [Commands cheat sheet](https://www.geeksforgeeks.org/linux-commands-cheat-sheet/)  
- [Filesystem Hierarchy](https://en.m.wikipedia.org/wiki/Filesystem_Hierarchy_Standard)  
- [Common network commands](https://www.geeksforgeeks.org/linux-commands-cheat-sheet/#networking)   
- [WPA](https://wiki.archlinux.org/title/Wpa_supplicant)

### 📗 Microsoft Windows
General:
- [OS](https://learn.microsoft.com/en-us/windows/)  
- [Active Directory](https://learn.microsoft.com/en-us/troubleshoot/windows-server/identity/active-directory-overview)  
- [Server](https://learn.microsoft.com/en-us/windows-server/)  
- [Commands cheat sheet](https://www.stationx.net/windows-command-line-cheat-sheet/)  
- [Common network commands](https://www.geeksforgeeks.org/networking-commands-for-troubleshooting-windows/)   

### 📗 BSD

## 🧰 Tools

### 👽 External (Separate container)
#### 👨‍🍳 CyberChief
- [GitHub](https://github.com/gchq/CyberChef)
- [Web](https://gchq.github.io/CyberChef/)
- [Container](https://hub.docker.com/r/mpepping/cyberchef/)
> To connect - open the browser and type `localhost:8000` (compose defaults) 

#### 📘 mitmproxy
- [GitHub](https://github.com/mitmproxy/mitmproxy)
- [Docs](https://docs.mitmproxy.org/stable/)
- [Cheat Sheet](https://quickref.me/mitmproxy.html)
> Connect to proxy: set proxy as `localhost:8082` (compose defaults)
> Connect for web interface: open in browser `localhost:8083` (compose defaults) 
> After the first run certificate [will be created](https://docs.mitmproxy.org/stable/concepts-certificates/) in `mitmproxy` folder. Import them to the external client.

### 👁️ Intelligence
#### 📘 nmap:
- [References/docs](https://nmap.org/book/man.html)
- [Scripts](https://nmap.org/nsedoc/scripts/)
- [Vulscan](https://github.com/scipag/vulscan)
- [Cheat Sheet](https://www.stationx.net/nmap-cheat-sheet/)

#### 📘 nuclei:
- [GitHub](https://github.com/projectdiscovery/nuclei)
- [Templates](https://github.com/projectdiscovery/nuclei-templates) 
- [Cheat Sheet](https://cheatsheet.haax.fr/web-pentest/tools/nuclei/)

#### 📘 dalfox: 
- [GiHhub](https://github.com/hahwul/dalfox)
- [Docs](https://dalfox.hahwul.com/docs/home/)
- [Cheat Sheet](https://www.blackhatethicalhacking.com/tools/dalfox/)

#### 📘 katana:
- [GitHub](https://github.com/projectdiscovery/katana)

#### 📘 gobuster:
- [GitHub](https://github.com/OJ/gobuster)

### ⚔️ Exploiting

#### 📘 sqlmap
- [GitHub](https://github.com/sqlmapproject/sqlmap)
- [Wiki](https://github.com/sqlmapproject/sqlmap/wiki/Features)
- [Manual](https://manpages.org/sqlmap)

#### 📘 hydra
- [Manual](https://man.archlinux.org/man/extra/hydra/hydra.1.en)
- [GitHub](https://github.com/vanhauser-thc/thc-hydra) 

#### 📘 commix 
- [GitHub](https://github.com/commixproject/commix)
- [Docs](https://github.com/commixproject/commix/wiki/Usage)

#### 📘 hashcat
- [GitHub](https://github.com/hashcat/hashcat)
- [Wiki](https://hashcat.net/wiki/)

#### 📘 john the ripper: 
- [GitHub](https://github.com/openwall/john)
- [Docs](https://openwall.info/wiki/john) 

### 🌱 Misc

#### 📘 git
- [Wiki](https://wiki.archlinux.org/title/git) 
- [Manual](https://man.archlinux.org/man/git.1) 
- [Cheat Sheet](https://quickref.me/git)

#### 📘 openvpn:
- [Docs](https://community.openvpn.net/openvpn)
- [Server](https://wiki.archlinux.org/title/OpenVPN) 
- [Client](https://man.archlinux.org/man/extra/openvpn/openvpn.8.en)

#### 📘 drill:
- [Docs](https://www.nlnetlabs.nl/projects/ldns/about/)
- [Manual](https://man.archlinux.org/man/drill.1)

#### 📘 curl: 
- [Wiki](https://wiki.archlinux.org/title/CURL)
- [Manual](https://man.archlinux.org/man/curl.1)
- [Cheat Sheet](https://quickref.me/curl)