---
title: OOBEPageControl
---

```cs
public sealed partial class OOBEPageControl : UserControl
```

# Attributes

| Name |
|-|
|Title|
|Description|
|HeroImage|
|PageContent|

# Example

```xml
<Page
    xmlns:controls="using:SettingsUI.Controls">
    <controls:OOBEPageControl Title="FileExplorer Preview"
        HeroImage="ms-appx:///Assets/Modules/OOBE/FileExplorer.png"
        Description="These settings allow you to manage your Windows File Explorer custom preview handlers.">
        <controls:OOBEPageControl.PageContent>
            <StackPanel Orientation="Vertical">
                <TextBlock Text="How to enable"
                           Style="{ThemeResource OobeSubtitleStyle}" />
                <StackPanel Orientation="Horizontal" Spacing="12" Margin="0,24,0,0">
                    <Button Content="Open Settings"/>
                    <HyperlinkButton Style="{StaticResource TextButtonStyle}">
                        <TextBlock Text="Learn more about File Explorer add-ons" TextWrapping="Wrap" />
                    </HyperlinkButton>
                </StackPanel>
            </StackPanel>
        </controls:OOBEPageControl.PageContent>
    </controls:OOBEPageControl>
</Page>
```

# Demo
you can run [demo](https://github.com/ghost1372/SettingsUI) and see this feature.
