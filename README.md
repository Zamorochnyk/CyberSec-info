# Pentesting tools (WIP)
<b> ALL EXTERNAL RESOURCES BELONG TO THEIR RESPECTIVE OWNERS </b>

Cli pentesting toolkits, packaged in docker images. <br>
Use this as a template to build your own toolkits. <br>
It is meant to be simple, rolling, and disposable. <br>
Not meant to be secure. Be careful, void can stare back at you. <br>
For more consistent experience - consider to build your own images with [KaliLinux](https://hub.docker.com/r/kalilinux/kali-rolling) or [ParrotOs](https://hub.docker.com/r/parrotsec/core). <br>
> 🚩 Warning: this tools can do real harm.<br>
> Even if you <b>can</b> do something, it does not mean that you <b>should</b>. <br>
> Be responsible and conscious.

Generic usage example:

1. Start containers from the project directory: `"sudo docker compose up -d"`
2. Put data in the mounted directory
3. Connect with ssh: `"ssh -p <insert mapped 22 port from docker-compose> root@<host, for local it is localhost">`
4. Open tmux and create new sessions (check `tmux`)
5. Connect to vpn: `"openvpn /path/to/config"` (optional)
6. Enable proxy (optional, check `mitmproxy`)
7. *<b>Do some pentesting</b>*
8. Exit from a container (by typing `"exit"` or by killing the connection/terminal)
9. Get data from the mounted directory
10. Remove containers: `"sudo docker compose down"`
11. Clean containers/volumes (optional, check `Docker` in the `General` section) 



## General

Please, adjust `docker-compose.yml` for your needs.

### Linux

[Linux cheat sheet](https://www.geeksforgeeks.org/linux-commands-cheat-sheet/) <br>
> 🚩Warning: not all commands might present in current images <br>

Linux base:
- [Arch Linux](https://archlinux.org/):
- [Docker image](https://hub.docker.com/_/archlinux/)
- [Packages](https://archlinux.org/packages/)
- [Wiki](https://wiki.archlinux.org/)

Tools base:
- [BlackArch Linux](https://blackarch.org/)
- [Guide](https://blackarch.org/guide.html)
- [Packages](https://blackarch.org/tools.html)

### Docker

Docker compose is highly recommended. <br>

- [Docs](https://docs.docker.com/)
- [Docker compose installation](https://docs.docker.com/compose/install/)
- [Docker compose cli](https://docs.docker.com/compose/reference/)
- [cheat sheet](https://devhints.io/docker-compose)
>It is recommended to periodically run [cleanups](https://docs.docker.com/config/pruning/).

### Exploit databases

- [ExploitDB](https://www.exploit-db.com/)
- [Rapid7](https://www.rapid7.com/db/)
- [CVE](https://www.cve.org/)
- [0day](https://0day.today/)

## Services


### CyberChief

Please use the local container version for security reasons. <br>
To connect - open the browser and type `localhost:<insert mapped port from docker-compose>`

- [Github](https://github.com/gchq/CyberChef)
- [Web version](https://gchq.github.io/CyberChef/)
- [Docker image](https://hub.docker.com/r/mpepping/cyberchef/)

### Core

Core tools, applied to all images.

#### git

- [wiki](https://wiki.archlinux.org/title/git)
- [man](https://man.archlinux.org/man/git.1)
- [cheat sheet](https://education.github.com/git-cheat-sheet-education.pdf)

#### curl

- [wiki](https://wiki.archlinux.org/title/CURL)
- [man](https://man.archlinux.org/man/curl.1)
- [cheat sheet](https://devhints.io/curl)

#### network tools

- [traceroute (man)](https://man.archlinux.org/man/core/traceroute/traceroute.8.en)
- [netcat (man)](https://man.archlinux.org/man/extra/gnu-netcat/netcat.1.en)
- [whois (man)](https://man.archlinux.org/man/whois.1)
- [dig (man)](https://man.archlinux.org/man/dig.1)
- [host (man)](https://man.archlinux.org/man/host.1)
- [nslookup (man)](https://man.archlinux.org/man/extra/bind/nslookup.1.en)

#### python

- [wiki](https://wiki.archlinux.org/title/python)
- [cheat sheet](https://github.com/gto76/python-cheatsheet)

#### openvpn

- [server (wiki)](https://wiki.archlinux.org/title/OpenVPN)
- [client (man)](https://man.archlinux.org/man/extra/openvpn/openvpn.8.en)

#### tmux

- [wiki](https://wiki.archlinux.org/title/tmux)
- [man](https://man.archlinux.org/man/tmux.1)
- [cheat sheet](https://tmuxcheatsheet.com/)

#### nano

- [wiki](https://wiki.archlinux.org/title/nano)
- [man](https://man.archlinux.org/man/nano.1)
- [cheat sheet](https://www.nano-editor.org/dist/latest/cheatsheet.html)

#### openssh

- [wiki](https://wiki.archlinux.org/title/OpenSSH)
- [man](https://man.archlinux.org/man/core/openssh/ssh.1.en)
- [ssh_config (man)](https://man.archlinux.org/man/ssh_config.5)
- [cheat sheet](https://quickref.me/ssh.html)

#### openssl

- [wiki](https://wiki.archlinux.org/title/OpenSSL)
- [man](https://man.archlinux.org/man/openssl.1ssl)
- [cheat sheet](https://cheatography.com/albertx/cheat-sheets/openssl/)

### Recon

#### nmap

- [docs](https://nmap.org/docs.html)
- [wiki](https://wiki.archlinux.org/title/nmap)
- [scripts](https://nmap.org/nsedoc/scripts/)
- [man](https://man.archlinux.org/man/nmap.1)
- [vulscan](https://github.com/scipag/vulscan)
- [cheat sheet](https://www.stationx.net/nmap-cheat-sheet/)

#### masscan

>🚩 Warning: Unless you are scanning a giant internal network, please, keep those --rates at ~1000-10000, <b>do not flood public networks</b>. <br>
>Keep it sane.
- [man](https://man.archlinux.org/man/masscan.8)
- [cheat sheet](https://cheatsheet.haax.fr/network/port-scanning/masscan_cheatsheet/)

#### mitmproxy

- [github](https://github.com/mitmproxy/mitmproxy)
- [docs](https://docs.mitmproxy.org/stable/)
- [cheat sheet](https://quickref.me/mitmproxy.html)

Intercepting proxy can be used with any client that allows proxy. <br>
To connect set proxy as `localhost:<insert mapped port from docker-compose>` (search instructions for your browser/tool)
Also can be used as the gateway to the internal docker network/vpn.<br>
Commons:
- start with `--ssl-insecure` to ignore certificate verification
- After the first run certificate will be created in `~/.mitmproxy`. Import them to the external client (search instructions for your browser/tool) <br>
check [concepts-certificates](https://docs.mitmproxy.org/stable/concepts-certificates/) for additional info.

#### nuclei

- [github](https://github.com/projectdiscovery/nuclei)
- [templates](https://github.com/projectdiscovery/nuclei-templates)
- [cheat sheet](https://cheatsheet.haax.fr/web-pentest/tools/nuclei/)

#### wapiti

- [github](https://github.com/wapiti-scanner/wapiti)
- [man](https://manpages.org/wapiti)

#### dalfox

- [github](https://github.com/hahwul/dalfox)
- [docs](https://dalfox.hahwul.com/docs/home/)
- [cheat sheet](https://www.blackhatethicalhacking.com/tools/dalfox/)

### Exploit

#### sqlmap

- [github](https://github.com/sqlmapproject/sqlmap)
- [wiki](https://github.com/sqlmapproject/sqlmap/wiki/Features)
- [man](https://manpages.org/sqlmap)
- [cheat sheet](https://cdn.comparitech.com/wp-content/uploads/2021/07/sqlmap-Cheat-Sheet.pdf)

#### metasploit

- [wiki](https://wiki.archlinux.org/title/Metasploit_Framework)
- [github](https://github.com/rapid7/metasploit-framework)
- [docs](https://docs.metasploit.com/)

#### hydra

- [man](https://man.archlinux.org/man/extra/hydra/hydra.1.en)
- [github](https://github.com/vanhauser-thc/thc-hydra)
- [cheat sheet](https://haxez.org/wp-content/uploads/2022/06/HaXeZ_Hydra_Cheat_Sheet-1.pdf)

#### commix

- [github](https://github.com/commixproject/commix)
- [docs](https://github.com/commixproject/commix/wiki/Usage)