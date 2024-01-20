---
title: CopyButton
---

```xml
<wuc:CopyButton x:Name="CopyCodeButton"
                Click="CopyCodeButton_Click"
                Content="&#xE8C8;" />
```

```cs
DataPackage package = new DataPackage();
package.SetText(actualCode);
Clipboard.SetContent(package);
```

you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.

![WinUICommunity](https://raw.githubusercontent.com/WinUICommunity/Resources/main/WinUICommunityDocs/CopyButton.gif)
