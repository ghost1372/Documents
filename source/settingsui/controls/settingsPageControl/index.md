---
title: SettingsPageControl
---

```cs
public sealed partial class SettingsPageControl : UserControl
```

# Attributes

| Name |
|-|
|ModuleTitle|
|ModuleDescription|
|ModuleImageSource|
|PrimaryLinks|
|SecondaryLinksHeader|
|SecondaryLinks|
|ModuleContent|

# Example

```xml
<controls:SettingsPageControl
    IsTabStop="False"
    ModuleDescription="you can use ApplicationDataContainerHelper for saving and loading application settings."
    ModuleImageSource="ms-appx:///Assets/Modules/PT.png"
    ModuleTitle="ApplicationDataContainerHelper">
    <controls:SettingsPageControl.ModuleContent>
        <StackPanel Spacing="10">
            
        </StackPanel>
    </controls:SettingsPageControl.ModuleContent>
</controls:SettingsPageControl>
```

# Demo
you can run [demo](https://github.com/ghost1372/SettingsUI) and see this feature.
