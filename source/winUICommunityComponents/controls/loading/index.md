---
title: Loading
---

The Loading controls is for showing an animation with some content when the user should wait in some tasks of the app.

# Example

```xml
<wuc:Loading IsLoading="{x:Bind LoadingState, Mode=OneWay}">
    <wuc:Loading.Content>
        <StackPanel Orientation="Vertical"
                    Spacing="8">
            <ProgressRing IsActive="True" />
            <TextBlock Foreground="{ThemeResource TextFillColorSecondaryBrush}"
                        Style="{StaticResource CaptionTextBlockStyle}"
                        Text="{x:Bind LoadingContent, Mode=OneWay}" />
        </StackPanel>
    </wuc:Loading.Content>
</wuc:Loading>
```

![WindowUI](https://raw.githubusercontent.com/WindowUIOrg/Resources/main/WindowUIDocs/Loading.gif)


# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.
