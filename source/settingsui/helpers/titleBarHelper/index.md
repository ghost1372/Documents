---
title: TitleBarHelper
---

We've made it easy to use the  [customized Windows title bar](https://docs.microsoft.com/en-us/windows/apps/develop/title-bar?tabs=wasdk)

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/TitleBar.png)

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

now you can Initialize title bar:
```cs
public MainWindow()
{
    this.InitializeComponent();
    TitleBarHelper.Initialize(this, TitleTextBlock, AppTitleBar, LeftPaddingColumn, IconColumn, TitleColumn, LeftDragColumn, SearchColumn, RightDragColumn, RightPaddingColumn);
}
```

# Demo
you can run [demo](https://github.com/ghost1372/SettingsUI) and see this feature.
