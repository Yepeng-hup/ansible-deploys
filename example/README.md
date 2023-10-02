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
#python版本需大于3.0，否者程序不会执行任何动作。
# 查看可用模块
python ansible-deploy.py -h

#执行安装
python ansible-deploy.py java
```

