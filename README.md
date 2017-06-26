# V5LoadingHUD
A loading HUD using UIBezierPath of iOS. iOS加载动画

### 显示效果

<img src="https://github.com/chyrain/MDPictures/blob/master/res/v5loading.gif?raw=true" width=300 height=538 />

### 使用方法

* 显示/隐藏 加载中动画
```objc
[V5LoadingHUD showIn:self.view];
[V5LoadingHUD hideIn:self.view];
```
* 显示/隐藏 加载完成动画
```objc
[V5LoadingSuccessHUD showIn:self.view];
[V5LoadingSuccessHUD hideIn:self.view];
```