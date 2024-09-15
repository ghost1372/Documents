---
title: Welcome to WinUICommunity.Core
---

### Experience WinUI 3 quickly and easily with the help of WinUICommunity, Everything you need to develop an application is gathered in one place.

# Requirements

![os-require](https://img.shields.io/badge/OS-%3E%3D%20Windows%2010%20Build%201809-orange) ![IDE-require](https://img.shields.io/badge/IDE-vs2022-red)

# Download and Install

|Nuget|Github|
|-|-|
|[WinUICommunity.Core](https://www.nuget.org/packages/WinUICommunity.Core)|[Github](https://github.com/WinUICommunity/WinUICommunity)|


{% note warning %}
Github is generally updated every day and is relatively unsuitable for production.
{% endnote %}

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WinUICommunity) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wuc="using:WinUICommunity"`
For use in the Csharp:
`using WinUICommunity;`
{% endnote %}


## Install

```
Install-Package WinUICommunity.Core
```

After installing, add the following resource to app.xaml


```xml
<ResourceDictionary Source="ms-appx:///WinUICommunity.Components/Themes/Generic.xaml"/>
```
See the Demo app to see how to use it

# Compile source code

{% note warning %}
Please confirm that your development environment meets the requirements before compiling.
- Visual Studio 2022
    On the `Workloads` tab of the installation dialog box, select as appropriate:
    - select .NET Desktop Development
    - select Windows application development
    - make sure `Windows 11 SDK (10.0.22000.0)` and `Windows 11 SDK (10.0.22621.0)` or `Windows 11 SDK (10.0.26100.0)` is selected.
- .Net `8.x` and `9.x`

{% endnote %}

Open *.sln and Build.

See the Demo app to see how to use it