---
title: Quick start
---

# Download and Install

|Nuget|Github|
|-|-|
|[WinUICommunity](https://www.nuget.org/packages/WinUICommunity.Components.Win2d/)|[Github](https://github.com/WinUICommunity/WinUICommunity)


{% note warning %}
Github is generally updated every day and is relatively unsuitable for production.
{% endnote %}

## Install
```
Install-Package WinUICommunity.Components.Win2d
```

After installing, add the following resource to `app.xaml`

```xml
<ResourceDictionary Source="ms-appx:///WinUICommunity.Components.Win2d/Themes/Generic.xaml"/>
```

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WinUICommunity) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wuc="using:WinUICommunity"`
For use in the Csharp:
`using WinUICommunity;`
{% endnote %}