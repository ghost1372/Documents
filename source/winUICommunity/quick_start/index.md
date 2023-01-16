---
title: Quick start
---

# Download and Install

|Nuget|Github|
|-|-|
|[WinUICommunity.SettingsUI](https://www.nuget.org/packages/WinUICommunity.SettingsUI/)|[Github](https://github.com/WinUICommunity/SettingsUI)
|[WinUICommunity.ShellContextMenu](https://www.nuget.org/packages/WinUICommunity.ShellContextMenu/)|[Github](https://github.com/WinUICommunity/ShellContextMenu)
|[WinUICommunity.Common](https://www.nuget.org/packages/WinUICommunity.Common)|[Github](https://github.com/WinUICommunity/Common)|


{% note warning %}
Github is generally updated every day and is relatively unsuitable for production.
{% endnote %}

## Install
```
Install-Package WinUICommunity.SettingsUI
```

After installing, add the following resource to `app.xaml`

```xml
<ResourceDictionary Source="ms-appx:///SettingsUI/Themes/Generic.xaml"/>
```