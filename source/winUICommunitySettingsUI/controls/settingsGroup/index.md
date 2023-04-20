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
    <controls:SettingsCard Header="Keep screen on">
        <controls:SettingsCard.HeaderIcon>
            <SymbolIcon Symbol="SetLockScreen"/>
        </controls:SettingsCard.HeaderIcon>
        <ToggleSwitch/>
    </controls:SettingsCard>
    <controls:SettingsCard Header="Auto Download">
        <controls:SettingsCard.HeaderIcon>
            <SymbolIcon Symbol="Download"/>
        </controls:SettingsCard.HeaderIcon>
        <ToggleSwitch/>
    </controls:SettingsCard>
</controls:SettingsGroup>
```

# Demo
you can run [demo](https://github.com/WinUICommunity/SettingsUI) and see this feature.

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/SettingsGroup.png)
