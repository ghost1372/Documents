---
title: WindowUI.LandingPages
---

Create a landings page in the style of WinUI 3 and WinUI-Gallery very quickly and easily

{% note warning %}
ported from https://github.com/microsoft/WinUI-Gallery
{% endnote %}

```
Install-Package WindowUI.LandingPages
```
After installing, add the following resource to app.xaml

```xml
xmlns:wui="using:WindowUI"

<ResourceDictionary Source="ms-appx:///WindowUI.LandingPages/Themes/Generic.xaml" />
<wuc:ItemTemplates/>
```
See the Demo app to see how to use it.

## Dependencies

This package is based on the following packages

- CommunityToolkit.WinUI.UI
- CommunityToolkit.WinUI.UI.Animations
- Microsoft.Graphics.Win2D

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WindowUI) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wui="using:WindowUI"`
For use in the Csharp:
`using WindowUI;`
{% endnote %}

![LandingsPage](https://raw.githubusercontent.com/ghost1372/Resources/main/LandingsPage/0.png)