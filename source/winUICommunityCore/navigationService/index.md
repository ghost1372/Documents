---
title: NavigationService
---

Easily implement a `NavigationView` With/Without `Json` file (we read navigationview items from a json file)

# Simple Usage

First Create a Class `myPageService` and inherit from `PageService`

then in this class in `ctor` add your pages with a key into `_pageKeyToTypeMap` dictionary:

```cs
public class myPageService : PageService
{
    public myPageService()
    {
        _pageKeyToTypeMap = new Dictionary<string, Type>
        {
            { "BlankPage1", typeof(BlankPage1) },
            { "BlankPage2", typeof(BlankPage2) },
            { "BlankPage3", typeof(BlankPage3) },
        };
    }
}
```

{% note info %}
you can also inherit from IPageService
{% endnote %}

now create a new `myPageService` class, and here you can set DefaultPage or SettingsPage for NavigationView:

```cs
var pageService = new myPageService();
pageService.SetDefaultPage(typeof(HomeLandingsPage));
pageService.SetSettingsPage(typeof(GeneralPage));
```

after creating myPageService, Create `INavigationViewService` and `INavigationService`:

```cs
INavigationViewService navigationViewService;
INavigationService navigationService;

navigationService = new NavigationService(pageService);
navigationService.Frame = navFrame;
navigationViewService = new NavigationViewService(navigationService, pageService);
```

as you can see, we should set `Frame` in `navigationService`.

then we should call `Initialize` Method:

```cs
navigationViewService.Initialize(navigationView);
```

now you should add a `NavigateTo` in your NavigationViewItem:

```xml
<NavigationViewItem helper:NavigationHelper.NavigateTo="BlankPage1" Content="First" />
```

{% note info %}
BlankPage1 is a key, you defined it in myPageService.
{% endnote %}

### Config
there are some config methods:

#### ConfigAutoSuggestBox

You can search in the autosuggestbox and be navigated to the results page
```cs
navigationViewService.ConfigAutoSuggestBox(autoSuggestBox);
```


```xml
<NavigationView Name="navigationView">
    <NavigationView.AutoSuggestBox>
        <AutoSuggestBox Name="autoSuggestBox" />
    </NavigationView.AutoSuggestBox>
    <NavigationView.MenuItems>
        <NavigationViewItem wuc:NavigationHelper.NavigateTo="BlankPage1"
                            Content="First" />
        <NavigationViewItem Content="Second">
            <NavigationViewItem.MenuItems>
                <NavigationViewItem wuc:NavigationHelper.NavigateTo="BlankPage2"
                                    Content="Third" />
                <NavigationViewItem Content="Four">
                    <NavigationViewItem.MenuItems>
                        <NavigationViewItem wuc:NavigationHelper.NavigateTo="BlankPage3"
                                            Content="Five" />
                    </NavigationViewItem.MenuItems>
                </NavigationViewItem>
            </NavigationViewItem.MenuItems>
        </NavigationViewItem>
    </NavigationView.MenuItems>
    <Frame Name="navFrame" />
</NavigationView>
```

### Complete Codes

```cs
INavigationViewService navigationViewService;
INavigationService navigationService;

var pageService = new myPageService();
pageService.SetDefaultPage(typeof(HomeLandingsPage));
pageService.SetSettingsPage(typeof(GeneralPage));

navigationService = new NavigationService(pageService);
navigationService.Frame = navFrame;

navigationViewService = new NavigationViewService(navigationService, pageService);
navigationViewService.Initialize(navigationView);
navigationViewService.ConfigAutoSuggestBox(autoSuggestBox);
```

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/NavigationViewHelper.gif)


## NavigationView With Json File

First Add a NavigationView:

```xml
<NavigationView x:Name="navigationView">
    <NavigationView.AutoSuggestBox>
        <AutoSuggestBox x:Name="autoSuggestBox">
        </AutoSuggestBox>
    </NavigationView.AutoSuggestBox>
    <Frame x:Name="navFrame"/>
</NavigationView>
```

then Create a new `IJsonNavigationViewService`:

```cs
IJsonNavigationViewService jsonNavigationViewService;
jsonNavigationViewService = new JsonNavigationViewService();
```

now you should call `Initialize` method with a `NavigationView` and `Frame`

```cs
jsonNavigationViewService.Initialize(navigationView, navFrame);
```

