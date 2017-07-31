## Homework

这个repo是用来共享大家对于我们面试的家庭作业的分步完成情况。

每个人在分步的目录下创建自己名字命名的目录，然后上传自己的代码，否则会有冲突。

```
.
├── README.md
├── zhuye
├── yufei
└── XXX
```

### Step1 

使用Docker/Vagrant搭建一个本地的开发环境，安装一个HTTP服务器，能展示一个静态页面即可。

1. 尽量少的命令行操作
2. 静态文件的变化能及时的体现出来

**扩展思考**

1. 使用Docker和Vagrant在实现方式上的区别

### Step2

在上一个系统中添加如下内容：
1. 在系统中集成一个数据库（数据库自己选择）
2. 给数据库插入简单的数据（内容和格式自己定义）
3. 在页面上简单展示从数据库中查询到的数据

**扩展思考**

1. 插入数据如何解耦（这个是说数据插入服务不应该影响正常的业务，就是说如果插入失败了，你的服务应该还是正常的，虽然可能因为数据插入可能失败导致显示的结果不是你想要的，但是两者之间应该是独立的）
2. 服务和数据的解耦（是说数据和服务也是两个独立的东西，谁crash掉之后应该只恢复相应的那一部分就可以了，另外一个不应该受到影响，除非是业务逻辑导致了数据的完整性）
3. 插入数据时的服务依赖检查（在做数据插入之前检查数据库是否真的能提供服务）



### step 3

在前一步的基础上完成以下任务：

1. 自建或选用一个合理的pipeline工具，最好支持pipeline as code，可以使用公开的CI工具，比如[Travis CI](https://travis-ci.org/)
2. 生成版本化的产出物Artefact并保存在一个自建的或者可用的公开registry中，比如[Quay.io](https://quay.io)或者[Dockerhub](https://hub.docker.com/)
3. 合理使用auto下面的脚本完成pipeline的环节
4. 在pipeline中可以尝试加入unit test和deploy的环节，不需要真正的环节，只要有相应的调用即可。

**扩展思考**

1. 怎么做到一个可跟踪的版本化产出物（怎么能方便的通过版本来确定是那个commit的或者那一次build生产出来的）
2. 如何做到pipeline的各环节与agent无关（使用容器化的思想，尽力做到的pipeline的各环节与agent不强关联）

