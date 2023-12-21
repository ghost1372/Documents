---
title: Backdrop
---
there is some custom SystemBackdrop which you can use in your app:

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