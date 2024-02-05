---
title: CompositionHelper
---

# MakeLongShadow

```xml
<Grid Background="DarkRed">
    <Rectangle x:Name="ShadowElement" />
    <TextBlock x:Name="TextBlockElement"
               FontSize="148"
               FontWeight="Bold"
               Foreground="Orange"
               Text="00:10:15" />
</Grid>
```

```cs
CompositionHelper.MakeLongShadow(188, 0.3f, TextBlockElement, ShadowElement, Color.FromArgb(255, 250, 110, 93));
```

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.

![WinUICommunity](https://raw.githubusercontent.com/WinUICommunity/Resources/main/WinUICommunityDocs/LongShadowTextBlock.png)
