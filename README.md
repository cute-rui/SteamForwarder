# SteamForwarder
Steam Forwarder For Linux
咋用：
* 从左边release里下压缩包，解压
* 从论坛发的onedrive分享链接下压缩包，解压

解压后得到一堆脚本文件、一个二进制文件、一个.crt H2O预制证书
如果觉得不靠谱可以自己把证书塞进去，默认目录是/usr/local/share/h2o/ca-bundle.crt 只把请求目标证书塞进去即可

脚本功能：
* openssl.sh 第一次必须跑一下，生成证书，输入密码时建议留空，因为只给自己用，避免尴尬情况（应该不会有没装openssl的情况吧...）
* forwarder.sh 参数如下：
  * install 安装
  * write 找HOST文件，写入
* 可选命令 install forwarder.service /usr/lib/systemd/system 扔进systemd管理
* systemctl enable forwarder && systemctl start forwarder 开机自启并启动

特别感谢简书上忘了哪位大哥的openssl脚本
