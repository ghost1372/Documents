---
title: MainLandingPage
---

in this page we can load only items that is tagged as IsNew, IsUpdated and IsPreview.

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
|HeaderSubtitleText|
|HeaderContent|
|HeaderImage|
|HeaderImageHeight|
|HeaderMargin|
|FooterContent|
|FooterHeight|
|FooterMargin|
|HeaderFontSize|
|HeaderSubtitleFontSize|

# Override values

```xml
<x:Double x:Key="LandingItemTitleFontSize">14</x:Double>
<x:Double x:Key="LandingItemSubtitleFontSize">12</x:Double>
```

# Simple Use
first add:

```xml
xmlns:wuc="using:WinUICommunity"
```

then use MainLandingPage:

```xml
<wuc:MainLandingPage x:Name="mainLandingPage" Loaded="mainLandingPage_Loaded"
                        HeaderImage="ms-appx:///Assets/GalleryHeaderImage.png"
                        HeaderText="Demo App"
                        HeaderSubtitleText="Based On WinAppSDK 1.2"
                        OnItemClick="mainLandingPage_OnItemClick">
    <wuc:MainLandingPage.HeaderContent>
        <StackPanel Orientation="Horizontal" Spacing="10">
            <wuc:HeaderTile
                    Title="Documentation Center"
                    Description="Learn how to work with controls and styles."
                    Link="https://ghost1372.github.io/WinUICommunity/">
                <wuc:HeaderTile.Source>
                    <Image Source="/Assets/HomeHeaderTiles/Header-WinUIGallery.png" />
                </wuc:HeaderTile.Source>
            </wuc:HeaderTile>
            <wuc:HeaderTile
                    Title="WinUICommunity"
                    Description="Experience WinUI 3 quickly and easily with the help of WinUICommunity, Everything you need to develop an application is gathered in one place."
                    Link="https://github.com/WinUICommunity/WinUICommunity">
                <wuc:HeaderTile.Source>
                    <Image Source="/Assets/HomeHeaderTiles/icon.png" />
                </wuc:HeaderTile.Source>
            </wuc:HeaderTile>
            <wuc:HeaderTile
                    Title="Core"
                    Description="Experience WinUI 3 quickly and easily with the help of Core, Everything you need to develop an application is gathered in one place."
                    Link="https://github.com/WinUICommunity/WinUICommunity">
                <wuc:HeaderTile.Source>
                    <Image Source="/Assets/HomeHeaderTiles/icon.png" />
                </wuc:HeaderTile.Source>
            </wuc:HeaderTile>
            <wuc:HeaderTile
                    Title="ContextMenuExtensions"
                    Description="add a new ContextMenu for Windows 11/10."
                    Link="https://github.com/WinUICommunity/WinUICommunity">
                <wuc:HeaderTile.Source>
                    <Image Source="/Assets/HomeHeaderTiles/icon.png" />
                </wuc:HeaderTile.Source>
            </wuc:HeaderTile>
        </StackPanel>
    </wuc:MainLandingPage.HeaderContent>

    <wuc:MainLandingPage.FooterContent>
        <StackPanel>
            <TextBlock x:Name="LearnMore" Text="Learn More" Foreground="{ThemeResource ApplicationForegroundThemeBrush}" Style="{StaticResource SubtitleTextBlockStyle}" Margin="0,0,0,12" />
            <HyperlinkButton Content="Developer Center" NavigateUri="https://developer.microsoft.com/en-us/windows/"/>
            <HyperlinkButton Content="App Code Samples" NavigateUri="https://docs.microsoft.com/en-us/windows/apps/get-started/samples"/>
            <HyperlinkButton Content="Windows Template Studio" NavigateUri="https://github.com/microsoft/WindowsTemplateStudio"/>
        </StackPanel>
    </wuc:MainLandingPage.FooterContent>
</wuc:MainLandingPage>
```

# Load Items from Json File
if you want to load items to a gridview, you need to Create a folder for example `DataModel` then add a new json file `AppData.json`:
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

## Using JsonNavigationViewService

first add following line in xaml:

```xml
JsonNavigationViewService="{x:Bind local:App.GetJsonNavigationViewService()}"
```

if you are using `JsonNavigationViewService` your data will be loaded automatically and you dont need to do anything, however if you want to change it, you can do like this:

```cs
protected override void OnNavigatedTo(NavigationEventArgs e)
{
    base.OnNavigatedTo(e);
    mainLandingPage.GetData(jsonNavigationViewService.DataSource);
    mainLandingPage.OrderBy(i => i.Title);
}
```

Navigation is done automatically, if you want to change something, you can use `OnItemClick` event

## Normal

```cs
protected override void OnNavigatedTo(NavigationEventArgs e)
{
    base.OnNavigatedTo(e);
    mainLandingPage.GetDataAsync("DataModel/AppData.json");
    mainLandingPage.OrderBy(i => i.Title);
}
```

if you want to navigate to another page:

```cs
private void mainLandingPage_OnItemClick(object sender, RoutedEventArgs e)
{
    var args = (ItemClickEventArgs)e;
    var item = (DataItem)args.ClickedItem;
    jsonNavigationViewService.NavigateTo(item.UniqueId);
}

```

## Enable/Disable Items based on Page Exist
if you want to control items enable/disable, you can do this in 2 way (default is `autoIncludedInBuild = false`):

### AutoIncludedInBuild
we will check if page exist or not.

### IncludedInBuild
you can simply enable/disable items in `AppData.json` file just set `IncludedInBuild` to `true` or `false`


![LandingsPage](https://raw.githubusercontent.com/ghost1372/Resources/main/LandingsPage/0.png)