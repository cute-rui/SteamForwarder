# SteamForwarder
Steam Forwarder For Linux

咋用：
* 从左边release里下压缩包，解压
* 从论坛发的onedrive分享链接下压缩包，解压

解压后得到一堆脚本文件、一个二进制文件、一个.crt H2O预制证书

如果觉得不靠谱可以自己把证书塞进去，默认目录是/usr/local/share/h2o/ca-bundle.crt 只把请求目标证书塞进去即可

安装：
* openssl.sh -a rsa -d steamcommunity.com 第一次必须跑一下，生成证书，然后信任ca跟中间证书，文件在certs/ca.crt和certs/steamcommunity.crt 如果想要追加域名 可以把steamcommunity.com改成 steamcommunity.com,xxxxxxx.com
* 上面运行完之后 mv h2o /usr/local/bin/ && mv h2o.conf /etc/ && mv ca-bundle.crt  移动文件 h2o配置在/etc/h2o.conf 可以自行修改
* echo 127.0.0.1 steamcommunity.com >> /etc/hosts 解析到本地 steamcommunity.com可以换成任意域名
* 可选命令 install forwarder.service /usr/lib/systemd/system 扔进systemd管理
* systemctl enable forwarder && systemctl start forwarder 开机自启并启动

特别感谢简书上忘了哪位大哥的openssl脚本
