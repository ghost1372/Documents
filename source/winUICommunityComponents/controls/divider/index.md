---
title: Divider
---

The dividing line that separates the content.

# Attributes
|Property|
|-|
|Content|
|LineStroke|
|LineStrokeThickness|
|LineStrokeDashArray|
|ContentPadding|
|HorizontalContentAlignment|
|Orientation|

# Example

```xml
<StackPanel Margin="10"
            ChildrenTransitions="{StaticResource SettingsCardsAnimations}"
            Spacing="10">
    <StackPanel Orientation="Horizontal"
                Spacing="10">
        <StackPanel Width="300">
            <wuc:Divider />
            <wuc:Divider Content="Title" />
            <wuc:Divider ContentPadding="0">
                <Button Content="More" />
            </wuc:Divider>
            <wuc:Divider LineStroke="{ThemeResource AccentAAFillColorDefaultBrush}"
                            LineStrokeThickness="2" />
            <wuc:Divider LineStroke="{ThemeResource SystemFillColorCriticalBrush}"
                            LineStrokeThickness="2" />

            <wuc:Divider LineStrokeDashArray="2,2" />
        </StackPanel>
        <StackPanel Width="300">
            <wuc:Divider HorizontalContentAlignment="Left"
                            Content="Title" />
            <wuc:Divider HorizontalContentAlignment="Right"
                            Content="Title"
                            ContentPadding="10,0" />
            <StackPanel Orientation="Horizontal">
                <Button Content="Button" />
                <wuc:Divider MaxHeight="16"
                                Orientation="Vertical" />
                <Button Content="Button" />
                <wuc:Divider MaxHeight="16"
                                Orientation="Vertical" />
                <Button Content="Button" />
            </StackPanel>
            <StackPanel Margin="0,16,0,0"
                        Orientation="Horizontal">
                <Button Content="Button" />
                <wuc:Divider MaxHeight="16"
                                LineStrokeThickness="2"
                                Orientation="Vertical" />
                <Button Content="Button" />
                <wuc:Divider MaxHeight="16"
                                LineStrokeThickness="2"
                                Orientation="Vertical" />
                <Button Content="Button" />
            </StackPanel>
            <StackPanel Margin="0,16,0,0"
                        Orientation="Horizontal">
                <Button Content="Button" />
                <wuc:Divider MaxHeight="16"
                                LineStroke="{ThemeResource AccentAAFillColorTertiaryBrush}"
                                LineStrokeThickness="2"
                                Orientation="Vertical" />
                <Button Content="Button" />
                <wuc:Divider MaxHeight="16"
                                LineStroke="{ThemeResource SystemFillColorCriticalBrush}"
                                LineStrokeThickness="2"
                                Orientation="Vertical" />
                <Button Content="Button" />
            </StackPanel>
        </StackPanel>
    </StackPanel>
</StackPanel>
```


# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.

![WinUICommunity](https://raw.githubusercontent.com/WinUICommunity/Resources/main/WinUICommunityDocs/Divider.png)
