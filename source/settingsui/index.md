---
title: Welcome to SettingsUI
---

### Experience WinUI 3 quickly and easily with the help of SettingsUI, Everything you need to develop an application is gathered in one place.

# Requirements

![dotnet-require](https://img.shields.io/badge/.net-%3E=6.0-brightgreen) ![os-require](https://img.shields.io/badge/OS-%3E%3D%20Windows%2010%20Build%201809-orange) ![IDE-require](https://img.shields.io/badge/IDE-vs2022-red) ![csharp-require](https://img.shields.io/badge/CSharp-Latest-yellow)

# Download and Install

|Nuget|Github|
|-|-|
|[Nuget](https://www.nuget.org/packages/SettingsUI/)|[Github](https://github.com/ghost1372/SettingsUI)
|[Nuget](https://www.nuget.org/packages/SettingsUI.ContextMenu/)|[Github](https://github.com/ghost1372/SettingsUI)
|[Nuget](https://www.nuget.org/packages/SettingsUI.SettingsControls/)|[Github](https://github.com/ghost1372/SettingsUI)


{% note warning %}
Github is generally updated every day and is relatively unsuitable for production.
{% endnote %}

## Install
```
Install-Package SettingsUI
```

After installing, add the following resource to `app.xaml`

```xml
<ResourceDictionary Source="ms-appx:///SettingsUI/Themes/Generic.xaml"/>
```

### ContextMenu
```
Install-Package SettingsUI.ContextMenu
```

After installing, add the following codes to `Package.appxmanifest`

```xml
<Extensions>
    <desktop4:Extension Category="windows.fileExplorerContextMenus">
        <desktop4:FileExplorerContextMenus>
            <desktop5:ItemType Type="Directory"  >
                <desktop5:Verb Id="CustomMenu" Clsid="46F650E5-9959-48D6-AC13-A9637C5B3787" />
            </desktop5:ItemType>
            <desktop5:ItemType Type="*"  >
                <desktop5:Verb Id="CustomMenu" Clsid="46F650E5-9959-48D6-AC13-A9637C5B3787" />
            </desktop5:ItemType>
            <desktop5:ItemType Type="Directory\Background">
                <desktop5:Verb Id="CustomMenu" Clsid="46F650E5-9959-48D6-AC13-A9637C5B3787" />
            </desktop5:ItemType>
        </desktop4:FileExplorerContextMenus>
    </desktop4:Extension>
    <com:Extension Category="windows.comServer">
        <com:ComServer>
            <com:SurrogateServer  DisplayName="Custome Context Menu">
                <com:Class Id="46F650E5-9959-48D6-AC13-A9637C5B3787" Path="ContextMenuCustomHost.dll" ThreadingModel="STA"/>
            </com:SurrogateServer>
        </com:ComServer>
    </com:Extension>
    <uap3:Extension Category="windows.appExecutionAlias">
        <uap3:AppExecutionAlias>
            <desktop:ExecutionAlias Alias="App5.exe"/>
        </uap3:AppExecutionAlias>
    </uap3:Extension>
</Extensions>
```

`change App5.exe to your project name.`

read the docs to see how to use it

### SettingsControls
```
Install-Package SettingsUI.SettingsControls
```
After installing, add the following resource to app.xaml

```xml
<ResourceDictionary Source="ms-appx:///SettingsUI.SettingsControls/Themes/Generic.xaml"/>
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

Open SettingsUI.sln and Build.

See the Demo app to see how to use it

## Available Features

- Dynamic Localization without need to restart Application
- SystemBackdrop Helper class with the Support of `Mica, MicaAlt and Acrylic`
- Multiple Custom Controls such as `Windows 11` Settings Page Controls
- Extensions Methods
- A lot of useful Helper Classes for working with Window, Application, Taskbar, Resources, Print and more
- NavigationView Services To implement quick and easy Navigation with AutoSuggestBox and Back Button
- Custom Styles for Some Controls such as TextBlock and Button.
- Easy and Quick implementation of `Command` and `INotifyPropertyChanged` with `Observable` and `RelayCommand` classes.


![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/0.png)

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/1.png)

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/5.png)

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/2.png)

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/3.png)

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/4.png)
