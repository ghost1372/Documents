---
title: KeyVisual
---

```cs
public sealed class KeyVisual : Control
```

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WinUICommunity) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wuc="using:WinUICommunity"`
For use in the Csharp:
`using WinUICommunity;`
{% endnote %}

# Attributes

|Name|
|-|
|VisualType|
|Content|
|IsError|

# Example

```xml
<wuc:KeyVisual IsTabStop="False" VisualType="SmallOutline" Content="Ctrl+F5" />
<wuc:KeyVisual IsTabStop="False" VisualType="Small" Content="Ctrl+F5" />
<wuc:KeyVisual IsTabStop="False" VisualType="Large" Content="Ctrl+F5" />
```

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.

![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/KeyVisual.png)
