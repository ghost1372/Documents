---
title: SettingsUI.ContextMenu
---

with this nuget package you can easily add a new Item in Windows 11/10 new Context Menu.

```
Install-Package SettingsUI.ContextMenu
```

After installing, add the following codes to `Package.appxmanifest`

```xml
  xmlns:com="http://schemas.microsoft.com/appx/manifest/com/windows10"
  xmlns:uap3="http://schemas.microsoft.com/appx/manifest/uap/windows10/3"
  xmlns:desktop="http://schemas.microsoft.com/appx/manifest/desktop/windows10"
  xmlns:desktop4="http://schemas.microsoft.com/appx/manifest/desktop/windows10/4"
  xmlns:desktop5="http://schemas.microsoft.com/appx/manifest/desktop/windows10/5"
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

{% note warning %}
change `Alias` from App5.exe to your applications name
{% endnote %}

now Create a new `ContextMenuItem`

```cs

using SettingsUI.ContextMenu;

ContextMenuItem menu = new ContextMenuItem
{
    Title = "Open App Here",
    AcceptDirectory = true,
    Exe = "App5.exe",
    Param = "{path}"
};
```

{% note warning %}
if you want to open your application, set `exe` like above example.
{% endnote %}

after that, we need to save our created menu:

```cs
await ContextMenuService.Ins.SaveAsync(menu);
```

# Set Custom Menu Name

you can change default name for Custom Menu like this:

```cs
ContextMenuService.Ins.SetCustomMenuName("my menu text");

```

you can use other methods like `OpenMenusFolderAsync, OpenMenuFileAsync, DeleteAsync and etc.`