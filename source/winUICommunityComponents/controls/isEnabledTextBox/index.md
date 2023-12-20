---
title: IsEnabledTextBox
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
|Text|

# Example

```xml
<CheckBox Name="check">
    <StackPanel Orientation="Vertical">
        <TextBlock x:Name="IncludeInGlobalResultTitle"
                    Margin="0,10,0,0"
                    Text="Include in global result" />
        <wuc:IsEnabledTextBlock FontSize="{StaticResource SecondaryTextFontSize}"
                                        IsEnabled="{Binding ElementName=check, Path=IsChecked}"
                                        Text="Show results on queries without direct activation command" />
    </StackPanel>
</CheckBox>
```

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.

![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/IsEnabledTextBox_UnChecked.png)

![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/IsEnabledTextBox_Checked.png)