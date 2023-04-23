---
title: Welcome to WinUICommunity.Common
---

### Experience WinUI 3 quickly and easily with the help of WinUICommunity, Everything you need to develop an application is gathered in one place.

# Requirements

![dotnet-require](https://img.shields.io/badge/.net-%3E=6.0-brightgreen) ![os-require](https://img.shields.io/badge/OS-%3E%3D%20Windows%2010%20Build%201809-orange) ![IDE-require](https://img.shields.io/badge/IDE-vs2022-red) ![csharp-require](https://img.shields.io/badge/CSharp-Latest-yellow)

# Download and Install

|Nuget|Github|
|-|-|
|[WinUICommunity.Common](https://www.nuget.org/packages/WinUICommunity.Common)|[Github](https://github.com/WinUICommunity/Common)|


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
Install-Package WinUICommunity.Common
```

See the Demo app to see how to use it

# Compile source code

{% note warning %}
Please confirm that your development environment meets the requirements before compiling.
- Visual Studio 2022
    On the `Workloads` tab of the installation dialog box, select as appropriate:
    - select .NET Desktop Development
    - select `Windows App SDK` C# Templates (at the bottom of the list).
    - On the Individual components tab of the installation dialog box, in the SDKs, libraries, and frameworks section, make sure `Windows 10 SDK (10.0.19041.0)` (or 22000, 22621) is selected.
- .Net `5.x` and `6.x`

{% endnote %}

Open *.sln and Build.

See the Demo app to see how to use it

## Available Features

- Dynamic Localization without need to restart Application
- SystemBackdrop Helper class with the Support of `Mica, MicaAlt and Acrylic`
- Extensions Methods
- A lot of useful Helper Classes for working with Window, Application, Taskbar, Resources, Print and more
- NavigationView Services To implement quick and easy Navigation with AutoSuggestBox and Back Button
- Easy and Quick implementation of `Command` and `INotifyPropertyChanged` with `Observable` and `RelayCommand` classes.