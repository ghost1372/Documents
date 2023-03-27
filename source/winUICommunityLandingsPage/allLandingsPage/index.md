---
title: AllLandingsPage
---

in this Page we can load all items from json file.

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
xmlns:controls="using:WinUICommunity.LandingsPage.Controls"
```

then use AllLandingsPage:

```xml
<controls:AllLandingsPage x:Name="allLandingsPage" HeaderImage="ms-appx:///Assets/GalleryHeaderImage.png"
                                  HeaderText="All" Loaded="allLandingsPage_Loaded"
                                  OnItemClick="allLandingsPage_OnItemClick"/>
```

# Load Items from Json File
Create a folder for example `DataModel` then add a new json file `ControlInfoData.json`:
`DataModel\ControlInfoData.json`

{% note warning %}
Set BuildAction to Content, if you are in a Unpackaged Mode, set CopyToOutput to True
{% endnote %}

```json
{
  "Groups": [
    {
      "UniqueId": "Features",
      "Title": "Features pages",
      "SecondaryTitle": "",
      "ApiNamespace": "",
      "Subtitle": "",
      "ImagePath": "",
      "ImageIconPath": "",
      "Description": "",
      "IsSpecialSection": false,
      "HideGroup": false,
      "IsSingleGroup": false,
      "IsExpanded" : false,
      "Items": [
        {
          "UniqueId": "WinUICommunity.DemoApp.Pages.ApplicationDataContainerPage",
          "Title": "ApplicationDataContainer",
          "SecondaryTitle": "Test SecondaryTitle",
          "ApiNamespace": "DemoApp",
          "Subtitle": "you can use ApplicationDataContainerHelper for saving and loading application settings.",
          "ImagePath": "ms-appx:///Assets/Modules/PT.png",
          "ImageIconPath": "ms-appx:///Assets/Modules/PT.png",
          "Description": "test description",
          "Content": "",
          "IsNew": false,
          "IsUpdated": true,
          "IsPreview": false,
          "IncludedInBuild": true,
          "HideItem": false,
          "HideSourceCodeAndRelatedControls": false,
          "Docs": [
            {
              "Title": "ApplicationDataContainerPage",
              "Uri": "https://ghost1372.github.io/winUICommunity/helpers/applicationDataContainerHelper/"
            }
          ],
          "RelatedControls": [
            "AppBarToggleButton",
            "AppBarSeparator",
            "CommandBar"
          ]
        },
        {
          "UniqueId": "WinUICommunity.DemoApp.Pages.AppNotificationPage",
          "Title": "App Notification",
          "SecondaryTitle": "Test SecondaryTitle",
          "ApiNamespace": "DemoApp",
          "Subtitle": "you can use AppNotificationPage for Sending Toast Notification.",
          "ImagePath": "ms-appx:///Assets/Modules/PT.png",
          "ImageIconPath": "ms-appx:///Assets/Modules/PT.png",
          "Description": "",
          "Content": "",
          "IsNew": false,
          "IsUpdated": false,
          "IsPreview": false,
          "IncludedInBuild": true,
          "HideItem": false,
          "HideSourceCodeAndRelatedControls": true,
          "Docs": [
            {
              "Title": "AppNotificationPage",
              "Uri": "https://ghost1372.github.io/winUICommunity/helpers/appNotification/"
            }
          ],
          "RelatedControls": []
        },
        {
          "UniqueId": "WinUICommunity.DemoApp.Pages.CheckUpdatePage",
          "Title": "Check Update",
          "ApiNamespace": "DemoApp",
          "SecondaryTitle": "Test SecondaryTitle",
          "Subtitle": "you can use UpdateHelper for checking application updates from github release page.",
          "ImagePath": "ms-appx:///Assets/Modules/PT.png",
          "ImageIconPath": "ms-appx:///Assets/Modules/PT.png",
          "Description": "",
          "Content": "",
          "IsNew": false,
          "IsUpdated": true,
          "IsPreview": false,
          "IncludedInBuild": true,
          "HideItem": false,
          "HideSourceCodeAndRelatedControls": true,
          "Docs": [
            {
              "Title": "CheckUpdatePage",
              "Uri": "https://ghost1372.github.io/winUICommunity/helpers/updateHelper/"
            }
          ],
          "RelatedControls": []
        },
        {
          "UniqueId": "WinUICommunity.DemoApp.Pages.CommandObservablePage",
          "Title": "Observable and RelayCommand",
          "ApiNamespace": "DemoApp",
          "SecondaryTitle": "Test SecondaryTitle",
          "Subtitle": "Observable: inherited from INotifyPropertyChanged. - RelayCommand: inherited from ICommand.",
          "ImagePath": "ms-appx:///Assets/Modules/PT.png",
          "ImageIconPath": "ms-appx:///Assets/Modules/PT.png",
          "Description": "",
          "Content": "",
          "IsNew": false,
          "IsUpdated": true,
          "IsPreview": false,
          "IncludedInBuild": true,
          "HideItem": false,
          "HideSourceCodeAndRelatedControls": true,
          "Docs": [],
          "RelatedControls": []
        },
        {
          "UniqueId": "WinUICommunity.DemoApp.Pages.ContentDialogPage",
          "Title": "Content Dialog",
          "ApiNamespace": "DemoApp",
          "SecondaryTitle": "Test SecondaryTitle",
          "Subtitle": "With the help of ShowAsyncQueue extension you can open multiple ContentDialogs.",
          "ImagePath": "ms-appx:///Assets/Modules/PT.png",
          "ImageIconPath": "ms-appx:///Assets/Modules/PT.png",
          "Description": "",
          "Content": "",
          "IsNew": false,
          "IsUpdated": true,
          "IsPreview": false,
          "IncludedInBuild": true,
          "HideItem": false,
          "HideSourceCodeAndRelatedControls": true,
          "Docs": [],
          "RelatedControls": []
        },
        {
          "UniqueId": "WinUICommunity.DemoApp.Pages.DynamicLanguagePage",
          "Title": "Dynamic Language",
          "ApiNamespace": "DemoApp",
          "SecondaryTitle": "Test SecondaryTitle",
          "Subtitle": "With the help of DynamicLanguage you can create a dynamic multi language app.",
          "ImagePath": "ms-appx:///Assets/Modules/PT.png",
          "ImageIconPath": "ms-appx:///Assets/Modules/PT.png",
          "Description": "",
          "Content": "",
          "IsNew": false,
          "IsUpdated": true,
          "IsPreview": false,
          "IncludedInBuild": true,
          "HideItem": false,
          "HideSourceCodeAndRelatedControls": true,
          "Docs": [
            {
              "Title": "DynamicLanguagePage",
              "Uri": "https://ghost1372.github.io/winUICommunity/tools/dynamicLanguage/"
            }
          ],
          "RelatedControls": []
        },
        {
          "UniqueId": "WinUICommunity.DemoApp.Pages.InlineAutoCompleteTextBoxPage",
          "Title": "Inline AutoCompleteTextBox",
          "ApiNamespace": "DemoApp",
          "SecondaryTitle": "Test SecondaryTitle",
          "Subtitle": "Inline AutoCompleteTextBox",
          "ImagePath": "ms-appx:///Assets/Modules/PT.png",
          "ImageIconPath": "ms-appx:///Assets/Modules/PT.png",
          "Description": "",
          "Content": "",
          "IsNew": false,
          "IsUpdated": true,
          "IsPreview": false,
          "IncludedInBuild": true,
          "HideItem": false,
          "HideSourceCodeAndRelatedControls": true,
          "Docs": [
            {
              "Title": "InlineAutoCompleteTextBoxPage",
              "Uri": "https://ghost1372.github.io/winUICommunity/controls/inlineAutoCompleteTextBox/"
            }
          ],
          "RelatedControls": []
        },
        {
          "UniqueId": "WinUICommunity.DemoApp.Pages.SettingsControls",
          "Title": "Settings Controls",
          "ApiNamespace": "DemoApp",
          "SecondaryTitle": "Test SecondaryTitle",
          "Subtitle": "SettingsControls from Labs",
          "ImagePath": "ms-appx:///Assets/Modules/PT.png",
          "ImageIconPath": "ms-appx:///Assets/Modules/PT.png",
          "Description": "",
          "Content": "",
          "IsNew": true,
          "IsUpdated": false,
          "IsPreview": false,
          "IncludedInBuild": true,
          "HideItem": false,
          "HideSourceCodeAndRelatedControls": true,
          "Docs": [
            {
              "Title": "SettingsControls",
              "Uri": "https://ghost1372.github.io/winUICommunity/settingsControls/"
            }
          ],
          "RelatedControls": []
        },
        {
          "UniqueId": "WinUICommunity.DemoApp.Pages.SystemBackdropsPage",
          "Title": "SystemBackdrops",
          "ApiNamespace": "DemoApp",
          "SecondaryTitle": "Test SecondaryTitle",
          "Subtitle": "you can use SystemBackdropsHelper for accessing Mica and Acrylic Effect for your Window.",
          "ImagePath": "ms-appx:///Assets/Modules/PT.png",
          "ImageIconPath": "ms-appx:///Assets/Modules/PT.png",
          "Description": "",
          "Content": "",
          "IsNew": false,
          "IsUpdated": true,
          "IsPreview": false,
          "IncludedInBuild": true,
          "HideItem": false,
          "HideSourceCodeAndRelatedControls": true,
          "Docs": [
            {
              "Title": "SystemBackdropsPage",
              "Uri": "https://ghost1372.github.io/winUICommunity/helpers/systemBackdropsHelper/"
            }
          ],
          "RelatedControls": []
        }
      ]
    },
    {
      "UniqueId": "Settings",
      "Title": "Settings pages",
      "ApiNamespace": "",
      "Subtitle": "",
      "ImagePath": "",
      "SecondaryTitle": "Test SecondaryTitle",
      "ImageIconPath": "",
      "Description": "",
      "HideGroup": false,
      "IsSingleGroup": false,
      "IsExpanded" : false,
      "Items": [
        {
          "UniqueId": "WinUICommunity.DemoApp.Pages.OobePage",
          "Title": "Oobe Page",
          "ApiNamespace": "DemoApp",
          "SecondaryTitle": "Test SecondaryTitle",
          "Subtitle": "Settings Page with a Hero Image",
          "ImagePath": "ms-appx:///Assets/Modules/PT.png",
          "ImageIconPath": "ms-appx:///Assets/Modules/PT.png",
          "Description": "",
          "Content": "",
          "IsNew": false,
          "IsUpdated": true,
          "IsPreview": false,
          "IncludedInBuild": true,
          "HideItem": false,
          "Docs": [],
          "RelatedControls": []
        }
      ]
    }
  ]
}

