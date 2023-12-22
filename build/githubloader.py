import requests
import sys, os
import io
from zipfile import ZipFile
import tarfile
args = sys.argv
url=f'https://api.github.com/repos/{args[1]}/releases/latest'
arch=f'{args[2]}'
name=args[1].split('/')[1]
if len(args) > 3:    
    install_path=f'{args[3]}'
    if not install_path.endswith('/'):
        install_path = install_path + '/'
else:
    install_path=''

print(f'downloading {name}...')
response = requests.get(url=url)
body = response.json()
archive_url=''
for asset in body['assets']:
    if arch in asset['name']:
        archive_url=asset['browser_download_url']
archive = requests.get(archive_url)

print(f'unpacking {name} in {install_path}...')
bytes_arch=io.BytesIO(archive.content)
if archive_url.endswith('.zip'):
    bin =  ZipFile(bytes_arch).read(name)
elif archive_url.endswith('.tar'):
    bin = tarfile.open(fileobj=bytes_arch).extractfile(name).read()
elif archive_url.endswith('.tar.gz'):
    bin = tarfile.open(fileobj=bytes_arch, mode='r:gz').extractfile(name).read()

open(install_path+name, 'xb').write(bin)
os.chmod(install_path+name, 0o0777)
print(f'{name} installed!')