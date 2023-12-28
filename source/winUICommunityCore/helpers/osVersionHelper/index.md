---
title: OSVersionHelper
---

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WinUICommunity) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wuc="using:WinUICommunity"`
For use in the Csharp:
`using WinUICommunity;`
{% endnote %}

# Available Methods

|Name|
|-|
|IsWindows10_1809|
|IsWindows10_1809_OrGreater|
|IsWindows11_22000|
|IsWindows11_22000_OrGreater|
|IsWindows11_22621|
|IsWindows11_22621_OrGreater|
|IsEqualOrGreater|

```cs
var getOSVersion = OSVersionHelper.GetOSVersion();
//return: 10.0.22621.2
var isWindows11 = OSVersionHelper.IsWindows11;
//return: true/false
```