```

## Available Properties in Json (Groups)
|Name|Example|Detail|
|-|-|-|
|UniqueId|WinUICommunity.DemoApp.Pages.ApplicationDataContainerPage|Full address to a Page in Project|
|Title|Features pages|Top Level Menu Item|
|SecondaryTitle|anything||
|ApiNamespace|WinUICommunity.DemoApp|Application Namespace|
|Subtitle|anything||
|ImagePath|ms-appx:///Assets/Modules/PT.png||
|ImageIconPath|ms-appx:///Assets/Modules/PT.png||
|Description|anything||
|IsSpecialSection|false||
|HideGroup|false|Hide or Show a Group with Items|
|IsSingleGroup|false|If it is true and there is only one group, all items of the group will be added directly to the NavigationView|
|IsExpanded|true|If it is true NavigationViewItem will be expanded|
|Items||See Below|
|InfoBadge||See Below|

## Available Properties in Json (Items)
|Name|Example|Detail|
|-|-|-|
|UniqueId|WinUICommunity.DemoApp.Pages.ApplicationDataContainerPage|Full address to a Page in Project|
|Title|Features pages|Top Level Menu Item|
|SecondaryTitle|anything||
|ApiNamespace|WinUICommunity.DemoApp|Application Namespace|
|Subtitle|anything||
|ImagePath|ms-appx:///Assets/Modules/PT.png||
|ImageIconPath|ms-appx:///Assets/Modules/PT.png||
|Description|anything||
|Content|anything||
|IsNew|true|if set true you can filter items based on new items|
|IsUpdated|true|if set true you can filter items based on updated items|
|IsPreview|true|if set true you can filter items based on preview items|
|IncludedInBuild|false|if set true item will be enabled|
|HideItem|false|if set true item will be hide|
|HideSourceCodeAndRelatedControls|true|under development|
|Docs||See Below|
|RelatedControls||See Below|
|InfoBadge||See Below|

{% note warning %}
only one of this proeprties `IsNew`, `IsUpdated` and `IsPreview` can be `true`
{% endnote %}

## Available Properties in Json (Docs)
|Name|Example|Detail|
|-|-|-|
|Title|anything||
|Uri|https://ghost1372.github.io||


## Available Properties in Json (RelatedControls)
|Name|Example|Detail|
|-|-|-|
||anything|use like string in between ""|

## InfoBadge
|Name|Default|Detail|
|-|-|-|
|BadgeValue|null|you should set an integer value like: 10 in a string format (we convert string to int internally) also you should set `BadgeStyle` to one of the `AttentionValueInfoBadgeStyle, InformationalValueInfoBadgeStyle, SuccessValueInfoBadgeStyle, CautionValueInfoBadgeStyle, CriticalValueInfoBadgeStyle`|
|BadgeStyle|AttentionValueInfoBadgeStyle|`AttentionDotInfoBadgeStyle, AttentionIconInfoBadgeStyle, AttentionValueInfoBadgeStyle, InformationalDotInfoBadgeStyle, InformationalIconInfoBadgeStyle, InformationalValueInfoBadgeStyle, SuccessDotInfoBadgeStyle, SuccessIconInfoBadgeStyle, SuccessValueInfoBadgeStyle, CautionDotInfoBadgeStyle, CautionIconInfoBadgeStyle, CautionValueInfoBadgeStyle, CriticalDotInfoBadgeStyle, CriticalIconInfoBadgeStyle, CriticalValueInfoBadgeStyle`you should set correct style if you want to use BadgeValue or Icon or Dot|
|HideNavigationViewInfoBadge|false||
|BadgeSymbolIcon|null|for example: `Sync` , we will convert your string to Symbol so please write correct symbol name|
|BadgeBitmapIcon|null|for example: `ms-appx:///Assets/Modules/PT.png` you should set BadgeStyle to one of the AttentionIconInfoBadgeStyle, InformationalIconInfoBadgeStyle, SuccessIconInfoBadgeStyle, CautionIconInfoBadgeStyle, CriticalIconInfoBadgeStyle |
|BadgeFontIconGlyph|null|for example: `E710` , you should set BadgeStyle to one of the AttentionIconInfoBadgeStyle, InformationalIconInfoBadgeStyle, SuccessIconInfoBadgeStyle, CautionIconInfoBadgeStyle, CriticalIconInfoBadgeStyle |
|BadgeFontIconFontName|null|if you are using `BadgeFontIconGlyph` you can set FontName for using glyphs|
|HideBadge|false||
|BadgeWidth|||
|BadgeHeight|||

