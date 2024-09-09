---
title: WindowHelper
---

# SetWindowSize
you can set your MainWindow Size:
```cs
WindowHelper.SetWindowSize(appWindow, 200, 300);
```

# MoveAndResizeCenterScreen

```cs
WindowHelper.MoveAndResizeCenterScreen(window, width, height);
```

# MoveAndResize
```cs
WindowHelper.MoveAndResize(window, x, y, width, height);
```

# MoveAndResize
```cs
WindowHelper.Move(appWindow, x, y);
```

# Window Height/Width Min/Max Size
you can set Window Height/Width Min/Max Size, first you need to register `RegisterWindowMinMax` method in your window class:

```cs
var windowHelper = new WindowHelper(window);
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

or

WindowHelper.SwitchToThisWindow(hwnd);

```

# ReActivateWindow
```cs
WindowHelper.ReActivateWindow(window);

or

WindowHelper.ReActivateWindow(hwnd);

```

# CreateWindowWithFrame

```cs
var windowWithFrame = WindowHelper.CreateWindowWithFrame();

//windowWithFrame.rootFrame
//windowWithFrame.window
```

# SetWindowCornerRadius

```cs
WindowHelper.SetWindowCornerRadius(window, NativeValues.DWM_WINDOW_CORNER_PREFERENCE.DWMWCP_ROUND);

or

WindowHelper.SetWindowCornerRadius(hwnd, NativeValues.DWM_WINDOW_CORNER_PREFERENCE.DWMWCP_ROUND);

```

# GetTopLevelWindows

```cs
var topWindows = WindowHelper.GetTopLevelWindows();
```

# GetProcessWindowList

```cs
var processWindowList = WindowHelper.GetProcessWindowList();
```

# GetWindowText

```cs
var windowText = WindowHelper.GetWindowText(hwnd);
```

# GetClassName

```cs
var windowClassName = WindowHelper.GetClassName(hwnd);
```

# GetCurrentAppWindow

```cs
var appWindow = WindowHelper.GetCurrentAppWindow();
```

# GetAppWindow / GetAppWindow2

```cs

// Use XamlRoot
var appWindow = WindowHelper.GetAppWindow(element);

or

// Use Microsoft.UI.Composition.Visual
var appWindow = WindowHelper.GetAppWindow2(element);

```

# GetWindowHandle / GetWindowHandle2

```cs

// Use XamlRoot
var hwnd = WindowHelper.GetWindowHandle(element);

or

// Use Microsoft.UI.Composition.Visual
var hwnd = WindowHelper.GetWindowHandle2(element);

```

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.
