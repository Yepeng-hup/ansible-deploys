## ansible-deploys使用说明

### hosts文件变量定义说明

```
# examples
# pak_path 是指定安装包的所在路径(全局使用的)
[java]
192.168.1.17 pak_path="/xxxx/xxx.tar.gz"

[maven]
192.168.1.18 pak_path="/sss/sss.tar.gz"
```



### python命令行使用

```
#python版本需>=3.0。
# 查看可用模块
python ansible-deploy.py -h

#执行安装
python ansible-deploy.py java

#关于环境变量问题
部署完成后环境变量是没有载入的，可以在自己后续脚本中最前面引用source /etc/profile，在执行后续指令。
```
