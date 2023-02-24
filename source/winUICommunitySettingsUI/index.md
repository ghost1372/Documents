---
title: Welcome to WinUICommunity.SettingsUI
---

### Experience WinUI 3 quickly and easily with the help of WinUICommunity, Everything you need to develop an application is gathered in one place.

# Requirements

![dotnet-require](https://img.shields.io/badge/.net-%3E=6.0-brightgreen) ![os-require](https://img.shields.io/badge/OS-%3E%3D%20Windows%2010%20Build%201809-orange) ![IDE-require](https://img.shields.io/badge/IDE-vs2022-red) ![csharp-require](https://img.shields.io/badge/CSharp-Latest-yellow)

# Download and Install

|Nuget|Github|
|-|-|
|[WinUICommunity.SettingsUI](https://www.nuget.org/packages/WinUICommunity.SettingsUI/)|[Github](https://github.com/WinUICommunity/SettingsUI)

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

- Multiple Custom Controls such as `Windows 11` Settings Page Controls
- Custom Styles for Some Controls such as TextBlock and Button.

![Demo](https://raw.githubusercontent.com/ghost1372/Resources/main/LandingsPage/0.png)

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/0.png)

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/1.png)

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/5.png)

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/2.png)

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/3.png)

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/4.png)
