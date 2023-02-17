---
title: WinUICommunity.LandingsPage
---

Create a landing page in the style of WinUI 3 and WinUI-Gallery very quickly and easily

{% note warning %}
ported from https://github.com/microsoft/WinUI-Gallery
{% endnote %}

```
Install-Package WinUICommunity.LandingsPage
```
After installing, add the following resource to app.xaml

```xml
xmlns:themes="using:WinUICommunity.LandingsPage.Themes"

<ResourceDictionary Source="ms-appx:///LandingsPage/Themes/Generic.xaml"/>
<themes:ItemTemplates/>
```
See the Demo app to see how to use it.

## Dependencies

This package is based on the following packages

- CommunityToolkit.WinUI.UI
- CommunityToolkit.WinUI.UI.Animations
- Microsoft.Graphics.Win2D

# LandingsPage

first add:

```xml
xmlns:controls="using:WinUICommunity.LandingsPage.Controls"
```

then use MainLandingsPage:

```xml
<controls:MainLandingsPage x:Name="mainLandingsPage" Loaded="mainLandingsPage_Loaded"
                        HomePageHeaderImage="ms-appx:///Assets/GalleryHeaderImage.png"
                        Title="Demo App"
                        Description="Based On WinAppSDK 1.2"
                        OnItemClick="mainLandingsPage_OnItemClick">
    <controls:MainLandingsPage.HeaderContent>
        <StackPanel Orientation="Horizontal" Spacing="10">
            <controls:HeaderTile
                    Title="Documentation Center"
                    Description="Learn how to work with controls and styles."
                    Link="https://ghost1372.github.io/winUICommunity/">
                <controls:HeaderTile.Source>
                    <Image Source="/Assets/HomeHeaderTiles/Header-WinUIGallery.png" />
                </controls:HeaderTile.Source>
            </controls:HeaderTile>
            <controls:HeaderTile
                    Title="SettingsUI"
                    Description="Experience WinUI 3 quickly and easily with the help of SettingsUI, Everything you need to develop an application is gathered in one place."
                    Link="https://github.com/WinUICommunity/SettingsUI">
                <controls:HeaderTile.Source>
                    <Image Source="/Assets/HomeHeaderTiles/icon.png" />
                </controls:HeaderTile.Source>
            </controls:HeaderTile>
            <controls:HeaderTile
                    Title="Common"
                    Description="Experience WinUI 3 quickly and easily with the help of Common, Everything you need to develop an application is gathered in one place."
                    Link="https://github.com/WinUICommunity/Common">
                <controls:HeaderTile.Source>
                    <Image Source="/Assets/HomeHeaderTiles/icon.png" />
                </controls:HeaderTile.Source>
            </controls:HeaderTile>
            <controls:HeaderTile
                    Title="ShellContextMenu"
                    Description="add a new ContextMenu for Windows 11/10."
                    Link="https://github.com/WinUICommunity/ShellContextMenu">
                <controls:HeaderTile.Source>
                    <Image Source="/Assets/HomeHeaderTiles/icon.png" />
                </controls:HeaderTile.Source>
            </controls:HeaderTile>
        </StackPanel>
    </controls:MainLandingsPage.HeaderContent>
</controls:MainLandingsPage>
```
if you want to load items to gridview, you need to Create a folder for example `DataModel` then add a new json file `ControlInfoData.json`:
`DataModel\ControlInfoData.json` note: `(Set BuildAction to Content)`

