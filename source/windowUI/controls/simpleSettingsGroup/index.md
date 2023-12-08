---
title: SimpleSettingsGroup
---

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WindowUI) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wui="using:WindowUI"`
For use in the Csharp:
`using WindowUI;`
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
you can run [demo](https://github.com/WindowUIOrg/WindowUI) and see this feature.

![WindowUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/SimpleSettingsGroup.png)
