---
title: TitleBar
---

A control, defined in XAML, that contains all required properties to create a modern titlebar experience. It would automatically handle all the required code behind APIs.

# Attribute

|Name|
|-|
|Icon|
|Title|
|Subtitle|
|Content|
|Footer|
|IsBackButtonVisible|
|IsPaneButtonVisible|
|Display|
|CompactStateBreakpoint|
|AutoConfigureCustomTitleBar|
|Window|
|PaneButtonMargin|
|BackButtonMargin|
|BackButtonWidth|
|PaneButtonWidth|
|FooterMargin|
|HasTitleBar|
|IsResizable|
|IsMaximizable|
|IsMinimizable|
|IsAlwaysOnTop|
|PaneButtonTooltipText|
|BackButtonTooltipText|

# Event

|Name|
|-|
|BackButtonClick|
|PaneButtonClick|


# Example 1
first put TitleBar control in your MainWindow or Page:

```xml
<wuc:TitleBar x:Name="appTitleBar"
                Title="Title"
                Subtitle="Subtitle"
                BackButtonClick="appTitleBar_BackButtonClick"
                IsBackButtonVisible="True"
                IsPaneButtonVisible="True"
                PaneButtonClick="appTitleBar_PaneButtonClick">
    <wuc:TitleBar.Icon>
        <BitmapIcon ShowAsMonochrome="False" UriSource="ms-appx:///Assets/icon.png" />
    </wuc:TitleBar.Icon>
</wuc:TitleBar>
```

and in your Code-Behind you should set `Window` property:

```cs
appTitleBar.Window = App.currentWindow;
```

# Example 2

```xml
<wuc:TitleBar x:Name="appTitleBar"
                Title="Title"
                Subtitle="Subtitle"
                BackButtonClick="appTitleBar_BackButtonClick"
                IsBackButtonVisible="True"
                IsPaneButtonVisible="True"
                PaneButtonClick="appTitleBar_PaneButtonClick">
    <wuc:TitleBar.Icon>
        <BitmapIcon ShowAsMonochrome="False" UriSource="ms-appx:///Assets/icon.png" />
    </wuc:TitleBar.Icon>
    <wuc:TitleBar.Content>
        <AutoSuggestBox PlaceholderText="Search..." QueryIcon="Find"/>
    </wuc:TitleBar.Content>
    <wuc:TitleBar.Footer>
        <Button Height="32" Margin="0,0,4,0" Style="{ThemeResource SubtleButtonStyle}" ToolTipService.ToolTip="Toggle Theme">
            <Button.Content>
                <FontIcon FontSize="16"
                            Glyph="&#xE793;" />
            </Button.Content>
        </Button>
    </wuc:TitleBar.Footer>
</wuc:TitleBar>
```

{% note info %}
If `AutoConfigureCustomTitleBar` is enabled, the TitleBar will make the required code-behind changes to make your content extend into the titlebar area and setting the correct caption background brushes. However, launching the app might briefly show the standard titlebar. To overcome this, make sure you set the following code in the OnLaunched method (in App.xaml.cs) or wherever you create your window:
{% endnote %}

```cs
currentWindow.AppWindow.TitleBar.ExtendsContentIntoTitleBar = true;
currentWindow.AppWindow.TitleBar.ButtonBackgroundColor = Microsoft.UI.Colors.Transparent;
```


# Override TitleBar Height

you can override TitleBar Height value:

```xml
<x:Double x:Key="TitleBarCompactHeight">32</x:Double>
<x:Double x:Key="TitleBarTallHeight">48</x:Double>
<x:Double x:Key="TitleBarContentMaxWidth">360</x:Double>
```

you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.

![WinUICommunity](https://raw.githubusercontent.com/WinUICommunity/Resources/main/WinUICommunityDocs/TitleBar.png)
![WinUICommunity](https://raw.githubusercontent.com/WinUICommunity/Resources/main/WinUICommunityDocs/TitleBar2.gif)
