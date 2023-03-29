```bash
arch # 查看架构
uname -a  # 查看系统以及架构信息
lscpu
```
ARM架构：aarch64、arm64
X86架构：x86_64、x64、AMD64
MIPS架构：mips

## docker portainer

```tex
account	admin
passwd	zlc@ID725361

richard
zlc@ID725361

```

## samba
`/etc/samba/smb.conf`
```ini
[aria2]
  path = /media/sda1/aria2/downloads
  public = yes
  writable = yes
  create mask = 0777
  force create mode = 0777
  directory mask = 0777
  force directory mode = 0777
  read only = no
  browseable = yes
  guest ok = yes
  guest only = yes

[nextcloud]
  path = /media/sda1/nextcloud/html/data/admin/files
  public = yes
  writable = yes
  create mask = 0777
  force create mode = 0777
  directory mask = 0777
  force directory mode = 0777
  read only = no
  browseable = yes
  guest ok = yes
  guest only = yes
```



## nextcloud

```tex
admin
725361
```



## 可能用到的镜像

- datarhei/restreamer 视频直播流
- next-cloud 云盘服务
- open-wrt 路由器
- jellyfin 媒体服务器
- cloudflare_ddns 动态dns 解析
