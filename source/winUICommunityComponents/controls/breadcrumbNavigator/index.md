---
title: BreadcrumbNavigator
---

# Attributes
|Name|
|-|
|JsonNavigationViewService|
|BreadcrumbBarCollection|
|PrimaryItemText|
|SecondaryItemText|
|Items|

# Event
|Name|
|-|
|ItemClicked|


# Using with JsonNavigationViewService

```xml
<wuc:BreadcrumbNavigator JsonNavigationViewService="{x:Bind local:App.GetJsonNavigationViewService()}" />
```

everything will done automatically.

# Normal Usage
```xml
<wuc:BreadcrumbNavigator PrimaryItemText="Settings" SecondaryItemText="About" />
```

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.

![WinUICommunity](https://raw.githubusercontent.com/WinUICommunity/Resources/main/WinUICommunityDocs/BreadcrumbNavigator.gif)
