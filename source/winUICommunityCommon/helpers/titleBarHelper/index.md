---
title: TitleBarHelper
---

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WinUICommunity) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wuc="using:WinUICommunity"`
For use in the Csharp:
`using WinUICommunity;`
{% endnote %}

We've made it easy to use the  [customized Windows title bar](https://docs.microsoft.com/en-us/windows/apps/develop/title-bar?tabs=wasdk)

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/TitleBar.png)

# TitleBar in Window
first add following xaml in your MainWindow:

```xml
<Grid Background="{ThemeResource ApplicationPageBackgroundThemeBrush}">
    <Grid.RowDefinitions>
        <RowDefinition Height="Auto"/>
        <RowDefinition />
    </Grid.RowDefinitions>
    <Grid x:Name="AppTitleBar" Height="48">
        <Grid.ColumnDefinitions>
            <ColumnDefinition x:Name="LeftPaddingColumn" Width="0"/>
            <ColumnDefinition x:Name="IconColumn" Width="Auto"/>
            <ColumnDefinition x:Name="TitleColumn" Width="Auto"/>
            <ColumnDefinition x:Name="LeftDragColumn" Width="*"/>
            <ColumnDefinition x:Name="SearchColumn" Width="Auto"/>
            <ColumnDefinition x:Name="RightDragColumn" Width="*"/>
            <ColumnDefinition x:Name="RightPaddingColumn" Width="0"/>
        </Grid.ColumnDefinitions>
        <Image x:Name="TitleBarIcon" Source="/Assets/logo.png"
        Grid.Column="1"
        Width="16" Height="16"
        Margin="8,0,0,0"/>
        <TextBlock x:Name="TitleTextBlock" 
            Text="SettingsUI Demo" 
            Style="{StaticResource CaptionTextBlockStyle}"
            Grid.Column="2"
            VerticalAlignment="Center"
            Margin="4,0,0,0"/>
        <AutoSuggestBox Grid.Column="4" QueryIcon="Find"
                PlaceholderText="Search"
                VerticalAlignment="Center"
                Width="260" Margin="4,0"/>
    </Grid>

    <local:ShellPage Grid.Row="1"/>

</Grid>
```

now you can Initialize titlebar:
```cs
public MainWindow()
{
    this.InitializeComponent();
    var titleBarHelper = new TitleBarHelper(this, TitleTextBlock, AppTitleBar, LeftPaddingColumn, IconColumn, TitleColumn, LeftDragColumn, SearchColumn, RightDragColumn, RightPaddingColumn);
}
```

# TabView with TitleBar
use TabView in TitleBar

```xml
<Grid>
    <TabView x:Name="tabView">
        <TabView.TabStripFooter>
            <Grid x:Name="CustomDragRegion"
                  IsHitTestVisible="False" />
        </TabView.TabStripFooter>
        <TabView.TabItems>
            <TabViewItem Header="TabItem1"
                         IsClosable="False">
                <TextBlock Text="Item 1"></TextBlock>
            </TabViewItem>
            <TabViewItem Header="TabItem2">
                <Button x:Name="myButton">Click Me</Button>
            </TabViewItem>
            <TabViewItem Header="TabItem3"></TabViewItem>
            <TabViewItem Header="TabItem4"></TabViewItem>
        </TabView.TabItems>
    </TabView>
</Grid>
```
now you can Initialize titlebar:
```cs
public MainWindow()
{
    this.InitializeComponent();
    var titleBarHelper = new TitleBarHelper(this, tabView, CustomDragRegion);
}
```

# Demo
you can run [demo](https://github.com/WinUICommunity/SettingsUI) and see this feature.
