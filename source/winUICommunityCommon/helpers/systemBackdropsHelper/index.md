---
title: SystemBackdropsHelper
---

you can use `SystemBackdropsHelper` for accessing Mica and Acrylic Effect for your Window.

# ThemeManager

if you want to Mica/Acrylic effect change with Windows/Application theme (Dark/Light Mode) you can use `ThemeManager`:

```cs
ThemeManager.Initialize(window, BackdropType.Mica);
```

{% note info %}
for more info, please see [here](https://ghost1372.github.io/winUICommunityCommon/tools/themeManager/)
{% endnote %}

# Using Without ThemeManager
you can use `SystemBackdropsHelper`

```cs
SystemBackdropsHelper systemBackdropsHelper = new SystemBackdropsHelper(m_window);
systemBackdropsHelper.SetBackdrop(BackdropType.Mica);
```

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/Mica.png)

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/Acrylic.png)


# Demo
you can run [demo](https://github.com/ghost1372/SettingsUI) and see this feature.
