---
title: Backdrop
---
there are some custom SystemBackdrop which you can use in your app:

# MicaBackdrop

## Example

```cs
Window.SystemBackdrop = new MicaBackdrop() { Kind = MicaKind.Base };
```

or

```xml
<Window ...
   xmlns:wuc="using:WinUICommunity">
    <Window.SystemBackdrop>
        <wuc:MicaBackdrop />
    </Window.SystemBackdrop>
</Window>
```



# AcrylicBackdrop
```cs
AcrylicBackdrop : SystemBackdrop
```

## Example

```cs
Window.SystemBackdrop = new AcrylicBackdrop() { Kind = DesktopAcrylicKind.Base };
```
or
```cs
Window.SystemBackdrop = new AcrylicBackdrop() { Kind = DesktopAcrylicKind.Thin };
```

or

```xml
<Window ...
   xmlns:wuc="using:WinUICommunity">
    <Window.SystemBackdrop>
        <wuc:AcrylicBackdrop />
    </Window.SystemBackdrop>
</Window>
```

{% note info %}
if you use Acrylic or Mica Backdrop, you can change backdrop config with:
ConfigBackdropTintColor, ConfigBackdropFallBackColor, ConfigBackdropTintOpacity and ConfigBackdropLuminosityOpacity 
{% endnote %}

![WinUICommunity](https://raw.githubusercontent.com/WinUICommunity/Resources/main/WinUICommunityDocs/AcrylicBaseBackdrop.png)

![WinUICommunity](https://raw.githubusercontent.com/WinUICommunity/Resources/main/WinUICommunityDocs/AcrylicThinBackdrop.png)


# TransparentBackdrop
```cs
TransparentBackdrop : SystemBackdrop
```

## Example

```cs
Window.SystemBackdrop = new TransparentBackdrop();
```

or

```cs
Window.SystemBackdrop = new TransparentBackdrop() { TintColor = WinUICommunity.ColorHelper.GetColorFromHex("#554444ff") };
```

or

```xml
<Window ...
   xmlns:wuc="using:WinUICommunity">
    <Window.SystemBackdrop>
        <wuc:TransparentBackdrop TintColor="#554444ff" />
    </Window.SystemBackdrop>
</Window>
```


# CompositionBrushBackdrop

you can use `CompositionBrushBackdrop` for creating more backdrop

## Example
### BlurredBackdrop

```cs
public class BlurredBackdrop : CompositionBrushBackdrop
{
    protected override Windows.UI.Composition.CompositionBrush CreateBrush(Windows.UI.Composition.Compositor compositor)
        => compositor.CreateHostBackdropBrush();
}
```

### ColorAnimatedBackdrop

```cs
public class ColorAnimatedBackdrop : CompositionBrushBackdrop
{
    protected override Windows.UI.Composition.CompositionBrush CreateBrush(Windows.UI.Composition.Compositor compositor)
    {
        var brush = compositor.CreateColorBrush(Windows.UI.Color.FromArgb(255,255,0,0));
        var animation = compositor.CreateColorKeyFrameAnimation();
        var easing = compositor.CreateLinearEasingFunction();
        animation.InsertKeyFrame(0, Colors.Red, easing);
        animation.InsertKeyFrame(.333f, Colors.Green, easing);
        animation.InsertKeyFrame(.667f, Colors.Blue, easing);
        animation.InsertKeyFrame(1, Colors.Red, easing);
        animation.InterpolationColorSpace = Windows.UI.Composition.CompositionColorSpace.Hsl;
        animation.Duration = TimeSpan.FromSeconds(15);
        animation.IterationBehavior = Windows.UI.Composition.AnimationIterationBehavior.Forever;
        brush.StartAnimation("Color", animation);
        return brush;
    }
}
```


![WinUICommunity](https://raw.githubusercontent.com/WinUICommunity/Resources/main/WinUICommunityDocs/TransparentBackdrop.png)

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.