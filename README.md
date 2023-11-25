# shells-setup
powershell/bash/zsh... setup

reference projects:
1. [ChrisTitusTech/powershell-profile](https://github.com/ChrisTitusTech/powershell-profile)

# 🎨 PowerShell Profile (Pretty PowerShell)

A stylish and functional PowerShell profile that looks and feels almost as good as a Linux terminal.

## ⚡ One Line Install (Elevated PowerShell Recommended)

Execute the following command in an elevated PowerShell window to install the PowerShell profile:

```powershell

irm "https://github.com/lgf4591/shells-setup/raw/main/setup.ps1" | iex

```

# install pacman for git-bash on windows

```bash

curl -fsSL https://github.com/lgf4591/shells-setup/raw/main/git_bash_install_pacman.sh | sh

```

## [Scoop](https://www.cnblogs.com/Edge-coordinates/p/15130184.html)

```powershell

Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
irm get.scoop.sh | iex

scoop config proxy localhost:2080
# scoop config rm proxy
scoop config aria2-enabled false

scoop install git

PS C:\Users\lgf> scoop bucket known
main
extras
versions
nirsoft
sysinternals
php
nerd-fonts
nonportable
java
games

scoop bucket add extras
scoop bucket add versions
scoop bucket add nerd-fonts
scoop bucket add nirsoft
scoop bucket add sysinternals
scoop bucket add php
scoop bucket add nonportable
scoop bucket add java
scoop bucket add games
scoop bucket add

scoop install openssl openssh vim neovim emacs kate geany
scoop install zoxide fzf lf bat
scoop install starship
scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json
scoop install 7zip cmake make wget curl aria2
scoop install vscode 
scoop install wpsoffice 
scoop install everything geekuninstaller ccleaner spacesniffer

scoop install JetBrainsMono-NF
scoop install FiraCode-NF
scoop install Font-Awesome
scoop install Hack-NF
scoop install Cascadia-Code


PS C:\Users\lgf> scoop search nodejs
WARN  Error parsing JSON at C:\Users\lgf\scoop\buckets\extras\bucket\mcomix.json.
Results from local buckets...

Name          Version  Source      Binaries
----          -------  ------      --------
nodejs-lts    20.10.0  main
nodejs        21.2.0   main
nodejs-lts-np 18.15.0  nonportable
nodejs-np     21.2.0   nonportable
nodejs010     0.10.48  versions
nodejs012     0.12.18  versions
nodejs10      10.24.1  versions
nodejs11      11.15.0  versions
nodejs12      12.22.12 versions
nodejs14      14.21.3  versions
nodejs16      16.20.2  versions
nodejs18      18.18.2  versions
nodejs4       4.9.1    versions
nodejs5       5.12.0   versions
nodejs6       6.17.1   versions
nodejs7       7.10.1   versions
nodejs8       8.17.0   versions
nodejs9       9.11.2   versions

scoop install sudo
sudo scoop install -g nodejs-lts
sudo scoop install -g nodejs@18

sudo scoop install -g golang



scoop install 7zip aria2 cmake dingtalk everything geekuninstaller git nodejs openssl snipaste v2ray v2rayn vscode wechat wpsoffice xray xmind tortoisesvn python openssh mysql-workbench mobaxterm ccleaner spacesniffer mysql57
```

## windows中cmd和powershell设置代理
https://blog.csdn.net/qq_40989066/article/details/122548540


### windows

##### cmd

设置**临时**代理（关闭cmd即设置的代理消失）  
`set all_proxy=socks5://127.0.0.1:10808` (**端口号为你代理软件socks5协议的端口**)  
删除临时代理  
`set all_proxy=`  
查看当前环境变量  
`set`  
查看当前公网ip判断代理是否成功  
`curl cip.cc`

##### [powershell](https://so.csdn.net/so/search?q=powershell&spm=1001.2101.3001.7020)

设置**临时**代理（关闭powershell即设置的代理消失）  
`$env:all_proxy="socks5://127.0.0.1:10808"` (**端口号为你代理软件socks5协议的端口**)  
删除当前临时代理  
`$env:all_proxy=""`  
查看当前环境变量  
`ls env:*`  
暂不知晓curl 和 ping层面上检测代理是否成功,设置完临时代理，通过命令行界面已成功获得下载相关速度

##### cmd和powershell设置永久代理

单击我的电脑属性=》选择高级系统设置=》选择环境变量=》选择系统变量=》选择新建  
新建all\_proxy，值设置为socks5://127.0.0.1:10808  
![在这里插入图片描述](https://img-blog.csdnimg.cn/aedd8276003346039076529a11e58ab5.png)  
保存即可保存为永久代理

##### 快捷代码设置临时命令行代理

###### cmd

可以 设置**临时**代理保存为cmd\_setproxy.bat如下：  
![在这里插入图片描述](https://img-blog.csdnimg.cn/5d8ce807a9ab4e498286472e32965c61.png)  
删除**临时**代理如下  
![在这里插入图片描述](https://img-blog.csdnimg.cn/886aed55390848a18e9dde97d67bb9e8.png)  
_**将两个bat保存为同一路径下，将路径粘贴入系统变量的PATH中，即可设置成功**_  
输入cmd\_setproxy即可设置成功  
![在这里插入图片描述](https://img-blog.csdnimg.cn/d150b6a21a47452fb44589f61c08fb70.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5rWu6ICM5LiN5a6e,size_20,color_FFFFFF,t_70,g_se,x_16)

###### powershell

用管理员模式打开powershell  
`code $profile`（code表示用vscode打开$profile文件,$profile表示powershell的配置文件）

```
function setproxy{
    $env:all_proxy="socks5://127.0.0.1:10808"
}

function unsetproxy{
    $env:unsetproxy=""
}
```

保存完后 另外再开powershell如果出现  
系统无法使用脚本的报错  
用管理员打开的powershell运行  
`Set-ExecutionPolicy -ExecutionPolicy RemoteSigned`  
选择同意更改策略，如果需要具体更改相关策略选项可以到官网文档进行查看

> [https://docs.microsoft.com/zh-cn/powershell/module/microsoft.powershell.core/about/about\_execution\_policies?view=powershell-7.2](https://docs.microsoft.com/zh-cn/powershell/module/microsoft.powershell.core/about/about_execution_policies?view=powershell-7.2)

保存完成 即可使用power shell使用setproxy快捷设置临时代理  
![在这里插入图片描述](https://img-blog.csdnimg.cn/2fc6a8e611cf4dd48e8fd91c4dc833f3.png)


我们在终端使用`Homebrew`、`git`、`npm`等命令时，总会因为网络问题而安装失败。

尤其是安装`Homebrew`，据我了解很多朋友是花了很长时间来解决，心里不知道吐槽该死的网络多少遍了。

虽然设置镜像确实有用，但是没有普适性，今天就介绍下让终端也走代理的方法，这样可以通杀很多情况。

文本提到的代理是指搭配`Shadowsocks`使用的情况，其他软件也有一定共同之处。

## **macOS & Linux**

通过设置`http_proxy`、`https_proxy`，可以让终端走指定的代理。 配置脚本如下，在终端直接执行，只会临时生效：

```
export http_proxy=http://127.0.0.1:1080
export https_proxy=$http_proxy
```

`1080`是`http`代理对应的端口，请不要照抄作业，根据你的实际情况修改。

**你可以在Shadowsocks的设置界面中查找代理端口信息。**

### **便捷脚本**

这里提供一个便捷脚本，里面包含打开、关闭功能：

```
function proxy_on() {
    export http_proxy=http://127.0.0.1:1080
    export https_proxy=$http_proxy
    echo -e "终端代理已开启。"
}

function proxy_off(){
    unset http_proxy https_proxy
    echo -e "终端代理已关闭。"
}
```

通过`proxy_on`启动代理，`proxy_off`关闭代理。

接下来需要把脚本写入`.bash_profile`或`.zprofile`，这样就可以永久生效。

> 你可能会问，怎么写入脚本，耐心点，下文提供了安装脚本的方法。  

至于你应该写入哪个文件，请根据命令`echo $SHELL`返回结果判断：

-   `/bin/bash` => `.bash_profile`
-   `/bin/zsh` => `.zprofile`

然后执行**安装脚本**（追加内容+生效），注意一定根据要上面结果修改`.zprofile`名称：

```
cat >> ~/.zprofile << EOF
function proxy_on() {
    export http_proxy=http://127.0.0.1:1080
    export https_proxy=$http_proxy
    echo -e "终端代理已开启。"
}

function proxy_off(){
    unset http_proxy https_proxy
    echo -e "终端代理已关闭。"
}
EOF

source ~/.zprofile
```

可以执行`curl cip.cc`验证：

```
IP : xxx
地址 : 中国  台湾  台北市
运营商 : cht.com.tw

数据二 : 台湾省 | 中华电信(HiNet)数据中心

数据三 : 中国台湾 | 中华电信

URL : http://www.cip.cc/xxx
```

看到网上说通过`curl -I http://www.google.com`可能会遇到`403`问题，使用`Google`域名验证时需要注意下这个情况。

## **Windows**

根据网上的文章，在`Windows`下使用全局代理方式也会对`cmd`生效（未经验证）。

### **cmd**

```
set http_proxy=http://127.0.0.1:1080
set https_proxy=http://127.0.0.1:1080
```

还原命令：

```
set http_proxy=
set https_proxy=
```

### **Git Bash**

设置方法同"macOS & Linux"

### **PowerShell**

```
$env:http_proxy="http://127.0.0.1:1080"
$env:https_proxy="http://127.0.0.1:1080"
```

还原命令(未验证)：

```
$env:http_proxy=""
$env:https_proxy=""
```

## **其他代理设置**

### **git代理**

```
# 设置
git config --global http.proxy 'socks5://127.0.0.1:1080' 
git config --global https.proxy 'socks5://127.0.0.1:1080'

# 恢复
git config --global --unset http.proxy
git config --global --unset https.proxy
```

### **npm**

```
# 设置

npm config set proxy http://server:port
npm config set https-proxy http://server:port

# 恢复
npm config delete proxy
npm config delete https-proxy
```

### **git clone ssh 如何走代理**

### **macOS**

打开`~/.ssh/config`，如果没有这个文件，自己手动创建。

```
# 全局
# ProxyCommand nc -X 5 -x 127.0.0.1:1080 %h %p
# 只为特定域名设定
Host github.com
    ProxyCommand nc -X 5 -x 127.0.0.1:1080 %h %p
```

### **Windows**

打开`C:\Users\UserName\.ssh\config`文件，没有看到的话，同样手动创建。

```
# 全局
# ProxyCommand connect -S 127.0.0.1:1080 %h %p
# 只为特定域名设定
Host github.com
    ProxyCommand connect -S 127.0.0.1:6600 %h %p
```


**一、构建 http/https代理**

1、导入urllib相应的包

```
import urllib.request
from urllib.request import ProxyHandler, build_opener
```

2、构建代理参数

```
# "http://127.0.0.1:8080" 是你的代理地址
proxy_url = "http://127.0.0.1:8080"
proxy_url_dict = {
    'http': proxy_url,
    'https': proxy_url
}
```

3、构建代理

```
proxy_handler = ProxyHandler(proxy_url_dict)
opener = build_opener(proxy_handler)
```

4、将代理安装到urlib全局

```
urllib.request.install_opener(opener)
```

**二、构建socks5代理**

```
# 若提示找不到socks，请更新或者安装这个模块 pip install -U requests[socks]
import socket
import socks
from urllib import request
from urllib.error import URLError
import urllib

socks.setdefaultproxy(socks.SOCKS5, "127.0.0.1", 1080)
socket.socket = socks.socksocket

try:
    header = {
        'User-Agent': 'curl/7.68.0'
    }
    req = urllib.request.Request(url="http://httpbin.org/get", headers=header)
    response = request.urlopen(req)
    print(response.read().decode("utf-8"))
except URLError as e:
    print(e)
```

**此时urllib的代理已经配置好，现在已经可以通过代理访问外部网络了！**

\*欢迎各位读者提出问题，建议或者意见，谢谢~


