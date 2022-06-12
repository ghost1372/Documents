---
title: SystemBackdropsHelper
---

you can use `SystemBackdropsHelper` for accessing Mica and Acrylic Effect for your Window.

# ThemeHelper

if you want to Mica/Acrylic effect change with Windows/Application theme (Dark/Light Mode) you can use ThemeHelper with a new Initialize Method:

```cs
ThemeHelper.Initialize(m_window, true);
// Default Material is Mica if you want to Change to Acrylic:
// ThemeHelper.Initialize(m_window, true, BackdropType.DesktopAcrylic);
```

now if you want to change Material in application runtime, you should use GetCurrent Method, because GetCurrent Returns an instance of `SystemBackdropsHelper` previously created by the ThemeHelper.

```cs
public SystemBackdropsHelper backdropsHelper = SystemBackdropsHelper.GetCurrent();
backdropsHelper.SetBackdrop(BackdropType.Mica);
```

# Using Without ThemeHelper
you can use `SystemBackdropsHelper` without ThemeHelper but keep in mind that Materials will not change by changing the theme And you have to handle the theme changes yourself.

1. Initialize `SystemBackdropsHelper`

```cs
SystemBackdropsHelper backdropsHelper = SystemBackdropsHelper.CreateInstance();
backdropsHelper.Initialize(window, BackdropType.Mica);
```
2. for changing Material in runtime:

```cs
backdropsHelper.SetBackdrop(BackdropType.DesktopAcrylic);
```

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/Mica.png)

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/Acrylic.png)


# Demo
you can run [demo](https://github.com/ghost1372/SettingsUI) and see this feature.
