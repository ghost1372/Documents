---
title: Backdrop
---
there is some custom SystemBackdrop which you can use in your app:

# MicaBackdrop

## Example

```cs
Window.SystemBackdrop = new MicaBackdrop() { Kind = MicaKind.Base };
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


![WinUICommunity](https://raw.githubusercontent.com/WinUICommunity/Resources/main/WinUICommunityDocs/TransparentBackdrop.png)

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.