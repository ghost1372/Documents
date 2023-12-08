---
title: AllLandingPage
---

in this Page we can load all items from json file.

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WindowUI) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wui="using:WindowUI"`
For use in the Csharp:
`using WindowUI;`
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
|HeaderFontSize|

# Override values

```xml
<x:Double x:Key="LandingItemTitleFontSize">14</x:Double>
<x:Double x:Key="LandingItemSubtitleFontSize">12</x:Double>
```

# Simple Use
first add:

```xml
xmlns:controls="using:WindowUI"
```

then use AllLandingPage:

```xml
<wuc:AllLandingPage x:Name="allLandingPage" HeaderImage="ms-appx:///Assets/GalleryHeaderImage.png"
                                  HeaderText="All" Loaded="allLandingPage_Loaded"
                                  OnItemClick="allLandingPage_OnItemClick"/>
```

if you are using `JsonNavigationViewService`:

```cs
protected override void OnNavigatedTo(NavigationEventArgs e)
{
    base.OnNavigatedTo(e);
    allLandingsPage.GetData(jsonNavigationViewService.DataSource);
    allLandingsPage.OrderBy(i => i.Title);
}
```

if not:

```cs
protected override void OnNavigatedTo(NavigationEventArgs e)
{
    base.OnNavigatedTo(e);
    allLandingPage.GetDataAsync("DataModel/AppData.json");
    allLandingsPage.OrderBy(i => i.Title);
}
```

if you want to navigate to another page:


```cs
private void allLandingPage_OnItemClick(object sender, RoutedEventArgs e)
{
    var args = (ItemClickEventArgs)e;
    var item = (DataItem)args.ClickedItem;
    jsonNavigationViewService.NavigateTo(item.UniqueId);
}
```

# Load Items from Json File
Create a folder for example `DataModel` then add a new json file `AppData.json`:
`DataModel\AppData.json`

{% note warning %}
Set BuildAction to Content, if you are in a Unpackaged Mode, set CopyToOutput to True
{% endnote %}

{% note info %}
To see details and descriptions of Json's properties, refer to <ins>**[this](https://ghost1372.github.io/windowUIOrg/jsonFile)**</ins> page
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
          "UniqueId": "WindowUI.DemoApp.Pages.ApplicationDataContainerPage",
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
              "Uri": "https://ghost1372.github.io/WindowUI/helpers/applicationDataContainerHelper/"
            }
          ],
          "Extra": [
            "AppBarToggleButton",
            "AppBarSeparator",
            "CommandBar"
          ]
        },
        {
          "UniqueId": "WindowUI.DemoApp.Pages.AppNotificationPage",
          "Title": "App Notification",
          "SecondaryTitle": "Test SecondaryTitle",
          "Subtitle": "you can use AppNotificationPage for Sending Toast Notification.",
          "ImagePath": "ms-appx:///Assets/Modules/PT.png",
          "ImageIconPath": "ms-appx:///Assets/Modules/PT.png",
          "IncludedInBuild": true,
          "Links": [
            {
              "Title": "AppNotificationPage",
              "Uri": "https://ghost1372.github.io/WindowUI/helpers/appNotification/"
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
          "UniqueId": "WindowUI.DemoApp.Pages.OobePage",
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


# Localizer

there is methods for localizing:

`GetLocalizedData
GetLocalizedDataAsync`

just pass a ILocalizer and in your JsonNavigationViewService:

step1:

```cs
jsonNavigationViewService.ConfigLocalizer(localizer);
```      

step2:
add `"UsexUid": true` for every item in json file.

step3:
add some resources in your resw files.
for example: 

|Key|Value|
|-|-|
|Nav_HomeTitle|Home|

step4:
copy and paste Key in your json file for `Title` or `subtitle`...

`"Title": "Nav_HomeTitle"`

![LandingsPage](https://raw.githubusercontent.com/ghost1372/Resources/main/LandingsPage/AllLandingsPage.png)