---
title: Quick start
---

# Download and Install

|Nuget|Github|
|-|-|
|[Nuget](https://www.nuget.org/packages/SettingsUI/)|[Github](https://github.com/ghost1372/SettingsUI)

{% note warning %}
Github is generally updated every day and is relatively unsuitable for production.
{% endnote %}

## Install
```
Install-Package SettingsUI
```

After installing, add the following resource to `app.xaml`

```xml
<ResourceDictionary Source="ms-appx:///SettingsUI/Themes/SettingsUI.xaml"/>
```