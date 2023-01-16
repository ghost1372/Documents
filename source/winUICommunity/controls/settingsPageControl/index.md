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
<controls:SettingsPageControl ModuleDescription="Microsoft PowerToys is a set of utilities for power users to tune and streamline their Windows experience for greater productivity. Made with 💗 by Microsoft and the PowerToys community."
                                ModuleImageSource="ms-appx:///Assets/PT.png"
                                ModuleTitle="General"
                                SecondaryLinksHeader="Related information">
    <controls:SettingsPageControl.ModuleContent>
        <StackPanel Orientation="Vertical" ChildrenTransitions="{StaticResource SettingsCardsAnimations}">
            <!-- Settings Here -->
        </StackPanel>
    </controls:SettingsPageControl.ModuleContent>

    <controls:SettingsPageControl.PrimaryLinks>
        <controls:PageLink Link="https://aka.ms/powertoys"
                            Text="Documentation" />
        <controls:PageLink Link="https://aka.ms/powertoys"
                            Text="GitHub repository" />
        <controls:PageLink Link="https://aka.ms/powerToysReportBug"
                            Text="Report a bug" />
        <controls:PageLink Link="https://aka.ms/powerToysRequestFeature"
                            Text="Request a feature" />
    </controls:SettingsPageControl.PrimaryLinks>

    <controls:SettingsPageControl.SecondaryLinks>
        <controls:PageLink Link="http://go.microsoft.com/fwlink/?LinkId=521839"
                            Text="Privacy statement" />
        <controls:PageLink Link="https://github.com/microsoft/PowerToys/blob/master/NOTICE.md"
                            Text="Open-source notice" />
    </controls:SettingsPageControl.SecondaryLinks>
</controls:SettingsPageControl>
```

# Demo
you can run [demo](https://github.com/ghost1372/SettingsUI) and see this feature.

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/SettingsPageControl.png)
