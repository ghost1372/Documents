---
title: WinUICommunity.LandingsPage
---

Create a landings page in the style of WinUI 3 and WinUI-Gallery very quickly and easily

{% note warning %}
ported from https://github.com/microsoft/WinUI-Gallery
{% endnote %}

```
Install-Package WinUICommunity.LandingsPage
```
After installing, add the following resource to app.xaml

```xml
xmlns:winui="using:WinUICommunity"

<ResourceDictionary Source="ms-appx:///LandingsPage/Themes/Generic.xaml"/>
<winui:ItemTemplates/>
```
See the Demo app to see how to use it.

## Dependencies

This package is based on the following packages

- CommunityToolkit.WinUI.UI
- CommunityToolkit.WinUI.UI.Animations
- Microsoft.Graphics.Win2D

![LandingsPage](https://raw.githubusercontent.com/ghost1372/Resources/main/LandingsPage/0.png)