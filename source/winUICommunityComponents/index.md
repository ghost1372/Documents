---
title: Welcome to WinUICommunity
---

### Experience WinUI 3 quickly and easily with the help of WinUICommunity, Everything you need to develop an application is gathered in one place.

# Requirements

![dotnet-require](https://img.shields.io/badge/.net-%3E=6.0-brightgreen) ![os-require](https://img.shields.io/badge/OS-%3E%3D%20Windows%2010%20Build%201809-orange) ![IDE-require](https://img.shields.io/badge/IDE-vs2022-red) ![csharp-require](https://img.shields.io/badge/CSharp-Latest-yellow)

# Download and Install

|Nuget|Github|
|-|-|
|[WinUICommunity.Components](https://www.nuget.org/packages/WinUICommunity.Components)|[Github](https://github.com/WinUICommunity/WinUICommunity)|

{% note warning %}
Github is generally updated every day and is relatively unsuitable for production.
{% endnote %}

# Project Template
for creating a new project easily, you can use our project templates:

download and install our vsix package from Marketplace:

[WinUICommunityTemplates](https://marketplace.visualstudio.com/items?itemName=MahdiHosseini.WinUICommunityTemplates)

![WinUICommunityTemplates](https://raw.githubusercontent.com/WinUICommunity/Resources/main/WinUICommunity-Templates/Demo-WinUICommunityTemplates.png)

![WinUICommunityTemplates](https://raw.githubusercontent.com/WinUICommunity/Resources/main/WinUICommunity-Templates/1.png)

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WinUICommunity) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wuc="using:WinUICommunity"`
For use in the Csharp:
`using WinUICommunity;`
{% endnote %}

# Compile source code

{% note warning %}
Please confirm that your development environment meets the requirements before compiling.
- Visual Studio 2022
    On the `Workloads` tab of the installation dialog box, select as appropriate:
    - select .NET Desktop Development
    - select `Windows App SDK` C# Templates (at the bottom of the list).
    - On the Individual components tab of the installation dialog box, in the SDKs, libraries, and frameworks section, make sure `Windows 10 SDK (10.0.19041.0)` (or 22000, 22621) is selected.
- .Net `5.x`, `6.x`, `7.x` and `8.x`

{% endnote %}

Open *.sln and Build.

See the Demo app to see how to use it

![Demo](https://raw.githubusercontent.com/ghost1372/Resources/main/LandingsPage/0.png)

![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/0.png)

![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/1.png)

![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/5.png)

![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/2.png)

![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/3.png)

![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/4.png)
