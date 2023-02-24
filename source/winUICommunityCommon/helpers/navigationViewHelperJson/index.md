---
title: NavigationViewHelper With Json
---

Easily implement a `NavigationView` with `Json` file (we read navigationview items from a json file)

# Related Classes
|Name|
|-|
|NavigationArgs|
|NavigationExtension|
|NavigationHelper|
|NavigationViewHelper|

## Available Builder Methods

- WithAutoSuggestBox
- WithDefaultPage
- WithIncludedInBuildMode
- WithSettingsPage
- WithMenuFlyout

{% note info %}
Access methods with `GetCurrent`

`NavigationViewHelper.GetCurrent().Navigate`
{% endnote %}

```xml
xmlns:data="using:WinUICommunity.Shared.DataModel"

<NavigationView
    x:Name="NavigationViewControl"
    Canvas.ZIndex="0"
    IsTabStop="False"
    PaneDisplayMode="Left"
    SelectionChanged="OnNavigationViewSelectionChanged"
    IsTitleBarAutoPaddingEnabled="True">
    <NavigationView.AutoSuggestBox>
        <AutoSuggestBox
            x:Name="controlsSearchBox"
            MinWidth="200"
            VerticalAlignment="Center"
            x:FieldModifier="public"
            QuerySubmitted="controlsSearchBox_QuerySubmitted"
            KeyboardAcceleratorPlacementMode="Hidden"
            PlaceholderText="Search"
            QueryIcon="Find">
            <AutoSuggestBox.ItemTemplate>
                <DataTemplate x:DataType="data:ControlInfoDataItem">
                    <Grid AutomationProperties.Name="{x:Bind Title}" ColumnSpacing="12">
                        <Grid.ColumnDefinitions>
                            <ColumnDefinition Width="16" />
                            <ColumnDefinition Width="*" />
                        </Grid.ColumnDefinitions>
                        <Image Source="{x:Bind ImagePath}" />
                        <TextBlock Grid.Column="1" Text="{x:Bind Title}" />
                    </Grid>
                </DataTemplate>
            </AutoSuggestBox.ItemTemplate>
        </AutoSuggestBox>
    </NavigationView.AutoSuggestBox>

    <Frame
        x:Name="rootFrame"/>
</NavigationView>
```
now create a new `json` file (`ControlInfoData.json`) in a folder called `DataModel`:

{% note warning %}
- Set BuildAction for `ControlInfoData.json` to `Content` and if you are in a Unpackaged app, also set Copy To Output to Always
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


- UniqueId
this is your pages full address, for example: `WinUICommunity.DemoApp.Pages.ApplicationDataContainerPage`
- ApiNamespace
this is your apps namespace, for example: `WinUICommunity.DemoApp`

create `Loaded` Event and Initialize NavigationView
```cs
public NavigationViewFromJson()
{
    this.InitializeComponent();
    Loaded += NavigationViewFromJson_Loaded;
}

private void NavigationViewFromJson_Loaded(object sender, RoutedEventArgs e)
{
    NavigationViewHelper.GetCurrent().
        Initialize("DataModel/ControlInfoData.json", rootFrame, NavigationViewControl)
        .WithAutoSuggestBox(controlsSearchBox);
}

private void controlsSearchBox_QuerySubmitted(AutoSuggestBox sender, AutoSuggestBoxQuerySubmittedEventArgs args)
{
    NavigationViewHelper.GetCurrent().AutoSuggestBoxQuerySubmitted(args, typeof(ItemPage));
    // OR
    // if (args.ChosenSuggestion != null && args.ChosenSuggestion is ControlInfoDataItem)
    // {
    //    var infoDataItem = args.ChosenSuggestion as ControlInfoDataItem;
    //    var hasChangedSelection = NavigationViewHelper.GetCurrent().EnsureItemIsVisibleInNavigation(infoDataItem.Title);

        // In case the menu selection has changed, it means that it has triggered
        // the selection changed event, that will navigate to the page already
    //    if (!hasChangedSelection)
    //    {
    //        NavigationViewHelper.GetCurrent().Navigate(typeof(ItemPage), infoDataItem.UniqueId);
    //    }
    }
}

public void Navigate(Type type)
{
    NavigationViewHelper.GetCurrent().Navigate(type);
}

private void OnNavigationViewSelectionChanged(Microsoft.UI.Xaml.Controls.NavigationView sender, Microsoft.UI.Xaml.Controls.NavigationViewSelectionChangedEventArgs args)
{
    NavigationViewHelper.GetCurrent().OnNavigationViewSelectionChanged(args, typeof(TvTimeSectionPage), typeof(ItemPage));
    // OR
    //if (!args.IsSettingsSelected)
   // {
   //     var selectedItem = args.SelectedItemContainer;
   //     if (selectedItem.DataContext is ControlInfoDataGroup)
   //     {
   //         var itemId = ((ControlInfoDataGroup)selectedItem.DataContext).UniqueId;
   //         NavigationViewHelper.GetCurrent().Navigate(typeof(myApp.SectionPage), itemId);
   //     }
   //     else if (selectedItem.DataContext is ControlInfoDataItem)
   //     {
   //         var item = (ControlInfoDataItem)selectedItem.DataContext;
   //         NavigationViewHelper.GetCurrent().Navigate(typeof(ItemPage), item.UniqueId);
   //     }
   // }
}
```
{% note warning %}
for Navigate to a Page we used Built-in Host pages such as, ItemPage and SectionPage. you can use only UniqueId to navigate your pages or create a custom host page.
{% endnote %}

also this is SectionPage:

```xml
<Page
    x:Class="WinUICommunity.DemoApp.Pages.SectionPage"
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    xmlns:controls="using:WinUICommunity.LandingsPage.Controls">

    <controls:SectionPage x:Name="sectionPage" OnItemClick="SectionPage_OnItemClick"/>
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
        WinUICommunity.Common.Helpers.NavigationViewHelper.GetCurrent().Navigate(typeof(ItemPage), item.UniqueId);
    }
}
```

# Demo
you can run [demo](https://github.com/WinUICommunity/DemoApp) and see this feature.

![NavigationWithJson](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/NavigationWithJson.png)