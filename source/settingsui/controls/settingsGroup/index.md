---
title: SettingsGroup
---

# Attributes

| Name |
|-|
|Header|
|Description|

# Example

```xml
<controls:SettingsGroup Header="Behavior">
    <controls:Setting Header="Keep screen on">
        <controls:Setting.Icon>
            <SymbolIcon Symbol="SetLockScreen"/>
        </controls:Setting.Icon>
        <controls:Setting.ActionContent>
            <ToggleSwitch/>
        </controls:Setting.ActionContent>
    </controls:Setting>
    <controls:Setting Header="Auto Download">
        <controls:Setting.Icon>
            <SymbolIcon Symbol="Download"/>
        </controls:Setting.Icon>
        <controls:Setting.ActionContent>
            <ToggleSwitch/>
        </controls:Setting.ActionContent>
    </controls:Setting>
</controls:SettingsGroup>
```

# Demo
you can run [demo](https://github.com/ghost1372/SettingsUI) and see this feature.

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/SettingsGroup.png)
