---
title: SimpleSettingsGroup
---

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WinUICommunity) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wuc="using:WinUICommunity"`
For use in the Csharp:
`using WinUICommunity;`
{% endnote %}

# Attributes

| Name |
|-|
|Header|
|Description|

# Example

```xml
<wuc:SimpleSettingsGroup Header="Behavior">
    <wuc:SettingsCard Header="Keep screen on">
        <wuc:SettingsCard.HeaderIcon>
            <SymbolIcon Symbol="SetLockScreen"/>
        </wuc:SettingsCard.HeaderIcon>
        <ToggleSwitch/>
    </wuc:SettingsCard>
    <wuc:SettingsCard Header="Auto Download">
        <wuc:SettingsCard.HeaderIcon>
            <SymbolIcon Symbol="Download"/>
        </wuc:SettingsCard.HeaderIcon>
        <ToggleSwitch/>
    </wuc:SettingsCard>
</wuc:SimpleSettingsGroup>
```

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.

![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/SimpleSettingsGroup.png)
