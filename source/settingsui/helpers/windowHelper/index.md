---
title: WindowHelper
---

# SetWindowSize
you can set your MainWindow Size:
```cs
WindowHelper.SetWindowSize(window, 200, 300);
//OR
window.SetWindowSize(200, 300);
```

# Window Height/Width Min/Max Size
you can set Window Height/Width Min/Max Size, first you need to register `RegisterWindowMinMax` method in your window class:

```cs
WindowHelper.RegisterWindowMinMax(window);
//OR you can use extension method
//RegisterWindowMinMax();
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
var appWindow = WindowHelper.GetAppWindowForCurrentWindow(window);
```

# GetWindowHandleForCurrentWindow

```cs
var hwnd = WindowHelper.GetWindowHandleForCurrentWindow(window);
```
# GetWindowIdFromCurrentWindow

```cs
var windowId = WindowHelper.GetWindowIdFromCurrentWindow(window);
```

# GetWindowForElement

```cs
var window = WindowHelper.GetWindowForElement(uiElement);
```

# Active Window

## CreateWindow
Create a new Window with track of all active Windows ability 
```cs
var window = WindowHelper.CreateWindow();
```

## TrackWindow
track of all active Windows.  The app code must call WindowHelper.CreateWindow 
rather than "new Window" so we can keep track of all the relevant windows.

```cs
WindowHelper.TrackWindow(window);
```

## ActiveWindows
you can get all Active windows from `ActiveWindows` property

```cs
var windows = WindowHelper.ActiveWindows;
```
# SwitchToThisWindow

```cs
WindowHelper.SwitchToThisWindow(window);
```
# Demo
you can run [demo](https://github.com/ghost1372/SettingsUI) and see this feature.