after that you should call `ConfigJson` method:

```cs
jsonNavigationViewService.ConfigJson("DataModel/AppData.json");
```

### Configs
there are some config methods:

#### ConfigDefaultPage
set Default page for NavigationView
```cs
jsonNavigationViewService.ConfigDefaultPage(typeof(HomeLandingsPage));
```
#### ConfigSettingsPage
set Settings page for NavigationView

```cs
jsonNavigationViewService.ConfigSettingsPage(typeof(GeneralPage));
```

#### ConfigAutoSuggestBox
You can search in the autosuggestbox and be navigated to the results page

```cs
jsonNavigationViewService.ConfigAutoSuggestBox(autoSuggestBox);
```            

#### ConfigLocalizer
you can use ILocalizer for localizing resources in json file

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

In the last step, you need to create the json file:
create a new `json` file (`AppData.json`) in a folder called `DataModel`:


{% note warning %}
- Set BuildAction for `AppData.json` to `Content` and if you are in a Unpackaged app, also set `CopyToOutput` to `Always`
{% endnote %}

{% note info %}
To see details and descriptions of Json's properties, refer to <ins>**[this](https://ghost1372.github.io/winUICommunity/jsonFile)**</ins> page
{% endnote %}

{% note warning %}
If you have items that use the same Page, you should set the `parameter` property in the json file to avoid navigation errors.

"UniqueId": "WinUICommunity.DemoApp.Pages.myPage",
"Title": "Movie"
"Parameter": "Movie"

---

"UniqueId": "WinUICommunity.DemoApp.Pages.myPage",
"Title": "Series"
"Parameter": "Series"

{% endnote %}

{% note info %}
When we add page information (key, page) in the dictionary, the key is created as follows (parameter can be null)
UniqueId + Parameter
{% endnote %}

this is a json file content:

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

- UniqueId
this is your pages full address, for example: `WinUICommunity.DemoApp.Pages.ApplicationDataContainerPage`

- ApiNamespace
this is your apps namespace, for example: `WinUICommunity.DemoApp`

{% note warning %}
for Navigating to a Page we used UniqueId.
{% endnote %}

### Methods and Properties

there is some methods and properties that you can use them:

```cs
var jsonDataSource = jsonNavigationViewService.DataSource;

jsonNavigationViewService.SearchNavigationViewItems(navigationView.MenuItems, "query")
```

### Complete Codes

```cs
IJsonNavigationViewService jsonNavigationViewService;
jsonNavigationViewService = new JsonNavigationViewService();
jsonNavigationViewService.Initialize(navigationView, navFrame);
jsonNavigationViewService.ConfigDefaultPage(typeof(HomeLandingsPage));
jsonNavigationViewService.ConfigSettingsPage(typeof(GeneralPage));
jsonNavigationViewService.ConfigJson("DataModel/AppData.json");
jsonNavigationViewService.ConfigAutoSuggestBox(autoSuggestBox);
```

# MVVM Patern
first register a `IJsonNavigationViewService` service:

```cs
services.AddSingleton<IJsonNavigationViewService>(factory =>
        {
            var json = new JsonNavigationViewService();
            json.ConfigDefaultPage(typeof(HomeLandingsPage));
            json.ConfigSettingsPage(typeof(SettingsPage));
            return json;
        });
```
then create a MainPage with a MainViewModel (or any Page you want) and register in service:

```cs
services.AddTransient<MainViewModel>();
```

now open you MainViewModel.cs file and get `IJsonNavigationViewService` in ctor:

```cs
public IJsonNavigationViewService JsonNavigationViewService;
public MainViewModel(IJsonNavigationViewService jsonNavigationViewService)
{
    JsonNavigationViewService = jsonNavigationViewService;
}
```

in last step we should initialize `JsonNavigationViewService` in our `MainPage`:

```cs
public MainPage()
{
    ViewModel = App.GetService<MainViewModel>();
    this.InitializeComponent();
    
    ViewModel.JsonNavigationViewService.Initialize(NavView, NavFrame);
    ViewModel.JsonNavigationViewService.ConfigJson("DataModel/AppData.json");
    ViewModel.JsonNavigationViewService.ConfigAutoSuggestBox(ControlsSearchBox);
}
```

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.

![NavigationWithJson](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/NavigationWithJson.png)