---
title: HeaderTile
---

you should use HeaderTile in a MainLandingPage

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WinUICommunity) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wuc="using:WinUICommunity"`
For use in the Csharp:
`using WinUICommunity;`
{% endnote %}

# Available Properties

|Name|
|-|
|Title|
|Description|
|Source|
|Link|

# Simple Use
```xml
<wuc:HeaderTile
        Title="Documentation Center"
        Description="Learn how to work with controls and styles."
        Link="https://ghost1372.github.io/WinUICommunity/">
    <wuc:HeaderTile.Source>
        <Image Source="/Assets/HomeHeaderTiles/Header-WinUIGallery.png" />
    </wuc:HeaderTile.Source>
</wuc:HeaderTile>
```

![LandingsPage](https://raw.githubusercontent.com/ghost1372/Resources/main/LandingsPage/HeaderTile.png)