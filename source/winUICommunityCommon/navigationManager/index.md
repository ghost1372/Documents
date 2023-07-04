---
title: NavigationManager
---

Easily implement a `NavigationView` With/Without `Json` file (we read navigationview items from a json file)

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WinUICommunity) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wuc="using:WinUICommunity"`
For use in the Csharp:
`using WinUICommunity;`
{% endnote %}

# NavigationViewOptions

|Name|Default|Remark|
|-|-|-|
|DefaultPage|null|if you set DefaultPage, after running application, automatically navigate to this page|
|SettingsPage|null|if you set SettingsPage, when user click on Settings Button, will be navigated to settingsPage|
|JsonOptions|null|if you want to use json file use this option|
|EventsOptions|EventsOptions.BuiltIn|if you wan to use your custom events (TextChanged, QuerySubmitted, and etc.) select `Custom` option|

# `NavigationView` with `Back` button and `AutoSuggestBox`
in this case we create a NavigationView with a Back button and a AutoSuggestBox 

```xml
xmlns:wuc="using:WinUICommunity"

<NavigationView
    x:Name="navigationView">
    <NavigationView.AutoSuggestBox>
        <AutoSuggestBox Name="autoSuggestBox" QueryIcon="Find" PlaceholderText="Search" />
    </NavigationView.AutoSuggestBox>
    <NavigationView.MenuItems>
        <NavigationViewItem
            Margin="0,0,12,0"
            wuc:NavHelper.NavigateTo="views:GeneralPage"
            Content="General"/>

        <NavigationViewItem
            Margin="0,0,12,0"
            wuc:NavHelper.NavigateTo="views:AwakePage"
            Content="General"/>

        <NavigationViewItem
            Margin="0,0,12,0"
            wuc:NavHelper.NavigateTo="views:FancyZonesPage"
            Content="General"/>
    </NavigationView.MenuItems>
    <Frame x:Name="shellFrame"/>
</NavigationView>
``` 

```cs
public NavigationManager Nav { get; set; }

Nav = new NavigationManager(navigationView, 
                new NavigationViewOptions { 
                    DefaultPage = typeof(Home), 
                    SettingsPage = typeof(SettingsPage)
                }, rootFrame, autoSuggestBox);
```

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/NavigationViewHelper.gif)

# `NavigationView` with `Json file`, `Back` button and `AutoSuggestBox`
```xml
xmlns:data="using:WinUICommunity"

<NavigationView
    x:Name="NavigationViewControl"
    IsTabStop="False"
    PaneDisplayMode="Left"
    IsTitleBarAutoPaddingEnabled="True">
    <NavigationView.AutoSuggestBox>
        <AutoSuggestBox
        x:Name="controlsSearchBox"
        PlaceholderText="Search"
        QueryIcon="Find">
        </AutoSuggestBox>
    </NavigationView.AutoSuggestBox>
    <Frame x:Name="rootFrame"/>
</NavigationView>
```

```cs
public NavigationManager Nav { get; set; }
Nav = new NavigationManager(NavigationViewControl, new NavigationViewOptions
            {
                DefaultPage = typeof(MoviePage),
                SettingsPage = typeof(SettingsPage),
                JsonOptions = new JsonOptions
                {
                    JsonFilePath = "DataModel/ControlInfoData.json"
                }
            }, rootFrame, controlsSearchBox);
```

now create a new `json` file (`ControlInfoData.json`) in a folder called `DataModel`:

{% note warning %}
- Set BuildAction for `ControlInfoData.json` to `Content` and if you are in a Unpackaged app, also set `CopyToOutput` to `Always`
{% endnote %}

{% note info %}
To see details and descriptions of Json's properties, refer to <ins>**[this](https://ghost1372.github.io/winUICommunity/jsonFile)**</ins> page
{% endnote %}

```xml
DataModel\ControlInfoData.json
```

this is a json file content:

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
      "ShowItemsWithoutGroup": false,
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
      "ShowItemsWithoutGroup": false,
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
{% note info %}
you can set `ApiNamespace` to `""`: `"ApiNamespace": ""`, in this way we will find your application Namespace.
{% endnote %}

- UniqueId
this is your pages full address, for example: `WinUICommunity.DemoApp.Pages.ApplicationDataContainerPage`
- ApiNamespace
this is your apps namespace, for example: `WinUICommunity.DemoApp`

{% note warning %}
for Navigating to a Page we used Built-in Host pages such as, ItemPage and SectionPage. you can use only UniqueId to navigate your pages or create a custom host page.
{% endnote %}

# SectionPage, ItemPage
if you have `LandingsPage` package installed, you can use built-in Pages:
```cs
JsonOptions = new JsonOptions
                {
                    SectionPage = typeof(SectionPage),
                    ItemPage = typeof(ItemPage)
                }
