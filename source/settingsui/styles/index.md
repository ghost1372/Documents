---
title: Styles
---

# TextBlock
|Name|
|-|
|OobeSubtitleStyle|
|SecondaryTextStyle|

```xml
<TextBlock Text="Test" Style="{ThemeResource OobeSubtitleStyle}"/>
<TextBlock Text="Test" Style="{ThemeResource SecondaryTextStyle}"/> 
```

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/TextBlockStyle.png)

# Expander
|Name|
|-|
|SettingExpanderStyle|

# Rectangle
|Name|
|-|
|ExpanderSeparatorStyle|

```xml
<Rectangle Style="{StaticResource ExpanderSeparatorStyle}"/>
```
![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/ExpanderSeparatorStyle.png)

# Button
|Name|
|-|
|SettingButtonStyle|

```xml
<Button Style="{StaticResource SettingButtonStyle}">
    <controls:Setting Description="Remap keys to other keys or shortcuts" Header="Remap a key" Style="{StaticResource ExpanderHeaderSettingStyle}">
        <controls:Setting.Icon>
            <SymbolIcon Symbol="Keyboard"/>
        </controls:Setting.Icon>
        <controls:Setting.ActionContent>
            <FontIcon FontFamily="{ThemeResource SymbolThemeFontFamily}" Glyph="&#xE8A7;"/>
        </controls:Setting.ActionContent>
    </controls:Setting>
</Button>
```

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/SettingButtonStyle.png)

# HyperlinkButton
|Name|
|-|
|HyperlinkButtonStyle|

```xml
<HyperlinkButton Content="Click Here" Style="{ThemeResource HyperlinkButtonStyle}"/>
```

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/HyperlinkButtonStyle.png)

# ToggleSwitch
## 
|Name|
|-|
|ToggleSwitchSettingStyle|

```xml
 <ToggleSwitch Style="{ThemeResource ToggleSwitchSettingStyle}"/>
```

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/ToggleSwitchSettingStyle.png)


# ButtonBase
|Name|
|-|
|TextButtonStyle|

```xml
<Button Content="Click Here" Style="{ThemeResource TextButtonStyle}"/>
```

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/TextButtonStyle.png)

# ListViewItem
|Name|
|-|
|ListViewItemSettingStyle|

```xml
<ListView HorizontalAlignment="Stretch" ItemsSource="{x:Bind ColorFormats, Mode=TwoWay}" SelectionMode="None">
    <ListView.Resources>
        <Style TargetType="ListViewItem" BasedOn="{StaticResource ListViewItemSettingStyle}"/>
    </ListView.Resources>
    <ListView.ItemTemplate>
        <DataTemplate x:DataType="models:ColorFormatModel">
            <Grid MinHeight="68" Padding="0,0,16,0" HorizontalAlignment="Stretch" AutomationProperties.Name="{x:Bind Name}" Background="{ThemeResource CardBackgroundBrush}" BorderBrush="{ThemeResource CardBorderBrush}" BorderThickness="{ThemeResource CardBorderThickness}" CornerRadius="{ThemeResource ControlCornerRadius}">
                <Grid.RowDefinitions>
                    <RowDefinition/>
                    <RowDefinition/>
                </Grid.RowDefinitions>
                <TextBlock Margin="56,8,0,0" FontSize="16" FontWeight="SemiBold" Text="{x:Bind Name}"/>
                <TextBlock Grid.Row="1" Margin="56,0,0,8" Style="{StaticResource SecondaryTextStyle}" Text="{x:Bind Example}"/>
                <ToggleSwitch Grid.RowSpan="2" Margin="0,0,56,0" HorizontalAlignment="Right" AutomationProperties.HelpText="{x:Bind Name}" IsOn="{x:Bind IsShown, Mode=TwoWay}" OffContent="" OnContent=""/>

                <Button Grid.RowSpan="2" HorizontalAlignment="Right" VerticalAlignment="Center" Background="Transparent" Content="&#xE10C;" FontFamily="{ThemeResource SymbolThemeFontFamily}">
                    <Button.Flyout>
                        <MenuFlyout>
                            <MenuFlyoutItem Icon="Up" IsEnabled="{x:Bind CanMoveUp}" Text="Move up"/>
                            <MenuFlyoutItem IsEnabled="{x:Bind CanMoveDown}" Text="Move down">
                                <MenuFlyoutItem.Icon>
                                    <FontIcon Glyph="&#xE1FD;"/>
                                </MenuFlyoutItem.Icon>
                            </MenuFlyoutItem>
                        </MenuFlyout>
                    </Button.Flyout>
                    <ToolTipService.ToolTip>
                        <TextBlock Text="More options"/>
                    </ToolTipService.ToolTip>
                </Button>
            </Grid>
        </DataTemplate>
    </ListView.ItemTemplate>
</ListView>
```

```cs
public ObservableCollection<ColorFormatModel> ColorFormats { get; set; } = new ObservableCollection<ColorFormatModel>();

public void InitializeColorFormat()
{
    var hexFormatName = "HEX";
    var rgbFormatName = "RGB";
    var hslFormatName = "HSL";
    var hsvFormatName = "HSV";
    var cmykFormatName = "CMYK";
    var hsbFormatName = "HSB";
    var hsiFormatName = "HSI";
    var hwbFormatName = "HWB";
    var ncolFormatName = "NCol";

    ColorFormats.Add(new ColorFormatModel(hexFormatName, "#EF68FF", true));
    ColorFormats.Add(new ColorFormatModel(rgbFormatName, "rgb(239, 104, 255)", true));
    ColorFormats.Add(new ColorFormatModel(hslFormatName, "hsl(294, 100%, 70%)", true));
    ColorFormats.Add(new ColorFormatModel(hsvFormatName, "hsv(294, 59%, 100%)", true));
    ColorFormats.Add(new ColorFormatModel(cmykFormatName, "cmyk(6%, 59%, 0%, 0%)", true));
    ColorFormats.Add(new ColorFormatModel(hsbFormatName, "hsb(100, 50%, 75%)", true));
    ColorFormats.Add(new ColorFormatModel(hsiFormatName, "hsi(100, 50%, 75%)", true));
    ColorFormats.Add(new ColorFormatModel(hwbFormatName, "hwb(100, 50%, 75%)", true));
    ColorFormats.Add(new ColorFormatModel(ncolFormatName, "R10, 50%, 75%", true));
}

public class ColorFormatModel : Observable
{
    private string _name;
    private string _example;
    private bool _isShown;
    private bool _canMoveUp = true;
    private bool _canMoveDown = true;

    public ColorFormatModel(string name, string example, bool isShown)
    {
        Name = name;
        Example = example;
        IsShown = isShown;
    }

    public string Name
    {
        get { return _name; }
        set { Set(ref _name, value); }
    }

    public string Example
    {
        get { return _example; }
        set { Set(ref _example, value); }
    }

    public bool IsShown
    {
        get { return _isShown; }
        set { Set(ref _isShown, value); }
    }

    public bool CanMoveUp
    {
        get { return _canMoveUp; }
        set { Set(ref _canMoveUp, value); }
    }

    public bool CanMoveDown
    {
        get { return _canMoveDown; }
        set { Set(ref _canMoveDown, value); }
    }
}
```
![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/ListViewItemSettingStyle.png)


# Border
|Name|
|-|
|BorderPanel|

```xml
<Border Style="{ThemeResource BorderPanel}">

</Border>

```
![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/BorderPanel.png)

# Grid
|Name|
|-|
|GridPanel|

```xml
<Grid Style="{ThemeResource GridPanel}">

</Grid>
```

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/GridPanel.png)
