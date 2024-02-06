---
title: ColorfulShimmingEffect
---

# Attributes

| Name |
|-|
|ColorfulShimmingEffectItem|
|Content|

# Example

```xml
<wuc:ColorfulShimmingEffect>
    <wuc:ColorfulShimmingEffect.ColorfulShimmingEffectItems>
        <wuc:ColorfulShimmingEffectItem DelayTimeSpan="0"
                                        DurationTimeSpan="0:0:10"
                                        Z="50.0"
                                        Color="Yellow" />
        <wuc:ColorfulShimmingEffectItem DelayTimeSpan="0:0:0.25"
                                        DurationTimeSpan="0:0:10"
                                        Z="50.0"
                                        Color="Green" />
    </wuc:ColorfulShimmingEffect.ColorfulShimmingEffectItems>
    <TextBlock HorizontalAlignment="Center"
               FontSize="140"
               FontWeight="Bold"
               Foreground="White"
               Text="WinUICommunity" />
</wuc:ColorfulShimmingEffect>
```

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.

![WinUICommunity](https://raw.githubusercontent.com/WinUICommunity/Resources/main/WinUICommunityDocs/Win2d/ColorfulShimmingEffect.gif)
