---
title: AllLandingPage
---

in this Page we can load all items from json file.

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WinUICommunity) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wuc="using:WinUICommunity"`
For use in the Csharp:
`using WinUICommunity;`
{% endnote %}

# Events

|Name|
|-|
|OnItemClick|

# Available Properties

|Name|
|-|
|HeaderText|
|HeaderImage|
|HeaderImageHeight|

# Simple Use
first add:

```xml
xmlns:controls="using:WinUICommunity"
```

then use AllLandingPage:

```xml
<wuc:AllLandingPage x:Name="allLandingPage" HeaderImage="ms-appx:///Assets/GalleryHeaderImage.png"
                                  HeaderText="All" Loaded="allLandingPage_Loaded"
                                  OnItemClick="allLandingPage_OnItemClick"/>
```

if you are using `JsonNavigationViewService`:

```cs
private void allLandingPage_Loaded(object sender, RoutedEventArgs e)
{
    allLandingPage.GetData(jsonNavigationViewService.DataSource);
}
```

if not:

```cs
private void allLandingPage_Loaded(object sender, RoutedEventArgs e)
{
    allLandingPage.GetDataAsync("DataModel/AppData.json");
}
```

if you want to navigate to another page:


```cs
private void allLandingPage_OnItemClick(object sender, RoutedEventArgs e)
{
    var args = (ItemClickEventArgs)e;
    var item = (DataItem)args.ClickedItem;

    Navigate(item.UniqueId);
}

public void Navigate(string uniqeId)
{
    Type pageType = Type.GetType(uniqeId);
    rootFrame.Navigate(pageType);
}
```

# Load Items from Json File
Create a folder for example `DataModel` then add a new json file `AppData.json`:
`DataModel\AppData.json`

{% note warning %}
Set BuildAction to Content, if you are in a Unpackaged Mode, set CopyToOutput to True
{% endnote %}

{% note info %}
To see details and descriptions of Json's properties, refer to <ins>**[this](https://ghost1372.github.io/winUICommunity/jsonFile)**</ins> page
{% endnote %}


```json
{
  "Groups": [
    {
      "UniqueId": "Features",
      "Title": "Features pages",
      "IsSpecialSection": false,
      "Items": [
        {
          "UniqueId": "WinUICommunity.DemoApp.Pages.ApplicationDataContainerPage",
          "Title": "ApplicationDataContainer",
          "SecondaryTitle": "Test SecondaryTitle",
          "Subtitle": "you can use ApplicationDataContainerHelper for saving and loading application settings.",
          "ImagePath": "ms-appx:///Assets/Modules/PT.png",
          "ImageIconPath": "ms-appx:///Assets/Modules/PT.png",
          "Description": "test description",
          "IsUpdated": true,
          "IncludedInBuild": true,
          "Links": [
            {
              "Title": "ApplicationDataContainerPage",
              "Uri": "https://ghost1372.github.io/winUICommunity/helpers/applicationDataContainerHelper/"
            }
          ],
          "Extra": [
            "AppBarToggleButton",
            "AppBarSeparator",
            "CommandBar"
          ]
        },
        {
          "UniqueId": "WinUICommunity.DemoApp.Pages.AppNotificationPage",
          "Title": "App Notification",
          "SecondaryTitle": "Test SecondaryTitle",
          "Subtitle": "you can use AppNotificationPage for Sending Toast Notification.",
          "ImagePath": "ms-appx:///Assets/Modules/PT.png",
          "ImageIconPath": "ms-appx:///Assets/Modules/PT.png",
          "IncludedInBuild": true,
          "Links": [
            {
              "Title": "AppNotificationPage",
              "Uri": "https://ghost1372.github.io/winUICommunity/helpers/appNotification/"
            }
          ]
        },
      ]
    },
    {
      "UniqueId": "Settings",
      "Title": "Settings pages",
      "SecondaryTitle": "Test SecondaryTitle",
      "Items": [
        {
          "UniqueId": "WinUICommunity.DemoApp.Pages.OobePage",
          "Title": "Oobe Page",
          "ApiNamespace": "DemoApp",
          "SecondaryTitle": "Test SecondaryTitle",
          "Subtitle": "Settings Page with a Hero Image",
          "ImagePath": "ms-appx:///Assets/Modules/PT.png",
          "ImageIconPath": "ms-appx:///Assets/Modules/PT.png",
          "IsUpdated": true,
          "IncludedInBuild": true,
        }
      ]
    }
  ]
}

```

## Enable/Disable Items based on Page Exist
if you want to control items enable/disable, you can do this in 2 way (default is `autoIncludedInBuild = false`):

### AutoIncludedInBuild
we will check if page exist or not.

### IncludedInBuild
you can simply enable/disable items in `AppData.json` file just set `IncludedInBuild` to `true` or `false`


![LandingsPage](https://raw.githubusercontent.com/ghost1372/Resources/main/LandingsPage/AllLandingsPage.png)