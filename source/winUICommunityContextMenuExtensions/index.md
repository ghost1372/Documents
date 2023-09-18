---
title: WinUICommunity.ContextMenuExtensions
---

with this nuget package you can easily add a new Item in Windows 11/10 new Context Menu.

```
Install-Package WinUICommunity.ContextMenuExtensions
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
                <desktop5:Verb Id="CustomMenu" Clsid="3EB53D8C-1221-451F-80AE-50E5B67E42DF" />
            </desktop5:ItemType>
            <desktop5:ItemType Type="*"  >
                <desktop5:Verb Id="CustomMenu" Clsid="3EB53D8C-1221-451F-80AE-50E5B67E42DF" />
            </desktop5:ItemType>
            <desktop5:ItemType Type="Directory\Background">
                <desktop5:Verb Id="CustomMenu" Clsid="3EB53D8C-1221-451F-80AE-50E5B67E42DF" />
            </desktop5:ItemType>
        </desktop4:FileExplorerContextMenus>
    </desktop4:Extension>
    <com:Extension Category="windows.comServer">
        <com:ComServer>
            <com:SurrogateServer  DisplayName="Custome Context Menu">
                <com:Class Id="3EB53D8C-1221-451F-80AE-50E5B67E42DF" Path="ContextMenuCustomHost.dll" ThreadingModel="STA"/>
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

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WinUICommunity) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wuc="using:WinUICommunity"`
For use in the Csharp:
`using WinUICommunity;`
{% endnote %}

now Create a new `ContextMenuItem`

```cs

using WinUICommunity;

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