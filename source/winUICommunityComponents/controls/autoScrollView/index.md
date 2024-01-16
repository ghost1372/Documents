---
title: AutoScrollView
---

# Attributes
|Property|
|-|
|Spacing|
|IsPlaying|
|ScrollingPixelsPreSecond|


# Example With TextBlock

```xml
<wuc:AutoScrollView IsPlaying="True">
    <TextBlock Text="Long Text"
               TextTrimming="None" />
</wuc:AutoScrollView>
```

# Example With Button Content

```xml
<ToggleButton MaxWidth="150"
              Margin="0,20"
              Padding="0,5,0,6"
              IsChecked="True">
    <wuc:AutoScrollView Padding="11,0"
                        IsPlaying="True">
        <TextBlock Text="Long Text"
                   TextTrimming="CharacterEllipsis" />
    </wuc:AutoScrollView>
</ToggleButton>
```

# Example / Run Fast

```xml
<wuc:AutoScrollView Margin="0,20"
                    IsPlaying="True"
                    ScrollingPixelsPreSecond="200">
    <TextBlock Text="Long Text"
               TextTrimming="None" />
</wuc:AutoScrollView>
```

![WinUICommunity](https://raw.githubusercontent.com/WinUICommunity/Resources/main/WinUICommunityDocs/AutoScrollView.gif)


# Example with OpacityMaskView

```xml
<wuc:OpacityMaskView>
    <wuc:OpacityMaskView.OpacityMask>
        <LinearGradientBrush StartPoint="0,0" EndPoint="1,0">
            <GradientStop Offset="0" Color="Transparent" />
            <GradientStop Offset="0.02" Color="#FFFFFFFF" />
            <GradientStop Offset="0.98" Color="#FFFFFFFF" />
            <GradientStop Offset="1" Color="Transparent" />
        </LinearGradientBrush>
    </wuc:OpacityMaskView.OpacityMask>
    <wuc:AutoScrollView Margin="0,20"
                        Padding="10,0"
                        IsPlaying="True">
        <TextBlock Text="Long Text"
                   TextTrimming="None" />
    </wuc:AutoScrollView>
</wuc:OpacityMaskView>
```

# Example With Mouse Hover

```xml
<wuc:AutoScrollView x:Name="AutoScrollHoverEffectView"
                    Margin="0,20"
                    PointerCanceled="AutoScrollHoverEffectView_PointerCanceled"
                    PointerEntered="AutoScrollHoverEffectView_PointerEntered"
                    PointerExited="AutoScrollHoverEffectView_PointerExited"
                    IsPlaying="False">
    <TextBlock Text="Long Text"
               TextTrimming="CharacterEllipsis" />
</wuc:AutoScrollView>
```

```cs
private void AutoScrollHoverEffectView_PointerCanceled(object sender, Microsoft.UI.Xaml.Input.PointerRoutedEventArgs e)
{
    AutoScrollHoverEffectView.IsPlaying = false;
}

private void AutoScrollHoverEffectView_PointerEntered(object sender, Microsoft.UI.Xaml.Input.PointerRoutedEventArgs e)
{
    AutoScrollHoverEffectView.IsPlaying = true;
}

private void AutoScrollHoverEffectView_PointerExited(object sender, Microsoft.UI.Xaml.Input.PointerRoutedEventArgs e)
{
    AutoScrollHoverEffectView.IsPlaying = false;
}
```

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.

![WinUICommunity](https://raw.githubusercontent.com/WinUICommunity/Resources/main/WinUICommunityDocs/AutoScrollView2.gif)
