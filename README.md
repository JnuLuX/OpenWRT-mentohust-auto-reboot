# OpenWRT-mentohust-auto-reboot
Auto reboot mentohust when accessing internet failed

每10分钟（在crontab自定义）检测网络连接，在断网时自动重启锐捷认证

需要设置crontab，内容如下：

*/10 * * * * sh /usr/sbin/net_check.sh

原理：ping 10次 www.baidu.com 如果丢包率大于40%就重启mentohust
