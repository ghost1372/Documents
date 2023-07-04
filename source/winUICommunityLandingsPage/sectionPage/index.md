---
title: SectionPage
---

this is a Built-in Page for showing Pages (Sub items of a Group)

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WinUICommunity) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wuc="using:WinUICommunity"`
For use in the Csharp:
`using WinUICommunity;`
{% endnote %}

# Event
|Name|
|-|
|OnItemClick|

# Simple Use

first add a SectionPage in a Page:

```xml
<Page
    x:Class="WinUICommunity.DemoApp.Pages.SectionPage"
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    xmlns:wuc="using:WinUICommunity">

    <wuc:SectionPage x:Name="sectionPage" OnItemClick="SectionPage_OnItemClick"/>
</Page>

```
now we should navigate our page to SectionPage:

```cs
Navigate(typeof(SectionPage), UniqueId);
```

{% note warning %}
`UniqueId` is your full address of your page
{% endnote %}

now load items and navigate to a desired pages:

```cs
protected override void OnNavigatedTo(NavigationEventArgs e)
{
    base.OnNavigatedTo(e);
    sectionPage.GetDataAsync(e);
}

private void SectionPage_OnItemClick(object sender, Microsoft.UI.Xaml.RoutedEventArgs e)
{
    var args = (ItemClickEventArgs)e;
    var item = (ControlInfoDataItem)args.ClickedItem;
    Navigate(typeof(ItemPage), item.UniqueId);
    MainWindow.Instance.navigationViewManager.NavigateForJson(typeof(ItemPage), item.UniqueId);
}
```

{% note warning %}
`UniqueId` is your full address of your page
{% endnote %}

![LandingsPage](https://raw.githubusercontent.com/ghost1372/Resources/main/LandingsPage/SectionPage.png)