now you need to load items:

```cs
private void mainLandingsPage_Loaded(object sender, RoutedEventArgs e)
{
    mainLandingsPage.GetDataAsync("DataModel/ControlInfoData.json");
}
```

if you want to navigate to another page (you should fix your namespace and folders in ControlInfoData.json and UniqeId field):

```cs
private void mainLandingsPage_OnItemClick(object sender, RoutedEventArgs e)
{
    var args = (ItemClickEventArgs)e;
    var item = (ControlInfoDataItem)args.ClickedItem;
    Type pageType = Type.GetType(item.UniqueId);

    NavigateToPage(pageType);
}
```

## Enable/Disable Items based on Page Exist
if you want to control items enable/disable, you can do this in 2 way (default is `CheckBasedOnIncludedInBuildProperty`):

### CheckBasedOnIncludedInBuildProperty
if you choose CheckBasedOnIncludedInBuildProperty, you can simply enable/disable items in `ControlInfoData.json` file just set `IncludedInBuild` to `true` or `false`.

### RealCheckBasedOnUniqeIdPath

if you want the existence of the page to be checked for real, you should use `RealCheckBasedOnUniqeIdPath`, in this case `IncludedInBuild` property will be ignored

```cs
allLandingsPage.GetDataAsync("DataModel/ControlInfoData.json", IncludedInBuildMode.RealCheckBasedOnUniqeIdPath);
```

