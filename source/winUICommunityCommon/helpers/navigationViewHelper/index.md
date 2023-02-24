---
title: NavigationViewHelper
---

Easily implement a `NavigationView` with `Back` button and `AutoSuggestBox`

# Related Classes
|Name|
|-|
|NavHelper|
|NavigationService|
|ShellViewModel|

```xml
<NavigationView
    x:Name="navigationView"
    IsBackEnabled="{x:Bind ViewModel.IsBackEnabled, Mode=OneWay}"
    ItemInvoked="navigationView_ItemInvoked"
    SelectedItem="{x:Bind ViewModel.Selected, Mode=OneWay}">
    <NavigationView.AutoSuggestBox>
        <AutoSuggestBox Name="autoSuggestBox" QueryIcon="Find" PlaceholderText="Search" TextChanged="OnControlsSearchBoxTextChanged" QuerySubmitted="OnControlsSearchBoxQuerySubmitted"/>
    </NavigationView.AutoSuggestBox>
    <NavigationView.MenuItems>
        <NavigationViewItem
            Margin="0,0,12,0"
            helpers:NavHelper.NavigateTo="views:GeneralPage"
            Content="General"/>

        <NavigationViewItem
            Margin="0,0,12,0"
            helpers:NavHelper.NavigateTo="views:AwakePage"
            Content="General"/>

        <NavigationViewItem
            Margin="0,0,12,0"
            helpers:NavHelper.NavigateTo="views:FancyZonesPage"
            Content="General"/>
    </NavigationView.MenuItems>
    <Frame x:Name="shellFrame"/>
</NavigationView>
```
now create a new `ShellViewModel` and initialize it

```cs
public ShellViewModel ViewModel { get; } = new ShellViewModel();

ViewModel.InitializeNavigation(shellFrame, navigationView)
                    .WithAutoSuggestBox(autoSuggestBox)
                    .WithKeyboardAccelerator(KeyboardAccelerators)
                    .WithDefaultPage(typeof(myPage))
                    .WithSettingsPage(typeof(mySettingsPage));
```

add UserControl or Page `Loaded` event

```cs
private void UserControl_Loaded(object sender, Microsoft.UI.Xaml.RoutedEventArgs e)
{
    ViewModel.OnLoaded();
}

private void navigationView_ItemInvoked(NavigationView sender, NavigationViewItemInvokedEventArgs args)
{
    ViewModel.OnItemInvoked(args);
}

private void OnControlsSearchBoxQuerySubmitted(AutoSuggestBox sender, AutoSuggestBoxQuerySubmittedEventArgs args)
{
    ViewModel.OnAutoSuggestBoxQuerySubmitted(args);
}

private void OnControlsSearchBoxTextChanged(AutoSuggestBox sender, AutoSuggestBoxTextChangedEventArgs args)
{
    ViewModel.OnAutoSuggestBoxTextChanged(args);
}
```

if you have `Microsoft.Xaml.Behaviors.WinUI.Managed` nuget package, you can bind `Loaded` and `ItemInvoked` events to command

```xml
<UserControl>
    <i:Interaction.Behaviors>
        <ic:EventTriggerBehavior EventName="Loaded">
            <ic:InvokeCommandAction Command="{x:Bind ViewModel.LoadedCommand}"/>
        </ic:EventTriggerBehavior>
    </i:Interaction.Behaviors>

<NavigationView>
    <i:Interaction.Behaviors>
        <ic:EventTriggerBehavior EventName="ItemInvoked">
            <ic:InvokeCommandAction Command="{x:Bind ViewModel.ItemInvokedCommand}"/>
        </ic:EventTriggerBehavior>
    </i:Interaction.Behaviors>
</NavigationView>

<AutoSuggestBox>
    <i:Interaction.Behaviors>
        <ic:EventTriggerBehavior EventName="TextChanged">
            <ic:InvokeCommandAction Command="{x:Bind ViewModel.AutoSuggestBoxTextChangedCommand}"/>
        </ic:EventTriggerBehavior>
        <ic:EventTriggerBehavior EventName="QuerySubmitted">
            <ic:InvokeCommandAction Command="{x:Bind ViewModel.AutoSuggestBoxQuerySubmittedCommand}"/>
        </ic:EventTriggerBehavior>
    </i:Interaction.Behaviors>
</NavigationView>
</UserControl>
```

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/NavigationViewHelper.gif)

# Demo
you can run [demo](https://github.com/WinUICommunity/DemoApp) and see this feature.
