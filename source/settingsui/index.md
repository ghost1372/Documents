---
title: Welcome to SettingsUI
---

Windows 11 settings page in WinUI 3 applications ported from Powertoys with useful Helper classes.

# Requirements

![dotnet-require](https://img.shields.io/badge/.net-%3E%3D5.0-brightgreen) ![os-require](https://img.shields.io/badge/OS-%3E%3D%20Windows%2010%20Build%201809-orange) ![IDE-require](https://img.shields.io/badge/IDE-vs2022-red) ![csharp-require](https://img.shields.io/badge/CSharp-Latest-yellow)

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

Open SettingsUI.sln and Build.

See the Demo app to see how to use it

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/0.png)

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/1.png)

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/5.png)

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/2.png)

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/3.png)

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/4.png)