```json
{
  "Groups": [
    {
      "UniqueId": "Features",
      "Title": "Features pages",
      "ApiNamespace": "",
      "Subtitle": "",
      "ImagePath": "",
      "ImageIconPath": "",
      "Description": "",
      "IsSpecialSection": true,
      "Items": [
        {
          "UniqueId": "WinUICommunity.DemoApp.Pages.ApplicationDataContainerPage",
          "Title": "ApplicationDataContainer",
          "ApiNamespace": "",
          "Subtitle": "you can use ApplicationDataContainerHelper for saving and loading application settings.",
          "ImagePath": "ms-appx:///Assets/Modules/PT.png",
          "ImageIconPath": "ms-appx:///Assets/Modules/PT.png",
          "Description": "",
          "Content": "",
          "IsNew": false,
          "IsUpdated": true,
          "IncludedInBuild": true,
          "HideSourceCodeAndRelatedControls": true,
          "Docs": [
            {
              "Title": "ApplicationDataContainerPage",
              "Uri": "https://ghost1372.github.io/winUICommunity/helpers/applicationDataContainerHelper/"
            }
          ],
          "RelatedControls": []
        },
        {
          "UniqueId": "AppNotificationPage",
          "Title": "App Notification",
          "ApiNamespace": "",
          "Subtitle": "you can use AppNotificationPage for Sending Toast Notification.",
          "ImagePath": "ms-appx:///Assets/Modules/PT.png",
          "ImageIconPath": "ms-appx:///Assets/Modules/PT.png",
          "Description": "",
          "Content": "",
          "IsNew": false,
          "IsUpdated": false,
          "IsPreview": false,
          "IncludedInBuild": true,
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
          "ApiNamespace": "",
          "Subtitle": "you can use UpdateHelper for checking application updates from github release page.",
          "ImagePath": "ms-appx:///Assets/Modules/PT.png",
          "ImageIconPath": "ms-appx:///Assets/Modules/PT.png",
          "Description": "",
          "Content": "",
          "IsNew": false,
          "IsUpdated": true,
          "IsPreview": false,
          "IncludedInBuild": true,
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
          "ApiNamespace": "",
          "Subtitle": "Observable: inherited from INotifyPropertyChanged. - RelayCommand: inherited from ICommand.",
          "ImagePath": "ms-appx:///Assets/Modules/PT.png",
          "ImageIconPath": "ms-appx:///Assets/Modules/PT.png",
          "Description": "",
          "Content": "",
          "IsNew": false,
          "IsUpdated": true,
          "IsPreview": false,
          "IncludedInBuild": true,
          "HideSourceCodeAndRelatedControls": true,
          "Docs": [],
          "RelatedControls": []
        },
        {
          "UniqueId": "WinUICommunity.DemoApp.Pages.ContentDialogPage",
          "Title": "Content Dialog",
          "ApiNamespace": "",
          "Subtitle": "With the help of ShowAsyncQueue extension you can open multiple ContentDialogs.",
          "ImagePath": "ms-appx:///Assets/Modules/PT.png",
          "ImageIconPath": "ms-appx:///Assets/Modules/PT.png",
          "Description": "",
          "Content": "",
          "IsNew": false,
          "IsUpdated": true,
          "IsPreview": false,
          "IncludedInBuild": true,
          "HideSourceCodeAndRelatedControls": true,
          "Docs": [],
          "RelatedControls": []
        },
        {
          "UniqueId": "WinUICommunity.DemoApp.Pages.DynamicLanguagePage",
          "Title": "Dynamic Language",
          "ApiNamespace": "",
          "Subtitle": "With the help of DynamicLanguage you can create a dynamic multi language app.",
          "ImagePath": "ms-appx:///Assets/Modules/PT.png",
          "ImageIconPath": "ms-appx:///Assets/Modules/PT.png",
          "Description": "",
          "Content": "",
          "IsNew": false,
          "IsUpdated": true,
          "IsPreview": false,
          "IncludedInBuild": true,
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
          "ApiNamespace": "",
          "Subtitle": "Inline AutoCompleteTextBox",
          "ImagePath": "ms-appx:///Assets/Modules/PT.png",
          "ImageIconPath": "ms-appx:///Assets/Modules/PT.png",
          "Description": "",
          "Content": "",
          "IsNew": false,
          "IsUpdated": true,
          "IsPreview": false,
          "IncludedInBuild": true,
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
          "ApiNamespace": "",
          "Subtitle": "SettingsControls from Labs",
          "ImagePath": "ms-appx:///Assets/Modules/PT.png",
          "ImageIconPath": "ms-appx:///Assets/Modules/PT.png",
          "Description": "",
          "Content": "",
          "IsNew": true,
          "IsUpdated": false,
          "IsPreview": false,
          "IncludedInBuild": true,
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
          "ApiNamespace": "",
          "Subtitle": "you can use SystemBackdropsHelper for accessing Mica and Acrylic Effect for your Window.",
          "ImagePath": "ms-appx:///Assets/Modules/PT.png",
          "ImageIconPath": "ms-appx:///Assets/Modules/PT.png",
          "Description": "",
          "Content": "",
          "IsNew": false,
          "IsUpdated": true,
          "IsPreview": false,
          "IncludedInBuild": true,
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
      "ImageIconPath": "",
      "Description": "",
      "Items": [
        {
          "UniqueId": "WinUICommunity.DemoApp.Pages.OobePage",
          "Title": "Oobe Page",
          "ApiNamespace": "",
          "Subtitle": "Settings Page with a Hero Image",
          "ImagePath": "ms-appx:///Assets/Modules/PT.png",
          "ImageIconPath": "ms-appx:///Assets/Modules/PT.png",
          "Description": "",
          "Content": "",
          "IsNew": false,
          "IsUpdated": true,
          "IsPreview": false,
          "IncludedInBuild": true,
          "Docs": [],
          "RelatedControls": []
        }
      ]
    }
  ]
}

```

now you need to load items:

```cs
private void mainLandingsPage_Loaded(object sender, RoutedEventArgs e)
{
    mainLandingsPage.GetControlInfoDataAsync("DataModel/ControlInfoData.json");
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
if you want to control items enable/disable you can do this in 2 way (default is `CheckBasedOnIncludedInBuildProperty`):

### CheckBasedOnIncludedInBuildProperty
if you choose CheckBasedOnIncludedInBuildProperty, you can simply enable/disable item in `ControlInfoData.json` file just set `IncludedInBuild` to `true` or `false`.

### RealCheckBasedOnUniqeIdPath

if you want the existence of the page to be checked for real, you should use `RealCheckBasedOnUniqeIdPath`, in this case IncludedInBuild property will be ignored

```cs
mainLandingsPage.GetControlInfoDataAsync("DataModel/ControlInfoData.json", IncludedInBuildMode.RealCheckBasedOnUniqeIdPath);
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
          "HideSourceCodeAndRelatedControls": true,
          "Docs": [],
          "RelatedControls": []
        }
      ]
    }
  ]
}


```


![LandingsPage](https://raw.githubusercontent.com/ghost1372/Resources/main/LandingsPage/0.png)
