---
title: WindowHelper
---

# SetWindowSize
you can set your MainWindow Size:
```cs
WindowHelper.SetWindowSize(window, 200, 300);
```

# Window Height/Width Min/Max Size
you can set Window Height/Width Min/Max Size, first you need to register `RegisterWindowMinMax` method in your window class:

```cs
var windowHelper = new WindowHelper(Window window);
windowHelper.RegisterWindowMinMax();
```
now you can change window Min/Max size:
```cs
WindowHelper.MinWindowWidth = 500;
WindowHelper.MinWindowHeight = 300;

WindowHelper.MaxWindowWidth = 800;
WindowHelper.MaxWindowHeight = 600;
```

# SwitchToThisWindow

```cs
WindowHelper.SwitchToThisWindow(window);
```

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.
