---
title: PageHeader
---

this is a PageHeader for showing in a ItemPage. you can handle properties from a ItemPage

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
|DocumentationDropDownText|
|DocumentationDropDownIconElement|
|HeaderLeftContent|
|HeaderRightContent|
|PageHeaderVisibility|
|Item|

```xml
<wuc:PageHeader x:Name="pageHeader" Visibility="{x:Bind PageHeaderVisibility}" Item="{x:Bind Item, Mode=OneWay}" />
```

![LandingsPage](https://raw.githubusercontent.com/ghost1372/Resources/main/LandingsPage/PageHeader.png)