---
title: SettingsPageControl
---

```cs
public sealed partial class SettingsPageControl : UserControl
```

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
|ModuleTitle|
|ModuleDescription|
|ModuleImageSource|
|PrimaryLinks|
|SecondaryLinksHeader|
|SecondaryLinks|
|ModuleContent|

# Example

```xml
<wuc:SettingsPageControl ModuleDescription="Microsoft PowerToys is a set of utilities for power users to tune and streamline their Windows experience for greater productivity. Made with 💗 by Microsoft and the PowerToys community."
                                ModuleImageSource="ms-appx:///Assets/PT.png"
                                ModuleTitle="General"
                                SecondaryLinksHeader="Related information">
    <wuc:SettingsPageControl.ModuleContent>
        <StackPanel Orientation="Vertical" ChildrenTransitions="{StaticResource SettingsCardsAnimations}">
            <!-- Settings Here -->
        </StackPanel>
    </wuc:SettingsPageControl.ModuleContent>

    <wuc:SettingsPageControl.PrimaryLinks>
        <wuc:PageLink Link="https://aka.ms/powertoys"
                            Text="Documentation" />
        <wuc:PageLink Link="https://aka.ms/powertoys"
                            Text="GitHub repository" />
        <wuc:PageLink Link="https://aka.ms/powerToysReportBug"
                            Text="Report a bug" />
        <wuc:PageLink Link="https://aka.ms/powerToysRequestFeature"
                            Text="Request a feature" />
    </wuc:SettingsPageControl.PrimaryLinks>

    <wuc:SettingsPageControl.SecondaryLinks>
        <wuc:PageLink Link="http://go.microsoft.com/fwlink/?LinkId=521839"
                            Text="Privacy statement" />
        <wuc:PageLink Link="https://github.com/microsoft/PowerToys/blob/master/NOTICE.md"
                            Text="Open-source notice" />
    </wuc:SettingsPageControl.SecondaryLinks>
</wuc:SettingsPageControl>
```

# Demo
you can run [demo](https://github.com/WindowUIOrg/WindowUI) and see this feature.

![WindowUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/SettingsPageControl.png)
