# 真机调试

使用 **`iOS` 真机**进行调试时需要执行以下操作，**安卓或 `iOS` 模拟器用户可忽略**

- 全局安装[ios-deploy](https://github.com/phonegap/ios-deploy):

```sh
npm i ios-deploy -g

# 如果安装时报错，请尝试以下三种解决方案之一
sudo npm install -g ios-deploy --unsafe-perm=true

# 或
sudo npm install -g ios-deploy --allow-root

# 或：为 nobody 用户添加 /usr/local/lib/node_modules/ios-deploy/ios-deploy 文件的写权限
```

安装完该依赖后即可开始项目的初始化（hera init projName）和构建运行（hera run ios）

- 构建过程中会报错，提示您使用 Xcode 打开iOS项目

![](assets/real-device/team-message-alert.png)

- 在 Xcode 中选择 WDHodoerDemo 项目，在 General 页面手动修改团队信息（需要[注册](https://developer.apple.com/account/)一个Apple ID）和 Bundle id

![](assets/real-device/team-message-after.png)

- 下一步启动服务器

```sh
# 开启服务器，提供小程序资源
hera run server
```

- 点击 Xcode 左上角的运行按钮，将应用安装到真机中，第一次运行可能会出现如下信息，按着提示进行授权即可：打开您的 iPhone -> 打开设置 -> 通用 -> 最下方的设备管理 -> 选择您的 Apple ID -> 点击信任，完成上述操作后回到 Xcode，点击运行即可。

![](assets/real-device/xcode-cert-alert.png)

- 上述流程只需配置一次，之后直接使用 `hera run ios` 即可，无需开启 Xcode