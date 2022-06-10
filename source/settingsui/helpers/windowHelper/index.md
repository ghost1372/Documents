---
title: WindowHelper
---

# SetWindowSize
you can set your MainWindow Size:
```cs
IntPtr hWnd = WinRT.Interop.WindowNative.GetWindowHandle(this);
WindowHelper.SetWindowSize(, 200, 300);
```

# Window Height/Width Min/Max Size
you can set Window Height/Width Min/Max Size, first you need to register `RegisterWindowMinMax` method in your window class:

```cs
public MainWindow()
{
    this.InitializeComponent();
    WindowHelper.RegisterWindowMinMax(this);
    //OR you can use extension method
    //RegisterWindowMinMax();
}
```
now you can change window Min/Max size:
```cs
WindowHelper.MinWindowWidth = 500;
WindowHelper.MinWindowHeight = 300;

WindowHelper.MaxWindowWidth = 800;
WindowHelper.MaxWindowHeight = 600;
```

# GetAppWindowForCurrentWindow
you can get AppWindow for Current Window:
```cs
var appWindow = WindowHelper.GetAppWindowForCurrentWindow(this);
```

# GetWindowHandleForCurrentWindow

# GetWindowIdFromCurrentWindow

# GetWindowForElement

# CreateWindow

# TrackWindow

# SwitchToThisWindow

# Demo
you can run [demo](https://github.com/ghost1372/SettingsUI) and see this feature.
