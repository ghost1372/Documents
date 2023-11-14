---
title: TitleBarHelper
---

We've made it easy to use the  [customized Windows title bar](https://docs.microsoft.com/en-us/windows/apps/develop/title-bar?tabs=wasdk)

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/TitleBar.png)

you can easily define drag regions or clear drag regions for a titlebar.

# SetDragRegion

```cs
TitleBarHelper.SetDragRegion(window, NonClientRegionKind.Passthrough, myAutosuggestBox, myButton);

```

# ClearDragRegions

```cs
TitleBarHelper.ClearDragRegions(window, NonClientRegionKind.Passthrough);
```

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.