now you should edit `ControlInfoData.json`:
first, you should specify application namespace in `ApiNamespace` section

second, you should write your page full path in `UniqueId`

example:
we have a project called  `TvTime`, and our views is located in `TvTime\Views\SeriesPage.xaml`
so our `ApiNamespace` is = `TvTime`
and our  `UniqueId` is = `TvTime.Views.SeriesPage`

```json
{
  "Groups": [
    {
      "UniqueId": "TvTime",
      "Title": "TvTime pages",
      "ApiNamespace": "",
      "Subtitle": "",
      "ImagePath": "",
      "ImageIconPath": "",
      "Description": "",
      "IsSpecialSection": false,
      "HideGroup": false,
      "IsSingleGroup": false,
      "IsExpanded" : false,
      "Items": [
        {
          "UniqueId": "TvTime.Views.AnimesPage",
          "Title": "Anime",
          "ApiNamespace": "TvTime",
          "Subtitle": "Search among anime and download the desired anime",
          "ImagePath": "ms-appx:///Assets/Images/anime.png",
          "ImageIconPath": "ms-appx:///Assets/Images/anime.png",
          "Description": "",
          "Content": "",
          "IsNew": false,
          "IsUpdated": false,
          "IsPreview": true,
          "HideItem": false,
          "HideSourceCodeAndRelatedControls": true,
          "Docs": [],
          "RelatedControls": []
        },
        {
          "UniqueId": "TvTime.Views.MoviesPage",
          "Title": "Movies",
          "ApiNamespace": "TvTime",
          "Subtitle": "Search among Movies and download the desired movie",
          "ImagePath": "ms-appx:///Assets/Images/movie.png",
          "ImageIconPath": "ms-appx:///Assets/Images/movie.png",
          "Description": "",
          "Content": "",
          "IsNew": true,
          "IsUpdated": true,
          "IsPreview": false,
          "HideItem": false,
          "HideSourceCodeAndRelatedControls": true,
          "Docs": [],
          "RelatedControls": []
        },
        {
          "UniqueId": "TvTime.Views.SeriesPage",
          "Title": "Series",
          "ApiNamespace": "TvTime",
          "Subtitle": "Search among Series and download the desired series",
          "ImagePath": "ms-appx:///Assets/Images/series.png",
          "ImageIconPath": "ms-appx:///Assets/Images/series.png",
          "Description": "",
          "Content": "",
          "IsNew": true,
          "IsUpdated": true,
          "IsPreview": false,
          "HideItem": false,
          "HideSourceCodeAndRelatedControls": true,
          "Docs": [],
          "RelatedControls": []
        },
        {
          "UniqueId": "TvTime.Views.ServersPage",
          "Title": "Servers",
          "ApiNamespace": "TvTime",
          "Subtitle": "Add, Update or Remove Servers",
          "ImagePath": "ms-appx:///Assets/Images/server.png",
          "ImageIconPath": "ms-appx:///Assets/Images/server.png",
          "Description": "",
          "Content": "",
          "IsNew": true,
          "IsUpdated": true,
          "IsPreview": false,
          "HideItem": false,
          "HideSourceCodeAndRelatedControls": true,
          "Docs": [],
          "RelatedControls": []
        }
      ]
    }
  ]
}


```

### Navigate

```cs
private void allLandingsPage_OnItemClick(object sender, RoutedEventArgs e)
{
    var args = (ItemClickEventArgs)e;
    var item = (ControlInfoDataItem)args.ClickedItem;

    ShellPage.Instance.Navigate(item.UniqueId);
}
```

![LandingsPage](https://raw.githubusercontent.com/ghost1372/Resources/main/LandingsPage/AllLandingsPage.png)