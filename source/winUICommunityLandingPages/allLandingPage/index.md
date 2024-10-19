---
title: AllLandingPage
---

in this Page we can load all items from json file.

# Events

|Name|
|-|
|OnItemClick|

# Available Properties

|Name|
|-|
|SpaceBetweenHeaderAndGridView|
|HeaderContentMargin|
|HeaderCornerRadius|
|HeaderVerticalAlignment|
|HeaderText|
|HeaderFontSize|
|HeaderSubtitleText|
|HeaderSubtitleFontSize|
|UseFullScreenHeaderImage|
|HeaderImage|
|HeaderOverlayImage|
|OverlayOpacity|
|Stretch|
|NormalizedCenterPoint|
|LazyLoadingThreshold|
|EnableLazyLoading|
|PlaceholderSource|
|IsCacheEnabled|
|GridViewVerticalAlignment|
|GridViewPadding|
|JsonNavigationViewService|

# Override values

```xml
<x:Double x:Key="LandingItemTitleFontSize">14</x:Double>
<x:Double x:Key="LandingItemSubtitleFontSize">12</x:Double>
```

# Simple Use
first add:

```xml
xmlns:controls="using:WinUICommunity"
```

## Usage with JsonNavigationViewService
if you are using `JsonNavigationViewService` you can use it like this which is so easy:

```xml
<wuc:AllLandingPage x:Name="allLandingPage" HeaderImage="ms-appx:///Assets/GalleryHeaderImage.png"
                                  HeaderText="All" Loaded="allLandingPage_Loaded"
                                  JsonNavigationViewService="{x:Bind local:App.GetJsonNavigationViewService()}"/>
```

or if you want to load data yourself, you can load data like this:

```cs
allLandingPage.CanExecuteInternalCommand = false;
allLandingsPage.GetData(jsonNavigationViewService.DataSource);
allLandingsPage.OrderBy(i => i.Title);
```

Navigation is done automatically, if you want to change something, you can use `OnItemClick` event

## Normal Usage
```xml
<wuc:AllLandingPage x:Name="allLandingPage" HeaderImage="ms-appx:///Assets/GalleryHeaderImage.png"
                                  HeaderText="All" Loaded="allLandingPage_Loaded"
                                  OnItemClick="allLandingPage_OnItemClick"/>
```

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
              "Uri": "https://ghost1372.github.io/WinUICommunity/helpers/applicationDataContainerHelper/"
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
              "Uri": "https://ghost1372.github.io/WinUICommunity/helpers/appNotification/"
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

## Enable/Disable Items based on Page Exist / IncludedInBuild
you can simply enable/disable items in `AppData.json` file just set `IncludedInBuild` to `true` or `false`


# Localizer

there are methods for localizing:

`GetLocalizedData
GetLocalizedDataAsync`

step1:

```cs
jsonNavigationViewService.ConfigLocalizer(resourceManager, resourceContext);
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