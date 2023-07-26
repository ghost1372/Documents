----
title: SectionPage
---

this is a Built-in Page for showing Pages (Sub items of a Group)

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

{% note info %}
if you are using JsonNavigationViewService, you dont need `Navigate(typeof(SectionPage), UniqueId);` anymore.
{% endnote %}

now load items and navigate to a desired pages:

```cs
protected override void OnNavigatedTo(NavigationEventArgs e)
{
    var uniqueId = e.Parameter as string;
    sectionPage.GetData(jsonNavigationViewService.DataSource, uniqueId);
    sectionPage.OrderBy(i => i.Title);
}

private void SectionPage_OnItemClick(object sender, Microsoft.UI.Xaml.RoutedEventArgs e)
{
    var args = (ItemClickEventArgs)e;
    var item = (DataItem)args.ClickedItem;
    jsonNavigationViewService.NavigateTo(item.UniqueId);
}
```

{% note warning %}
`UniqueId` is your full address of your page
{% endnote %}

![LandingsPage](https://raw.githubusercontent.com/ghost1372/Resources/main/LandingsPage/SectionPage.png)