```
or you can customize it:

```xml
<Page
    x:Class="WinUICommunity.DemoApp.Pages.SectionPage"
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    xmlns:wuc="using:WinUICommunity">

    <wuc:SectionPage x:Name="sectionPage" OnItemClick="SectionPage_OnItemClick"/>
</Page>
```
and

```cs
public sealed partial class SectionPage : Page
{
    public SectionPage()
    {
        this.InitializeComponent();
    }

    protected override void OnNavigatedTo(NavigationEventArgs e)
    {
        base.OnNavigatedTo(e);
        sectionPage.GetDataAsync(e);
    }

    private void SectionPage_OnItemClick(object sender, Microsoft.UI.Xaml.RoutedEventArgs e)
    {
        var args = (ItemClickEventArgs)e;
        var item = (ControlInfoDataItem)args.ClickedItem;
        MainWindow.Instance.Nav.NavigateForJson(typeof(ItemPage), item.UniqueId);
    }
}
```

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
      "InfoBadge": {
        "BadgeValue": "10",
        "BadgeStyle": "SuccessValueInfoBadgeStyle"
      },
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
          ],
          "InfoBadge": {
            "BadgeValue": "12"
          }
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
          "HideSourceCodeAndRelatedControls": true,
          "Docs": [
            {
              "Title": "AppNotificationPage",
              "Uri": "https://ghost1372.github.io/winUICommunity/helpers/appNotification/"
            }
          ],
          "RelatedControls": [],
          "InfoBadge": {
            "BadgeValue": "10",
            "HideNavigationViewInfoBadge": true
          }
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
          "HideSourceCodeAndRelatedControls": true,
          "Docs": [
            {
              "Title": "CheckUpdatePage",
              "Uri": "https://ghost1372.github.io/winUICommunity/helpers/updateHelper/"
            }
          ],
          "RelatedControls": [],
          "InfoBadge": {
            "BadgeStyle": "SuccessIconInfoBadgeStyle",
            "BadgeSymbolIcon": "Sync"
          }
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
          "HideSourceCodeAndRelatedControls": true,
          "Docs": [],
          "RelatedControls": [],
          "InfoBadge": {
            "BadgeStyle": "SuccessIconInfoBadgeStyle",
            "BadgeBitmapIcon": "ms-appx:///Assets/Modules/PT.png"
          }
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
          "HideSourceCodeAndRelatedControls": true,
          "Docs": [],
          "RelatedControls": [],
          "InfoBadge": {
            "BadgeStyle": "SuccessIconInfoBadgeStyle",
            "BadgeFontIconGlyph": "E710"
          }
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
          "HideSourceCodeAndRelatedControls": true,
          "Docs": [
            {
              "Title": "DynamicLanguagePage",
              "Uri": "https://ghost1372.github.io/winUICommunity/tools/dynamicLanguage/"
            }
          ],
          "RelatedControls": [],
          "InfoBadge": {
            "BadgeStyle": "SuccessDotInfoBadgeStyle"
          }
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
          "HideSourceCodeAndRelatedControls": true,
          "Docs": [
            {
              "Title": "InlineAutoCompleteTextBoxPage",
              "Uri": "https://ghost1372.github.io/winUICommunity/controls/inlineAutoCompleteTextBox/"
            }
          ],
          "RelatedControls": [],
          "InfoBadge": {
            "BadgeStyle": "SuccessIconInfoBadgeStyle",
            "BadgeFontIconGlyph": "BadgeFontIconGlyph",
            "BadgeWidth": 64,
            "BadgeHeight": 64
          }
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
          "Docs": [],
          "RelatedControls": []
        }
      ]
    }
  ]
}

```

# Demo
you can run [demo](https://github.com/WinUICommunity/DemoApp) and see this feature.

![NavigationWithJson](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/NavigationWithJson.png)