---
title: Windows 11 Settings Examples
---

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WinUICommunity) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wuc="using:WinUICommunity"`
For use in the Csharp:
`using WinUICommunity;`
{% endnote %}

{% note info %}
for using inline icons like this:
`HeaderIcon="{wuc:BitmapIcon Source=/Assets/FluentIcons/FluentIconsAwake.png}"`
you need to install `WinUICommunity.Core` package:
{% endnote %}

# Awake Page

```xml
<wuc:SettingsPageControl
    IsTabStop="False"
    ModuleDescription="A convenient way to keep your PC awake on-demand."
    ModuleImageSource="ms-appx:///Assets/Modules/Awake.png"
    ModuleTitle="Awake"
    SecondaryLinksHeader="Attribution">
    <wuc:SettingsPageControl.ModuleContent>
        <StackPanel Orientation="Vertical" ChildrenTransitions="{StaticResource SettingsCardsAnimations}">
            <wuc:SettingsCard
                Header="Enable Awake"
                HeaderIcon="{wuc:BitmapIcon Source=/Assets/FluentIcons/FluentIconsAwake.png}">
                <ToggleSwitch
                    OffContent="Off" OnContent="On"/>
            </wuc:SettingsCard>
            <InfoBar
                Title="The system administrator is forcing this setting."
                IsClosable="False"
                IsOpen="True"
                Severity="Informational" />

            <wuc:SimpleSettingsGroup
                Header="Behavior">

                <wuc:SettingsCard Header="Mode"
                    Description="Manage the state of your device when Awake is active"
                    HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xE945;}">
                    <ComboBox
                        MinWidth="{StaticResource SettingActionControlMinWidth}" SelectedIndex="0">
                        <ComboBoxItem x:Uid="Awake_NoKeepAwakeSelector" />
                        <ComboBoxItem x:Uid="Awake_IndefiniteKeepAwakeSelector" />
                        <ComboBoxItem x:Uid="Awake_TemporaryKeepAwakeSelector" />
                        <ComboBoxItem x:Uid="Awake_ExpirableKeepAwakeSelector" />
                    </ComboBox>
                </wuc:SettingsCard>

                <wuc:SettingsExpander Header="End date and time"
                    Description="Keep custom awake state until a specific date and time"
                    HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xEC92;}" IsExpanded="True">
                    <wuc:SettingsExpander.Items>
                        <wuc:SettingsCard
                            Header="End date">
                            <DatePicker/>
                        </wuc:SettingsCard>
                        <wuc:SettingsCard
                            Header="End time">
                            <TimePicker ClockIdentifier="24HourClock"/>
                        </wuc:SettingsCard>
                    </wuc:SettingsExpander.Items>
                </wuc:SettingsExpander>

                <wuc:SettingsCard
                    Header="Interval before returning to the previous awakeness state"
                    HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xE916;}">

                    <StackPanel Orientation="Horizontal" MinWidth="{StaticResource SettingActionControlMinWidth}">
                        <NumberBox
                            Header="Hours"
                            Width="96"
                            HorizontalAlignment="Left"
                            LargeChange="5"
                            Minimum="0"
                            SmallChange="1"
                            SpinButtonPlacementMode="Compact"/>
                        <NumberBox
                            Header="Minutes"
                            Width="96"
                            Margin="8,0,0,0"
                            HorizontalAlignment="Left"
                            LargeChange="5"
                            Maximum="60"
                            Minimum="0"
                            SmallChange="1"
                            SpinButtonPlacementMode="Compact"/>
                    </StackPanel>
                </wuc:SettingsCard>

                <wuc:SettingsCard Header="Keep screen on"
                    Description="This setting is only available when keeping the PC awake"
                    HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xE7F4;}">
                    <ToggleSwitch/>
                </wuc:SettingsCard>
            </wuc:SimpleSettingsGroup>
        </StackPanel>
    </wuc:SettingsPageControl.ModuleContent>

    <wuc:SettingsPageControl.PrimaryLinks>
        <wuc:PageLink Link="https://aka.ms/PowerToysOverview_Awake" Text="Learn more about Awake"/>
    </wuc:SettingsPageControl.PrimaryLinks>
    <wuc:SettingsPageControl.SecondaryLinks>
        <wuc:PageLink Link="https://Awake.den.dev" Text="Den Delimarsky's Awake"/>
    </wuc:SettingsPageControl.SecondaryLinks>
</wuc:SettingsPageControl>
```

![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/Awake_Demo.png)

# ColorPicker Page

```xml
<Page.Resources>
    <Style TargetType="ListViewItem" BasedOn="{StaticResource ListViewItemSettingStyle}"/>
</Page.Resources>
<wuc:SettingsPageControl
    ModuleDescription="Quick and simple system-wide color picker."
    ModuleImageSource="ms-appx:///Assets/Modules/ColorPicker.png"
    ModuleTitle="Color Picker"
    SecondaryLinksHeader="Attribution">
    <wuc:SettingsPageControl.ModuleContent>
        <StackPanel
            ChildrenTransitions="{StaticResource SettingsCardsAnimations}"
            Orientation="Vertical">
            <wuc:SettingsCard
                Header="Enable Color Picker"
                HeaderIcon="{wuc:BitmapIcon Source=/Assets/FluentIcons/FluentIconsColorPicker.png}">
                <ToggleSwitch />
            </wuc:SettingsCard>
            <InfoBar
                Title="The system administrator is forcing this setting."
                IsClosable="False"
                IsOpen="True"
                Severity="Informational" />

            <wuc:SimpleSettingsGroup Header="Shortcut">
                <wuc:SettingsCard Header="Activation behavior" HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xEC4E;}">
                    <ComboBox MinWidth="{StaticResource SettingActionControlMinWidth}" SelectedIndex="0">
                        <ComboBoxItem Content="Open editor" />
                        <ComboBoxItem Content="Pick a color and open editor" />
                        <ComboBoxItem Content="Only pick a color" />
                    </ComboBox>
                </wuc:SettingsCard>

            </wuc:SimpleSettingsGroup>

            <wuc:SimpleSettingsGroup Header="Picker behavior">
                <wuc:SettingsCard Header="Default color format" Description="This format will be copied to your clipboard" HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xF0E3;}">
                    <ComboBox
                        MinWidth="{StaticResource SettingActionControlMinWidth}"/>
                </wuc:SettingsCard>

                <wuc:SettingsCard Header="Show color name" Description="This will show the name of the color when picking a color">
                    <ToggleSwitch />
                </wuc:SettingsCard>
            </wuc:SimpleSettingsGroup>

            <wuc:SimpleSettingsGroup Header="Color formats">
                <wuc:SettingsCard
                    Header="Color formats"
                    Description="Configure the color formats (edit, delete, hide, reorder them)"
                    HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily},
                                                Glyph=&#xE762;}">
                    <Button
                        Content="Add new format"
                        HorizontalAlignment="Right"
                        Style="{StaticResource AccentButtonStyle}" />
                </wuc:SettingsCard>
                <ListView
                    HorizontalAlignment="Stretch"
                    AutomationProperties.Name="{Binding ElementName=ColorFormatsSetting, Path=Header}"
                    ItemsSource="{x:Bind ColorFormats, Mode=TwoWay}"
                    SelectionMode="None">
                    <ListView.ItemTemplate>
                        <DataTemplate x:DataType="models:ColorFormatModel">
                            <wuc:SettingsCard
                                Margin="0,0,0,2"
                                Description="{x:Bind Example, Mode=TwoWay, UpdateSourceTrigger=PropertyChanged}"
                                Header="{x:Bind Name, Mode=TwoWay, UpdateSourceTrigger=PropertyChanged}"
                                IsActionIconVisible="False"
                                IsClickEnabled="True">
                                <wuc:SettingsCard.Resources>
                                    <x:Double x:Key="SettingsCardLeftIndention">42</x:Double>
                                    <x:Double x:Key="SettingsCardActionButtonWidth">0</x:Double>
                                </wuc:SettingsCard.Resources>
                                <StackPanel Orientation="Horizontal" Spacing="4">
                                    <ToggleSwitch
                                        OffContent=""
                                        OnContent="" />
                                    <Button
                                        Grid.Column="1"
                                        VerticalAlignment="Center"
                                        Content="&#xE712;"
                                        FontFamily="{ThemeResource SymbolThemeFontFamily}"
                                        Style="{StaticResource SubtleButtonStyle}">
                                        <Button.Flyout>
                                            <MenuFlyout>
                                                <MenuFlyoutItem
                                                    Text="MoveUp">
                                                    <MenuFlyoutItem.Icon>
                                                        <FontIcon Glyph="&#xE74A;" />
                                                    </MenuFlyoutItem.Icon>
                                                </MenuFlyoutItem>
                                                <MenuFlyoutItem
                                                    Text="MoveDown">
                                                    <MenuFlyoutItem.Icon>
                                                        <FontIcon Glyph="&#xE74B;" />
                                                    </MenuFlyoutItem.Icon>
                                                </MenuFlyoutItem>
                                                <MenuFlyoutSeparator />
                                                <MenuFlyoutItem
                                                    Text="RemoveItem">
                                                    <MenuFlyoutItem.Icon>
                                                        <FontIcon Glyph="&#xE74D;" />
                                                    </MenuFlyoutItem.Icon>
                                                </MenuFlyoutItem>

                                            </MenuFlyout>
                                        </Button.Flyout>
                                        <ToolTipService.ToolTip>
                                            <TextBlock Text="More options" />
                                        </ToolTipService.ToolTip>
                                    </Button>
                                </StackPanel>
                            </wuc:SettingsCard>
                        </DataTemplate>
                    </ListView.ItemTemplate>
                </ListView>
            </wuc:SimpleSettingsGroup>
        </StackPanel>
    </wuc:SettingsPageControl.ModuleContent>

    <wuc:SettingsPageControl.PrimaryLinks>
        <wuc:PageLink Link="https://aka.ms/PowerToysOverview_ColorPicker" Text="Learn more about Color Picker"/>
    </wuc:SettingsPageControl.PrimaryLinks>
    <wuc:SettingsPageControl.SecondaryLinks>
        <wuc:PageLink Link="https://github.com/martinchrzan/ColorPicker/" Text="Martin Chrzan's Color Picker"/>
        <wuc:PageLink Link="https://medium.com/@Niels9001/a-fluent-color-meter-for-powertoys-20407ededf0c" Text="Niels Laute's UX concept"/>
    </wuc:SettingsPageControl.SecondaryLinks>
</wuc:SettingsPageControl>
```

```cs
public ObservableCollection<ColorFormatModel> ColorFormats { get; set; } = new ObservableCollection<ColorFormatModel>();

public void InitializeColorFormats()
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

![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/ColorFornat1_Demo.png)


![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/ColorFornat2_Demo.png)

# FancyZones Page

```xml
<wuc:SettingsPageControl
    ModuleDescription="Create window layouts to help make multi-tasking easy."
    ModuleImageSource="ms-appx:///Assets/Modules/FancyZones.png"
    ModuleTitle="FancyZones">
    <wuc:SettingsPageControl.ModuleContent>
        <StackPanel Orientation="Vertical" ChildrenTransitions="{StaticResource SettingsCardsAnimations}">
            <wuc:SettingsCard
                Header="Enable FancyZones"
                HeaderIcon="{wuc:BitmapIcon Source=/Assets/FluentIcons/FluentIconsFancyZones.png}">
                <ToggleSwitch/>
            </wuc:SettingsCard>
            <InfoBar
                Title="The system administrator is forcing this setting."
                IsClosable="False"
                IsOpen="True"
                Severity="Informational" />

            <wuc:SimpleSettingsGroup
                Header="Editor">
                <wuc:SettingsCard
                    Header="Launch layout editor"
                    Description="Set and manage your layouts"
                    ActionIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, FontSize=14, Glyph=&#xE8A7;}"
                    HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xEB3C;}"
                    IsClickEnabled="True" />

                <wuc:SettingsCard
                    Header="Activation shortcut" Description="Customize the shortcut to activate this module"
                    HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xEDA7;}">
                </wuc:SettingsCard>

                <wuc:SettingsCard
                    Header="Launch editor on the display" Description="When using multiple displays"
                    HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xe7b5;}">
                    <ComboBox
                        MinWidth="{StaticResource SettingActionControlMinWidth}"
                        SelectedIndex="0">
                        <ComboBoxItem Content="With active focus" />
                        <ComboBoxItem Content="Where the mouse pointer is" />
                    </ComboBox>
                </wuc:SettingsCard>
            </wuc:SimpleSettingsGroup>


            <wuc:SimpleSettingsGroup
                Header="Zones">
                <wuc:SettingsExpander
                    Header="Zone behavior" Description="Manage how zones behave when using FancyZones"
                    IsExpanded="True">
                    <wuc:SettingsExpander.Items>
                        <wuc:SettingsCard ContentAlignment="Left">
                            <CheckBox
                                Content="Hold Shift key to activate zones while dragging"/>
                        </wuc:SettingsCard>
                        <wuc:SettingsCard ContentAlignment="Left">
                            <CheckBox
                                Content="Use a non-primary mouse button to toggle zone activation"/>
                        </wuc:SettingsCard>
                        <wuc:SettingsCard ContentAlignment="Left">
                            <CheckBox
                                Content="Show zones on all monitors while dragging a window"/>
                        </wuc:SettingsCard>
                        <wuc:SettingsCard ContentAlignment="Left">
                            <wuc:CheckBoxWithDescriptionControl
                                Content="Allow zones to span across monitors"/>
                        </wuc:SettingsCard>
                        <wuc:SettingsCard Header="When multiple zones overlap">
                            <ComboBox
                                MinWidth="{StaticResource SettingActionControlMinWidth}"
                                SelectedIndex="0">
                                <ComboBoxItem Content="Activate the smallest zone by area" />
                                <ComboBoxItem Content="Activate the largest zone by area" />
                                <ComboBoxItem Content="Split the overlapped area into multiple activation targets" />
                                <ComboBoxItem Content="Activate the zone whose center is closest to the cursor" />
                            </ComboBox>
                        </wuc:SettingsCard>
                    </wuc:SettingsExpander.Items>
                </wuc:SettingsExpander>

                <wuc:SettingsExpander Header="Zone appearance"
                    Description="Customize the way zones look"
                    HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xEB3C;}"
                    IsExpanded="True">
                    <ComboBox
                        MinWidth="{StaticResource SettingActionControlMinWidth}"
                        SelectedIndex="0">
                        <ComboBoxItem Content="Custom colors" />
                        <ComboBoxItem Content="Windows default" />
                    </ComboBox>
                    <wuc:SettingsExpander.Items>
                        <wuc:SettingsCard ContentAlignment="Left">
                            <CheckBox
                                Content="Show zone number"/>
                        </wuc:SettingsCard>
                        <wuc:SettingsCard Header="Opacity">
                            <Slider
                                MinWidth="{StaticResource SettingActionControlMinWidth}"
                                Maximum="100"
                                Minimum="0"/>
                        </wuc:SettingsCard>
                    </wuc:SettingsExpander.Items>
                </wuc:SettingsExpander>
            </wuc:SimpleSettingsGroup>

            <wuc:SimpleSettingsGroup
                Header="Windows">

                <wuc:SettingsExpander
                    Header=">Window behavior" Description="Manage how windows behave when using FancyZones"
                    IsExpanded="True">
                    <wuc:SettingsExpander.Items>
                        <wuc:SettingsCard ContentAlignment="Left">
                            <CheckBox
                                Content="Keep windows in their zones when the screen resolution changes"/>
                        </wuc:SettingsCard>
                        <wuc:SettingsCard ContentAlignment="Left">
                            <CheckBox
                                Content="During zone layout changes, windows assigned to a zone will match new size/positions"/>
                        </wuc:SettingsCard>
                        <wuc:SettingsCard ContentAlignment="Left">
                            <CheckBox
                                Content="Move newly created windows to their last known zone"/>
                        </wuc:SettingsCard>
                        <wuc:SettingsCard ContentAlignment="Left">
                            <CheckBox
                                Content="Move newly created windows to the current active monitor (Experimental)"/>
                        </wuc:SettingsCard>
                        <wuc:SettingsCard ContentAlignment="Left">
                            <CheckBox
                                Content="Restore the original size of windows when unsnapping"/>
                        </wuc:SettingsCard>
                        <wuc:SettingsCard ContentAlignment="Left">
                            <CheckBox
                                Content="Make dragged window transparent"/>
                        </wuc:SettingsCard>
                        <wuc:SettingsCard ContentAlignment="Left">
                            <wuc:CheckBoxWithDescriptionControl Header="Allow popup windows snapping"
                                Description="This setting can affect all popup windows including notifications"
                                Margin="0,0,0,6"/>
                        </wuc:SettingsCard>
                        <wuc:SettingsCard ContentAlignment="Left">
                            <CheckBox
                                Content="Allow child windows snapping"/>
                        </wuc:SettingsCard>
                        <wuc:SettingsCard
                            ContentAlignment="Left">
                            <CheckBox
                                Content="Disable round corners when window is snapped"/>
                        </wuc:SettingsCard>
                    </wuc:SettingsExpander.Items>
                </wuc:SettingsExpander>

                <wuc:SettingsExpander
                    Header="Override Windows Snap" Description="This overrides the Windows Snap shortcut (Win + arrow) to move windows between zones"
                    HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xE90C;}"
                    IsExpanded="True">
                    <ToggleSwitch/>
                    <wuc:SettingsExpander.Items>
                        <wuc:SettingsCard
                            Header="Move windows based on">
                            <ComboBox
                                MinWidth="{StaticResource SettingActionControlMinWidth}"
                                MinHeight="56"
                                SelectedIndex="0">
                                <ComboBoxItem>
                                    <StackPanel
                                        Orientation="Vertical"
                                        Spacing="4">
                                        <wuc:IsEnabledTextBlock Text="Zone index" />
                                        <TextBlock
                                            FontFamily="{ThemeResource SymbolThemeFontFamily}"
                                            Style="{StaticResource SecondaryTextStyle}">
                                            <Run Text="Windows key +  or " />
                                        </TextBlock>
                                    </StackPanel>
                                </ComboBoxItem>
                                <ComboBoxItem>
                                    <StackPanel
                                        Orientation="Vertical"
                                        Spacing="4">
                                        <wuc:IsEnabledTextBlock Text="Relative position" />
                                        <TextBlock
                                            FontFamily="{ThemeResource SymbolThemeFontFamily}"
                                            Style="{StaticResource SecondaryTextStyle}">
                                            <Run Text="Windows key +    or " />
                                        </TextBlock>
                                    </StackPanel>
                                </ComboBoxItem>
                            </ComboBox>
                        </wuc:SettingsCard>
                        <wuc:SettingsCard
                            ContentAlignment="Left">
                            <CheckBox
                                Content="Move windows between zones across all monitors"/>
                        </wuc:SettingsCard>
                    </wuc:SettingsExpander.Items>
                </wuc:SettingsExpander>
            </wuc:SimpleSettingsGroup>

            <wuc:SimpleSettingsGroup
                Header="Layouts">
                <wuc:SettingsExpander 
                    Header="Enable quick layout switch" Description="Layout-specific shortcuts can be configured in the editor"
                    HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xEDA7;}">
                    <ToggleSwitch/>
                    <wuc:SettingsExpander.Items>
                        <wuc:SettingsCard
                            ContentAlignment="Left">
                            <CheckBox
                                Content="Flash zones when switching layout"/>
                        </wuc:SettingsCard>
                    </wuc:SettingsExpander.Items>
                </wuc:SettingsExpander>
            </wuc:SimpleSettingsGroup>

            <wuc:SimpleSettingsGroup
                Header="Excluded apps">

                <wuc:SettingsExpander
                    Header="Excluded apps" Description="Excludes an application from snapping to zones and will only react to Windows Snap - add one application name per line"
                    HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xECE4;}"
                    IsExpanded="True">
                    <wuc:SettingsExpander.Items>
                        <wuc:SettingsCard ContentAlignment="Vertical" HorizontalContentAlignment="Stretch">
                            <TextBox
                                PlaceholderText=">Example: outlook.exe"
                                MinWidth="240"
                                MinHeight="160"
                                AcceptsReturn="True"
                                ScrollViewer.IsVerticalRailEnabled="True"
                                ScrollViewer.VerticalScrollBarVisibility="Visible"
                                ScrollViewer.VerticalScrollMode="Enabled"
                                TextWrapping="Wrap" />
                        </wuc:SettingsCard>
                    </wuc:SettingsExpander.Items>
                </wuc:SettingsExpander>
            </wuc:SimpleSettingsGroup>
        </StackPanel>
    </wuc:SettingsPageControl.ModuleContent>

    <wuc:SettingsPageControl.PrimaryLinks>
        <wuc:PageLink Link="https://aka.ms/PowerToysOverview_FancyZones" Text="Learn more about FancyZones"/>
    </wuc:SettingsPageControl.PrimaryLinks>
</wuc:SettingsPageControl>
```

![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/FancyZones_Demo.png)

# General Page

```xml
<wuc:SettingsPageControl ModuleDescription="Microsoft PowerToys is a set of utilities for power users to tune and streamline their Windows experience for greater productivity. Made with 💗 by Microsoft and the PowerToys community."
                                ModuleImageSource="ms-appx:///Assets/Modules/PT.png"
                                ModuleTitle="General"
                                SecondaryLinksHeader="Related information">
    <wuc:SettingsPageControl.ModuleContent>
        <StackPanel ChildrenTransitions="{StaticResource SettingsCardsAnimations}" Orientation="Vertical">
            <wuc:SimpleSettingsGroup Header="Version" Margin="0,-32,0,0">
                <wuc:SettingsCard Header="PowerToys V1.0" HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xE895;}">
                    <wuc:SettingsCard.Description>
                        <StackPanel Orientation="Vertical">
                            <TextBlock Style="{StaticResource SecondaryTextStyle}">
                                <Run Text="Last checked: " />
                                <Run Text="2023/04/27" />
                            </TextBlock>
                            <HyperlinkButton
                                Content="Release Notes"
                                Margin="0,2,0,0"
                                FontWeight="SemiBold" />
                        </StackPanel>
                    </wuc:SettingsCard.Description>

                    <Button
                            Content="Check for Update"
                            HorizontalAlignment="Right"/>
                </wuc:SettingsCard>
                <InfoBar
                    Title="PowerToys is up to date"
                    IsClosable="False"
                    IsOpen="True"
                    Severity="Success" />

                <wuc:SettingsCard
                    Header="Download updates automatically"
                    Description="Except on metered connections"
                    Margin="0,-6,0,0">
                    <ToggleSwitch/>
                </wuc:SettingsCard>
                <InfoBar
                    Title="The system administrator has disabled the automatic download of updates."
                    IsClosable="False"
                    IsOpen="True"
                    Severity="Informational" />
            </wuc:SimpleSettingsGroup>

            <wuc:SimpleSettingsGroup Header="Appearance &amp; behavior" IsEnabled="True">
                <wuc:SettingsCard Header="App theme" HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xE790;}">
                    <wuc:SettingsCard.Description>
                        <HyperlinkButton Content="Windows color settings"/>
                    </wuc:SettingsCard.Description>
                    <ComboBox MinWidth="{StaticResource SettingActionControlMinWidth}" SelectedIndex="0">
                        <ComboBoxItem Content="Dark" />
                        <ComboBoxItem Content="Light" />
                        <ComboBoxItem Content="Default" />
                    </ComboBox>
                </wuc:SettingsCard>

                <wuc:SettingsCard Header="Run at startup" Description="PowerToys will launch automatically">
                    <ToggleSwitch/>
                </wuc:SettingsCard>
            </wuc:SimpleSettingsGroup>

            <wuc:SimpleSettingsGroup Header="Backup &amp; restore" Visibility="Visible">
                <wuc:SettingsExpander Header="Backup and restore your settings" Description="PowerToys will restart automatically if needed" HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xE777;}">
                    <StackPanel Orientation="Horizontal" Spacing="8">
                        <Button Content="Backup"/>
                        <Button Content="Restore"/>
                    </StackPanel>
                    <wuc:SettingsExpander.Items>
                        <wuc:SettingsCard Header="Location">
                            <StackPanel
                                HorizontalAlignment="Right"
                                Orientation="Horizontal"
                                Spacing="8">
                                <TextBlock
                                    x:Name="pathTextBlock"
                                    Width="350"
                                    HorizontalAlignment="Right"
                                    VerticalAlignment="Center"
                                    FontSize="12"
                                    Foreground="{ThemeResource TextFillColorSecondaryBrush}"
                                    IsTextSelectionEnabled="True"
                                    TextAlignment="Right"
                                    TextTrimming="CharacterEllipsis"/>
                                <Button
                                    Content="&#xe8da;"
                                    FontFamily="{ThemeResource SymbolThemeFontFamily}">
                                    <ToolTipService.ToolTip>
                                        <ToolTip>
                                            <TextBlock Text="Select folder" />
                                        </ToolTip>
                                    </ToolTipService.ToolTip>
                                </Button>
                            </StackPanel>
                        </wuc:SettingsCard>
                        <wuc:SettingsCard
                            Header="Backup information"
                            HorizontalContentAlignment="Left"
                            ContentAlignment="Vertical">
                            <wuc:SettingsCard.Resources>
                                <Style TargetType="TextBlock">
                                    <Setter Property="FontSize" Value="12" />
                                </Style>
                            </wuc:SettingsCard.Resources>
                            <Grid Margin="0,0,0,6" ColumnSpacing="8">
                                <Grid.ColumnDefinitions>
                                    <ColumnDefinition Width="Auto" />
                                    <ColumnDefinition Width="*" />
                                </Grid.ColumnDefinitions>
                                <Grid.RowDefinitions>
                                    <RowDefinition Height="Auto" />
                                    <RowDefinition Height="Auto" />
                                    <RowDefinition Height="Auto" />
                                    <RowDefinition Height="Auto" />
                                </Grid.RowDefinitions>
                                <TextBlock Text="Status:" />
                                <TextBlock Grid.Column="1" Foreground="{ThemeResource TextFillColorSecondaryBrush}">
                                    <Run/>
                                    <Hyperlink TextDecorations="Underline">
                                        <Run Text="Refresh" />
                                    </Hyperlink>
                                </TextBlock>

                                <TextBlock Text="File name:" Grid.Row="1" />
                                <TextBlock
                                    Grid.Row="1"
                                    Grid.Column="1"
                                    Foreground="{ThemeResource TextFillColorSecondaryBrush}" />

                                <TextBlock Text="Source machine:" Grid.Row="2" />
                                <TextBlock
                                    Grid.Row="2"
                                    Grid.Column="1"
                                    Foreground="{ThemeResource TextFillColorSecondaryBrush}" />
                                <TextBlock Text="Created at:" Grid.Row="3" />
                                <TextBlock
                                    Grid.Row="3"
                                    Grid.Column="1"
                                    Foreground="{ThemeResource TextFillColorSecondaryBrush}"/>
                            </Grid>
                        </wuc:SettingsCard>
                    </wuc:SettingsExpander.Items>
                </wuc:SettingsExpander>
            </wuc:SimpleSettingsGroup>
            <InfoBar
                Title="Result"
                IsClosable="False"
                IsOpen="True"/>
            <wuc:SimpleSettingsGroup Header="Experimentation" Visibility="Visible">
                <wuc:SettingsCard Header="Allow experimentation with new features" Description="Note: Only Windows Insider builds may be selected for experimentation">
                    <wuc:SettingsCard.HeaderIcon>
                        <PathIcon Data="M1859 1758q14 23 21 47t7 51q0 40-15 75t-41 61-61 41-75 15H354q-40 0-75-15t-61-41-41-61-15-75q0-27 6-51t21-47l569-992q10-14 10-34V128H640V0h768v128h-128v604q0 19 10 35l569 991zM896 732q0 53-27 99l-331 577h972l-331-577q-27-46-27-99V128H896v604zm799 1188q26 0 44-19t19-45q0-10-2-17t-8-16l-164-287H464l-165 287q-9 15-9 33 0 26 18 45t46 19h1341z" />
                    </wuc:SettingsCard.HeaderIcon>
                    <ToggleSwitch/>
                </wuc:SettingsCard>
                <InfoBar
                    Title="The system administrator has disabled experimentation."
                    IsClosable="False"
                    IsOpen="True"
                    Severity="Informational" />
            </wuc:SimpleSettingsGroup>
        </StackPanel>
    </wuc:SettingsPageControl.ModuleContent>
    <wuc:SettingsPageControl.PrimaryLinks>
        <wuc:PageLink Link="https://aka.ms/powertoys"
                            Text="Documentation" />
        <wuc:PageLink Link="https://aka.ms/powertoys"
                            Text="GitHub repository" />
        <wuc:PageLink Link="https://aka.ms/powerToysReportBug"
                            Text="Report a bug" />
        <wuc:PageLink Link="https://aka.ms/powerToysRequestFeature"
                            Text="Request a feature" />
    </wuc:SettingsPageControl.PrimaryLinks>
    <wuc:SettingsPageControl.SecondaryLinks>
        <wuc:PageLink Link="http://go.microsoft.com/fwlink/?LinkId=521839"
                            Text="Privacy statement" />
        <wuc:PageLink Link="https://github.com/microsoft/PowerToys/blob/master/NOTICE.md"
                            Text="Open-source notice" />
    </wuc:SettingsPageControl.SecondaryLinks>
</wuc:SettingsPageControl>
```

![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/General_Demo.png)

# ImageResizer Page

```xml
<wuc:SettingsPageControl
    ModuleDescription="Lets you resize images by right-clicking."
    ModuleImageSource="ms-appx:///Assets/Modules/ImageResizer.png"
    ModuleTitle="Image Resizer"
    SecondaryLinksHeader="Attribution">
    <wuc:SettingsPageControl.ModuleContent>
        <StackPanel ChildrenTransitions="{StaticResource SettingsCardsAnimations}">
            <wuc:SettingsCard
                Header="Enable Image Resizer"
                HeaderIcon="{wuc:BitmapIcon Source=/Assets/FluentIcons/FluentIconsImageResizer.png}">
                <ToggleSwitch/>
            </wuc:SettingsCard>

            <InfoBar
                Title="The system administrator is forcing this setting."
                IsClosable="False"
                IsOpen="True"
                Severity="Informational" />

            <wuc:SimpleSettingsGroup Header="Image sizes">
                <wuc:SettingsCard Header="Presets" Description="Manage preset sizes that can be used in the editor" HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xE792;}">
                    <Button
                        Content="Add new size"
                        Style="{ThemeResource AccentButtonStyle}" />
                </wuc:SettingsCard>
                <ListView
                    x:Name="ImagesSizesListView"
                    ItemsSource="{x:Bind Sizes, Mode=TwoWay}"
                    SelectionMode="None">
                    <ListView.ItemTemplate>
                        <DataTemplate x:Name="SingleLineDataTemplate" x:DataType="models:ImageSize">
                            <wuc:SettingsCard Header="{x:Bind Name, Mode=OneWay}">
                                <wuc:SettingsCard.Resources>
                                    <x:Double x:Key="SettingsCardLeftIndention">42</x:Double>
                                </wuc:SettingsCard.Resources>
                                <wuc:SettingsCard.Description>
                                    <StackPanel
                                        Grid.Row="1"
                                        Grid.Column="1"
                                        Margin="0,4,0,0"
                                        Orientation="Horizontal">
                                        <TextBlock
                                            Margin="0,0,4,0"
                                            Style="{ThemeResource SecondaryTextStyle}"
                                            Text="{x:Bind Fit}" />
                                        <TextBlock
                                            Margin="0,0,4,0"
                                            FontWeight="SemiBold"
                                            Style="{ThemeResource SecondaryTextStyle}"
                                            Text="{x:Bind Width, Mode=OneWay}" />
                                        <TextBlock
                                            Margin="0,0,4,0"
                                            Foreground="{ThemeResource SystemBaseMediumColor}"
                                            Style="{ThemeResource SecondaryTextStyle}"
                                            Text="{x:Bind Unit}" />
                                    </StackPanel>
                                </wuc:SettingsCard.Description>
                                <StackPanel
                                    Grid.Column="2"
                                    HorizontalAlignment="Right"
                                    Orientation="Horizontal"
                                    Spacing="8">
                                    <Button
                                        Width="40"
                                        Height="36"
                                        Content="&#xE70F;"
                                        FontFamily="{ThemeResource SymbolThemeFontFamily}"
                                        Style="{StaticResource SubtleButtonStyle}">
                                        <Button.Flyout>
                                            <Flyout>
                                                <StackPanel Margin="0,12,0,0" Spacing="16">
                                                    <TextBox
                                                        Header="Name"
                                                        Width="240"
                                                        HorizontalAlignment="Left"
                                                        Text="{x:Bind Path=Name, Mode=TwoWay, UpdateSourceTrigger=PropertyChanged}" />

                                                    <ComboBox
                                                        Header="Fit"
                                                        Width="240"
                                                        HorizontalAlignment="Left"
                                                        SelectedIndex="0">
                                                        <ComboBoxItem Content="Fill" />
                                                        <ComboBoxItem Content="Fit" />
                                                        <ComboBoxItem Content="Stretch" />
                                                    </ComboBox>

                                                    <StackPanel Orientation="Horizontal" Spacing="8">
                                                        <NumberBox
                                                            Header="Width"
                                                            Width="116"
                                                            Minimum="0"
                                                            SpinButtonPlacementMode="Compact"
                                                            Value="{x:Bind Path=Width, Mode=TwoWay}" />

                                                        <NumberBox
                                                            Header="Height"
                                                            Width="116"
                                                            Minimum="0"
                                                            SpinButtonPlacementMode="Compact"
                                                            Value="{x:Bind Path=Height, Mode=TwoWay}" />

                                                    </StackPanel>
                                                    <ComboBox
                                                        Header="Size"
                                                        Width="240"
                                                        Margin="0,0,0,24"
                                                        SelectedIndex="0">
                                                        <ComboBoxItem Content="CM" />
                                                        <ComboBoxItem Content="Inches" />
                                                        <ComboBoxItem Content="Percent" />
                                                        <ComboBoxItem Content="Pixels" />
                                                    </ComboBox>
                                                </StackPanel>
                                            </Flyout>
                                        </Button.Flyout>
                                    </Button>

                                    <Button
                                        x:Name="RemoveButton"
                                        Width="40"
                                        Height="36"
                                        Content="&#xE74D;"
                                        FontFamily="{ThemeResource SymbolThemeFontFamily}"
                                        Style="{StaticResource SubtleButtonStyle}"/>
                                </StackPanel>
                            </wuc:SettingsCard>
                        </DataTemplate>
                    </ListView.ItemTemplate>
                </ListView>
            </wuc:SimpleSettingsGroup>

            <wuc:SimpleSettingsGroup Header="Encoding">
                <wuc:SettingsCard Header="Fallback encoder">
                    <ComboBox MinWidth="{StaticResource SettingActionControlMinWidth}" SelectedIndex="0">
                        <ComboBoxItem Content="PNG" />
                        <ComboBoxItem Content="BMP" />
                        <ComboBoxItem Content="JPEG" />
                        <ComboBoxItem Content="TIFF" />
                        <ComboBoxItem Content="WMPhoto" />
                        <ComboBoxItem Content="GIF" />
                    </ComboBox>
                </wuc:SettingsCard>

                <wuc:SettingsCard Header="JPEG quality level">
                    <Slider
                        MinWidth="{StaticResource SettingActionControlMinWidth}"
                        Maximum="100"
                        Minimum="0"/>
                </wuc:SettingsCard>

                <wuc:SettingsCard Header="PNG interlacing">
                    <ComboBox MinWidth="{StaticResource SettingActionControlMinWidth}" SelectedIndex="0">
                        <ComboBoxItem Content="Default" />
                        <ComboBoxItem Content="On" />
                        <ComboBoxItem Content="Off" />
                    </ComboBox>
                </wuc:SettingsCard>

                <wuc:SettingsCard Header="TIFF compression">
                    <ComboBox MinWidth="{StaticResource SettingActionControlMinWidth}" SelectedIndex="0">
                        <ComboBoxItem Content="Default" />
                        <ComboBoxItem Content="None" />
                        <ComboBoxItem Content="CCITT3" />
                        <ComboBoxItem Content="CCITT4" />
                        <ComboBoxItem Content="LZW" />
                        <ComboBoxItem Content="RLE" />
                        <ComboBoxItem Content="Zip" />
                    </ComboBox>
                </wuc:SettingsCard>
            </wuc:SimpleSettingsGroup>

            <wuc:SimpleSettingsGroup Header="File">
                <wuc:SettingsCard Header="Filename format" Description="This format is used as the filename for resized images">
                    <StackPanel Orientation="Horizontal" Spacing="4">
                        <TextBox
                            PlaceholderText="Example: %1 (%2)"
                            MinWidth="{StaticResource SettingActionControlMinWidth}"/>
                        <Button
                            Content="&#xE946;"
                            FontFamily="{ThemeResource SymbolThemeFontFamily}"
                            Style="{StaticResource SubtleButtonStyle}">
                            <Button.Flyout>
                                <Flyout>
                                    <TextBlock x:Name="FileFormatTextBlock">
                                        <Run Text="The following parameters can be used:" />
                                        <LineBreak />
                                        <LineBreak />
                                        <Run FontWeight="Bold" Text="%1" />
                                        <Run Text=" - " />
                                        <Run Text="Original filename" />
                                        <LineBreak />
                                        <Run FontWeight="Bold" Text="%2" />
                                        <Run Text=" - " />
                                        <Run Text="Size name" />
                                        <LineBreak />
                                        <Run FontWeight="Bold" Text="%3" />
                                        <Run Text=" - " />
                                        <Run Text="Selected width" />
                                        <LineBreak />
                                        <Run FontWeight="Bold" Text="%4" />
                                        <Run Text=" - " />
                                        <Run Text="Selected height" />
                                        <LineBreak />
                                        <Run FontWeight="Bold" Text="%5" />
                                        <Run Text=" - " />
                                        <Run Text="Actual width" />
                                        <LineBreak />
                                        <Run FontWeight="Bold" Text="%6" />
                                        <Run Text=" - " />
                                        <Run Text="Actual height" />
                                    </TextBlock>
                                </Flyout>
                            </Button.Flyout>
                        </Button>
                    </StackPanel>
                </wuc:SettingsCard>

                <wuc:SettingsCard Header="File modified timestamp" Description="Used as the 'modified timestamp' in the file properties">
                    <ComboBox MinWidth="{StaticResource SettingActionControlMinWidth}" SelectedIndex="0">
                        <ComboBoxItem Content="Original file timestamp" />
                        <ComboBoxItem Content="Timestamp of resize action" />
                    </ComboBox>
                </wuc:SettingsCard>
            </wuc:SimpleSettingsGroup>
        </StackPanel>
    </wuc:SettingsPageControl.ModuleContent>

    <wuc:SettingsPageControl.PrimaryLinks>
        <wuc:PageLink Link="https://aka.ms/PowerToysOverview_ImageResizer" Text="Learn more about Image Resizer"/>
    </wuc:SettingsPageControl.PrimaryLinks>
    <wuc:SettingsPageControl.SecondaryLinks>
        <wuc:PageLink Link="https://github.com/bricelam/ImageResizer/" Text="Brice Lambson's ImageResizer"/>
    </wuc:SettingsPageControl.SecondaryLinks>
</wuc:SettingsPageControl>
```

```cs
public ObservableCollection<ImageSize> Sizes { get; set; } = new ObservableCollection<ImageSize>();

public void InitializeImageSize()
{
    Sizes.Add(new ImageSize { Name = "Small", Fit = 100, Width = 854, Unit = 100, Height = 480, Id = 0 });
    Sizes.Add(new ImageSize { Name = "Medium", Fit = 100, Width = 1366, Unit = 100, Height = 768, Id = 1 });
    Sizes.Add(new ImageSize { Name = "Large", Fit = 100, Width = 1920, Unit = 100, Height = 1080, Id = 2 });
    Sizes.Add(new ImageSize { Name = "Phone", Fit = 100, Width = 320, Unit = 100, Height = 568, Id = 3 });
}

public class ImageSize : Observable
{
    private int _id;
    private string _name;
    private int _fit;
    private double _height;
    private double _width;
    private int _unit;

    public int Id
    {
        get { return _id; }
        set { Set(ref _id, value); }
    }

    public string Name
    {
        get { return _name; }
        set { Set(ref _name, value); }
    }

    public int Fit
    {
        get { return _fit; }
        set { Set(ref _fit, value); }
    }

    public double Width
    {
        get { return _width; }
        set { Set(ref _width, value); }
    }

    public double Height
    {
        get { return _height; }
        set { Set(ref _height, value); }
    }

    public int Unit
    {
        get { return _unit; }
        set { Set(ref _unit, value); }
    }
}
```
![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/ImageResize_Demo.png)

# KeyboardManager Page

```xml
<wuc:SettingsPageControl
    ModuleDescription="Reconfigure your keyboard by remapping keys and shortcuts"
    ModuleImageSource="ms-appx:///Assets/Modules/KBM.png"
    ModuleTitle="Keyboard Manager">
    <wuc:SettingsPageControl.ModuleContent>
        <StackPanel ChildrenTransitions="{StaticResource SettingsCardsAnimations}">
            <wuc:SettingsCard Header="Enable Keyboard Manager" HeaderIcon="{wuc:BitmapIcon Source=/Assets/FluentIcons/FluentIconsKeyboardManager.png}">
                <ToggleSwitch/>
                <wuc:SettingsCard.Description>
                    <HyperlinkButton NavigateUri="https://aka.ms/powerToysCannotRemapKeys">
                        <TextBlock FontWeight="SemiBold" Text="Learn more about remapping limitations"/>
                    </HyperlinkButton>
                </wuc:SettingsCard.Description>
            </wuc:SettingsCard>

            <wuc:SimpleSettingsGroup Header="Keys" IsEnabled="False">
                <wuc:SettingsCard
                        Description="Remap keys to other keys or shortcuts"
                        Header="Remap a key"
                        ActionIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, FontSize=14, Glyph=&#xE8A7;}"
                        HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xE92E;}"
                        IsClickEnabled="True"/>
            </wuc:SimpleSettingsGroup>

            <wuc:SimpleSettingsGroup Header="Shortcuts" IsEnabled="False">
                <wuc:SettingsCard
                    Description="Remap shortcuts to other shortcuts or keys for all or specific applications"
                    Header="Remap a shortcut"
                    ActionIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, FontSize=14, Glyph=&#xE8A7;}"
                    HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xE92E;}"
                    IsClickEnabled="True" />
            </wuc:SimpleSettingsGroup>
        </StackPanel>
    </wuc:SettingsPageControl.ModuleContent>
    <wuc:SettingsPageControl.PrimaryLinks>
        <wuc:PageLink Link="https://aka.ms/PowerToysOverview_KeyboardManager" Text="Learn more about Keyboard Manager"/>
    </wuc:SettingsPageControl.PrimaryLinks>
</wuc:SettingsPageControl>
```
![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/KeyboardManager_Demo.png)


# OOBE Page

```xml
<wuc:OOBEPageControl Title="FileExplorer Preview"
    HeroImage="ms-appx:///Assets/Modules/OOBE/FileExplorer.png"
    Description="These settings allow you to manage your Windows File Explorer custom preview handlers.">
    <wuc:OOBEPageControl.PageContent>
        <StackPanel Orientation="Vertical" ChildrenTransitions="{StaticResource SettingsCardsAnimations}">
            <TextBlock Text="How to enable"
                        Style="{ThemeResource OobeSubtitleStyle}" />
            <StackPanel Orientation="Horizontal" Spacing="12" Margin="0,24,0,0">
                <Button Content="Open Settings"/>
                <HyperlinkButton Style="{StaticResource TextButtonStyle}">
                    <TextBlock Text="Learn more about File Explorer add-ons" TextWrapping="Wrap" />
                </HyperlinkButton>
            </StackPanel>
        </StackPanel>
    </wuc:OOBEPageControl.PageContent>
</wuc:OOBEPageControl>
```
![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/OOBE_Demo.png)

# PowerLauncher Page
```xml
<wuc:SettingsPageControl
    ModuleDescription="A quick launcher that has additional capabilities without sacrificing performance."
    ModuleImageSource="ms-appx:///Assets/Modules/PowerLauncher.png"
    ModuleTitle="Demo Run"
    SecondaryLinksHeader="Attribution">
    <wuc:SettingsPageControl.ModuleContent>
        <StackPanel Orientation="Vertical" ChildrenTransitions="{StaticResource SettingsCardsAnimations}">
            <wuc:SettingsCard
                Header="Enable PowerToys Run"
                HeaderIcon="{wuc:BitmapIcon Source=/Assets/FluentIcons/FluentIconsPowerToysRun.png}">
                <ToggleSwitch/>
            </wuc:SettingsCard>
            <InfoBar
                Title="The system administrator is forcing this setting."
                IsClosable="False"
                IsOpen="True"
                Severity="Informational" />

            <wuc:SimpleSettingsGroup
                x:Uid="Shortcut">
                <wuc:SettingsExpander
                    Description="Customize the keyboard shortcut to activate this module"
                            Header="Activation shortcut"
                    HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily},
                                                Glyph=&#xEDA7;}"
                    IsExpanded="True">
                    <wuc:SettingsExpander.Items>
                        <wuc:SettingsCard ContentAlignment="Left">
                            <wuc:CheckBoxWithDescriptionControl
                                Header="Use centralized keyboard hook" Description="Try this if there are issues with the shortcut (PowerToys Run might not get focus when triggered from an elevated window)"/>
                        </wuc:SettingsCard>
                        <wuc:SettingsCard ContentAlignment="Left">
                            <CheckBox
                                Content="Ignore shortcuts in fullscreen mode"/>
                        </wuc:SettingsCard>
                    </wuc:SettingsExpander.Items>
                </wuc:SettingsExpander>
            </wuc:SimpleSettingsGroup>

            <wuc:SimpleSettingsGroup 
                Header="Position &amp; appearance">
                <wuc:SettingsExpander
                        Description="If multiple monitors are in use, PowerToys Run can be launched on the desired monitor"
                    Header="Preferred monitor position"
                    HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xec48;}"
                    IsExpanded="True">
                    <ToggleSwitch/>
                    <wuc:SettingsExpander.Items>
                        <wuc:SettingsCard Header="Immediate plugins" Description="Affects the plugins that make the UI wait for their results by this amount. Recommended: 30-50 ms.">
                            <NumberBox
                                MinWidth="{StaticResource SettingActionControlMinWidth}"
                                LargeChange="50"
                                Maximum="500"
                                Minimum="0"
                                SmallChange="10"
                                SpinButtonPlacementMode="Compact"/>
                        </wuc:SettingsCard>
                        <wuc:SettingsCard
                            Header="Background execution plugins" Description="Affects the plugins that execute in the background by this amount. Recommended: 100-150 ms.">
                            <NumberBox
                                MinWidth="{StaticResource SettingActionControlMinWidth}"
                                LargeChange="50"
                                Maximum="1000"
                                Minimum="0"
                                SmallChange="10"
                                SpinButtonPlacementMode="Compact"/>
                        </wuc:SettingsCard>
                    </wuc:SettingsExpander.Items>
                </wuc:SettingsExpander>
            </wuc:SimpleSettingsGroup>

            <wuc:SimpleSettingsGroup
                Header="Position &amp; appearance">
                <wuc:SettingsCard
                    Header="Preferred monitor position" Description="If multiple monitors are in use, PowerToys Run can be launched on the desired monitor"
                    HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xe78b;}">
                    <ComboBox
                        MinWidth="{StaticResource SettingActionControlMinWidth}"
                        SelectedIndex="0">
                        <ComboBoxItem Content="Run_Radio_Position_Cursor" />
                        <ComboBoxItem Content="Run_Radio_Position_Primary_Monitor" />
                        <ComboBoxItem Content="Run_Radio_Position_Focus" />
                    </ComboBox>
                </wuc:SettingsCard>

                <wuc:SettingsCard
                    x:Uid="ColorModeHeader"
                    HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xE790;}">
                    <wuc:SettingsCard.Description>
                        <HyperlinkButton
                            Content="Windows color settings"/>
                    </wuc:SettingsCard.Description>
                    <ComboBox
                        MinWidth="{StaticResource SettingActionControlMinWidth}"
                        SelectedIndex="0">
                        <ComboBoxItem Content="Dark" />
                        <ComboBoxItem Content="Light" />
                        <ComboBoxItem Content="Default" />
                    </ComboBox>
                </wuc:SettingsCard>
            </wuc:SimpleSettingsGroup>

            <wuc:SimpleSettingsGroup
                Header="Plugins">
                <InfoBar
                    Title="PowerToys Run can't provide any results without plugins"
                    IsClosable="False"
                    IsOpen="True"
                    Message="Enable at least one plugin to get started"
                    Severity="Informational">
                    <InfoBar.ActionButton>
                        <HyperlinkButton
                            Content="Learn more about conflicting activation commands"/>
                    </InfoBar.ActionButton>
                </InfoBar>

                <wuc:SettingsCard
                        Description="You can include or remove each plugin from the global results, change the direct activation phrase and configure additional options"
                    Header="Plugins"
                    HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xEA86;}">
                    <AutoSuggestBox
                        PlaceholderText="Search this list"
                        MinWidth="{StaticResource SettingActionControlMinWidth}"
                        QueryIcon="Find">
                    </AutoSuggestBox>
                </wuc:SettingsCard>
                <InfoBar
                    Title="PowerToys Run can't provide any results without plugins"
                    IsClosable="False"
                    IsOpen="True"
                    Message="Enable at least one plugin to get started"
                    Severity="Error"/>

                <StackPanel
                    Orientation="Horizontal">
                    <ProgressRing
                        Width="20"
                        Height="20"
                        Margin="18,18"
                        IsActive="True" />
                    <TextBlock
                        Text="Plugins are loading..."
                        VerticalAlignment="Center"
                        Style="{ThemeResource SecondaryTextStyle}" />
                </StackPanel>
            </wuc:SimpleSettingsGroup>
        </StackPanel>
    </wuc:SettingsPageControl.ModuleContent>
    <wuc:SettingsPageControl.PrimaryLinks>
        <wuc:PageLink Link="https://aka.ms/PowerToysOverview_PowerToysRun" Text="Learn more about Demo Run"/>
    </wuc:SettingsPageControl.PrimaryLinks>
    <wuc:SettingsPageControl.SecondaryLinks>
        <wuc:PageLink Link="https://github.com/Wox-launcher/Wox/" Text="Wox"/>
        <wuc:PageLink Link="https://github.com/betsegaw/windowwalker/" Text="Beta Tadele's Window Walker"/>
    </wuc:SettingsPageControl.SecondaryLinks>
</wuc:SettingsPageControl>
```
![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/Powertoys_Demo.png)

# PowerPreview Page
```xml
<wuc:SettingsPageControl
    ModuleDescription="These settings allow you to manage your Windows File Explorer custom preview handlers."
    ModuleImageSource="ms-appx:///Assets/Modules/PowerPreview.png"
    ModuleTitle="File Explorer">
    <wuc:SettingsPageControl.ModuleContent>
        <StackPanel Orientation="Vertical" ChildrenTransitions="{StaticResource SettingsCardsAnimations}">
            <wuc:SimpleSettingsGroup Header="Preview Pane" Description="Select the file types which must be rendered in the Preview Pane. Ensure that Preview Pane is open by toggling the view with Alt + P in File Explorer.">
                <InfoBar
                    Title="Enabling the preview handlers will override other preview handlers already installed - there have been reports of incompatibility between Outlook and the PDF Preview Handler."
                    IsClosable="False"
                    IsOpen="True"
                    IsTabStop="True"
                    Severity="Warning" />
                <wuc:SettingsExpander
                    Header="Scalable Vector Graphics" Description="File extension, should not be altered"
                    HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xE91B;}">
                    <ToggleSwitch/>
                    <wuc:SettingsExpander.Items>
                        <wuc:SettingsCard Header="Color mode">
                            <ComboBox MinWidth="{StaticResource SettingActionControlMinWidth}" SelectedIndex="0">
                                <ComboBoxItem Content="Default" />
                                <ComboBoxItem Content="Color" />
                                <ComboBoxItem Content="Shade" />
                            </ComboBox>
                        </wuc:SettingsCard>
                        <wuc:SettingsCard Header="FileExplorerPreview_Preview_SVG_Checkered_Shade_Mode">
                            <ComboBox MinWidth="{StaticResource SettingActionControlMinWidth}" SelectedIndex="0">
                                <ComboBoxItem Content="Shade_1" />
                                <ComboBoxItem Content="Shade_2" />
                                <ComboBoxItem Content="Shade_3" />
                            </ComboBox>
                        </wuc:SettingsCard>
                    </wuc:SettingsExpander.Items>
                </wuc:SettingsExpander>

                <InfoBar
                    Title="The system administrator is forcing this setting."
                    IsClosable="False"
                    IsOpen="True"
                    Severity="Informational" />

                <wuc:SettingsCard
                    Header="Markdown" Description=".md, .markdown, .mdown, .mkdn, .mkd, .mdwn, .mdtxt, .mdtext"
                    HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xE943;}">
                    <ToggleSwitch/>
                </wuc:SettingsCard>

                <InfoBar
                    Title="The system administrator is forcing this setting."
                    IsClosable="False"
                    IsOpen="True"
                    Severity="Informational" />


                <wuc:SettingsExpander
                    Header="Source code files (Monaco)" Description=".cpp, .py, .json, .xml, .csproj, ..."
                    HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xE99A;}">
                    <ToggleSwitch/>
                    <wuc:SettingsExpander.Items>
                        <wuc:SettingsCard
                            ContentAlignment="Left">
                            <CheckBox
                                Content="Wrap text"/>
                        </wuc:SettingsCard>
                        <wuc:SettingsCard
                            ContentAlignment="Left">
                            <wuc:CheckBoxWithDescriptionControl
                                Header="Try to format the source for preview" Description="Applies to json and xml. Files remain unchanged." />
                        </wuc:SettingsCard>
                        <wuc:SettingsCard
                            Header="Maximum file size to preview" Description="The maximum size, in kilobytes, for files to be displayed. This is a safety mechanism to prevent loading large files into RAM.">
                            <NumberBox
                                MinWidth="{StaticResource SettingActionControlMinWidth}"
                                Maximum="100"
                                Minimum="2"
                                SpinButtonPlacementMode="Compact"/>
                        </wuc:SettingsCard>
                    </wuc:SettingsExpander.Items>
                </wuc:SettingsExpander>

                <InfoBar
                    Title="The system administrator is forcing this setting."
                    IsClosable="False"
                    IsOpen="True"
                    Severity="Informational" />

                <wuc:SettingsCard
                    Header="Portable Document Format" Description=".pdf"
                    HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xEA90;}">
                    <ToggleSwitch/>
                </wuc:SettingsCard>
                <InfoBar
                    Title="The system administrator is forcing this setting."
                    IsClosable="False"
                    IsOpen="True"
                    Severity="Informational" />
            </wuc:SimpleSettingsGroup>

            <wuc:SimpleSettingsGroup Header="Thumbnail icon Preview" Description="Select the file types for which thumbnail previews must be rendered.">
                <InfoBar
                    Title="A reboot may be required for changes to these settings to take effect"
                    IsClosable="False"
                    IsOpen="True"
                    IsTabStop="True"
                    Severity="Informational" />
                <InfoBar
                    Title="Thumbnails might not appear on paths managed by cloud storage solutions like OneDrive, since these solutions may get their thumbnails from the cloud instead of generating them locally."
                    IsClosable="False"
                    IsOpen="True"
                    IsTabStop="True"
                    Severity="Warning" />
                <wuc:SettingsCard
                    Header="Scalable Vector Graphics" Description=".svg"
                    HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xE91B;}">
                    <ToggleSwitch/>
                </wuc:SettingsCard>
            </wuc:SimpleSettingsGroup>
        </StackPanel>
    </wuc:SettingsPageControl.ModuleContent>

    <wuc:SettingsPageControl.PrimaryLinks>
        <wuc:PageLink Link="https://aka.ms/PowerToysOverview_FileExplorerAddOns" Text="Learn more about File Explorer add-ons"/>
    </wuc:SettingsPageControl.PrimaryLinks>
</wuc:SettingsPageControl>
```

![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/FileExplorer_Demo.png)

# PowerRename Page
```xml
<wuc:SettingsPageControl
    ModuleDescription="A Windows Shell extension for more advanced bulk renaming using search and replace or regular expressions."
    ModuleImageSource="ms-appx:///Assets/Modules/PowerRename.png"
    ModuleTitle="PowerRename"
    SecondaryLinksHeader="Attribution">
    <wuc:SettingsPageControl.ModuleContent>
        <StackPanel
            x:Name="PowerRenameView" ChildrenTransitions="{StaticResource SettingsCardsAnimations}"
            Orientation="Vertical">
            <wuc:SettingsCard
                Header="Enable PowerRename"
                HeaderIcon="{wuc:BitmapIcon Source=/Assets/FluentIcons/FluentIconsPowerRename.png}">
                <ToggleSwitch/>
            </wuc:SettingsCard>
            <InfoBar
                Title="The system administrator is forcing this setting."
                IsClosable="False"
                IsOpen="True"
                Severity="Informational" />
            <wuc:SimpleSettingsGroup
                Header="Shell integration">
                <wuc:SettingsExpander
                    Header="Show PowerRename in"
                    IsExpanded="True">
                    <ComboBox
                        MinWidth="{StaticResource SettingActionControlMinWidth}"
                        SelectedIndex="0">
                        <ComboBoxItem Content="Default and extended context menu" />
                        <ComboBoxItem Content="Extended context menu only" />
                    </ComboBox>
                    <wuc:SettingsExpander.Items>
                        <wuc:SettingsCard ContentAlignment="Left">
                            <CheckBox
                                Content="Hide icon in context menu"/>
                        </wuc:SettingsCard>
                    </wuc:SettingsExpander.Items>
                </wuc:SettingsExpander>
            </wuc:SimpleSettingsGroup>

            <wuc:SimpleSettingsGroup
                Header="Auto-complete">
                <wuc:SettingsExpander
                    Header="Enable auto-complete for the search &amp; replace fields"
                    IsExpanded="True">
                    <ToggleSwitch/>
                    <wuc:SettingsExpander.Items>
                        <wuc:SettingsCard
                            Header="Maximum number of items">
                            <NumberBox
                                MinWidth="{StaticResource SettingActionControlMinWidth}"
                                Maximum="20"
                                Minimum="0"
                                SpinButtonPlacementMode="Compact" />
                        </wuc:SettingsCard>
                    </wuc:SettingsExpander.Items>
                </wuc:SettingsExpander>

                <wuc:SettingsCard
                    Header="Show recently used strings"
                    HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xe81c;}">
                    <ToggleSwitch/>
                </wuc:SettingsCard>
            </wuc:SimpleSettingsGroup>
            <wuc:SimpleSettingsGroup
                Header="Behavior">
                <wuc:SettingsCard Header="Use Boost library" Description="Provides extended features but may use different regex syntax">
                    <ToggleSwitch />
                </wuc:SettingsCard>
            </wuc:SimpleSettingsGroup>
        </StackPanel>
    </wuc:SettingsPageControl.ModuleContent>

    <wuc:SettingsPageControl.PrimaryLinks>
        <wuc:PageLink Link="https://aka.ms/PowerToysOverview_PowerRename" Text="Learn more about PowerRename"/>
    </wuc:SettingsPageControl.PrimaryLinks>
    <wuc:SettingsPageControl.SecondaryLinks>
        <wuc:PageLink Link="https://github.com/chrdavis/SmartRename" Text="Chris Davis's SmartRenamer"/>
    </wuc:SettingsPageControl.SecondaryLinks>
</wuc:SettingsPageControl>
```

![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/PowerRename_Demo.png)

# ShortcutGuid Page
```xml
<wuc:SettingsPageControl
    ModuleDescription="Shows a help overlay with Windows shortcuts when the Windows key is pressed."
    ModuleImageSource="ms-appx:///Assets/Modules/ShortcutGuide.png"
    ModuleTitle="Shortcut Guide">
    <wuc:SettingsPageControl.ModuleContent>
        <StackPanel Orientation="Vertical" ChildrenTransitions="{StaticResource SettingsCardsAnimations}">
            <wuc:SettingsCard Header="Enable Shortcut Guide" HeaderIcon="{wuc:BitmapIcon Source=/Assets/FluentIcons/FluentIconsShortcutGuide.png}">
                <ToggleSwitch/>
            </wuc:SettingsCard>

            <wuc:KeyVisual IsTabStop="False"
                                        AutomationProperties.AccessibilityView="Raw"
                                        VisualType="SmallOutline"
                                        VerticalAlignment="Center"
                                        HorizontalAlignment="Left"
                                        Content="Ctrl+F5" />
            <wuc:ShortcutWithTextLabelControl x:Name="HotkeyMicVidControl" Text="to toggle both your microphone and video" />
            <wuc:ShortcutWithTextLabelControl x:Name="HotkeyMicControl" Text="to toggle your microphone" />
            <wuc:ShortcutWithTextLabelControl x:Name="HotkeyVidControl" Text="to toggle your microphone" />
            <Button Content="Open Shortcut Dialog" Click="Button_Click"/>
            <wuc:SimpleSettingsGroup Header="Appearance &amp; behavior">
                <wuc:SettingsCard Header="Choose a mode" HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xE790;}">
                    <wuc:SettingsCard.Description>
                        <HyperlinkButton Content="Windows color settings"/>
                    </wuc:SettingsCard.Description>
                    <ComboBox MinWidth="{StaticResource SettingActionControlMinWidth}" SelectedIndex="0">
                        <ComboBoxItem Content="Dark"/>
                        <ComboBoxItem Content="Light"/>
                        <ComboBoxItem Content="Default"/>
                    </ComboBox>
                </wuc:SettingsCard>

                <wuc:SettingsCard Header="Opacity of background">
                    <Slider
                            MinWidth="{StaticResource SettingActionControlMinWidth}"
                            Maximum="100"
                            Minimum="0"/>
                </wuc:SettingsCard>
            </wuc:SimpleSettingsGroup>
            
            <wuc:SimpleSettingsGroup Header="Excluded apps">
                <wuc:SettingsExpander Description="Turns off Shortcut Guide when these applications have focus - add one application name per line"
                            Header="Exclude apps" IsExpanded="True" HeaderIcon="{wuc:FontIcon FontFamily={StaticResource SymbolThemeFontFamily}, Glyph=&#xECE4;}">
                    <wuc:SettingsExpander.Items>
                        <wuc:SettingsCard
                            HorizontalContentAlignment="Stretch"
                            ContentAlignment="Vertical">
                            <TextBox
                                PlaceholderText="Example: outlook.exe"
                                MinWidth="240"
                                MinHeight="160"
                                AcceptsReturn="True"
                                ScrollViewer.IsVerticalRailEnabled="True"
                                ScrollViewer.VerticalScrollBarVisibility="Visible"
                                ScrollViewer.VerticalScrollMode="Enabled"
                                TextWrapping="Wrap" />
                        </wuc:SettingsCard>
                    </wuc:SettingsExpander.Items>
                </wuc:SettingsExpander>
            </wuc:SimpleSettingsGroup>
        </StackPanel>
    </wuc:SettingsPageControl.ModuleContent>
    <wuc:SettingsPageControl.PrimaryLinks>
        <wuc:PageLink Link="https://aka.ms/PowerToysOverview_ShortcutGuide" Text="Learn more about Shortcut Guide"/>
    </wuc:SettingsPageControl.PrimaryLinks>
</wuc:SettingsPageControl>
```

```cs
private ShortcutDialogContentControl c = new ShortcutDialogContentControl();
private ContentDialog shortcutDialog;
bool canClose = false;
public void InitializeShortcut()
{
    HotkeyMicVidControl.Keys = new List<object> { "Ctrl", "Alt", "F5" };
    HotkeyMicControl.Keys = new List<object> { "Ctrl", "Alt", "F5" };
    HotkeyVidControl.Keys = new List<object> { "Ctrl", "Alt", "F5" };
}
private async void Button_Click(object sender, Microsoft.UI.Xaml.RoutedEventArgs e)
{
    c.Keys = new List<object> { "Ctrl", "Alt", "F5" };
    shortcutDialog = new ContentDialog
    {
        XamlRoot = Content.XamlRoot,
        Title = "Activation shortcut",
        Content = c,
        PrimaryButtonText = "Save",
        SecondaryButtonText = "Confirm",
        CloseButtonText = "Cancel",
        DefaultButton = ContentDialogButton.Primary,
    };

    shortcutDialog.Closing += ShortcutDialog_Closing;
    shortcutDialog.PrimaryButtonClick += ShortcutDialog_PrimaryButtonClick;
    shortcutDialog.SecondaryButtonClick += ShortcutDialog_SecondaryButtonClick;
    shortcutDialog.CloseButtonClick += ShortcutDialog_CloseButtonClick;
    await shortcutDialog.ShowAsyncQueue();
}

private void ShortcutDialog_CloseButtonClick(ContentDialog sender, ContentDialogButtonClickEventArgs args)
{
    canClose = true;
}

private void ShortcutDialog_Closing(ContentDialog sender, ContentDialogClosingEventArgs args)
{
    args.Cancel = !canClose;
}
private void ShortcutDialog_PrimaryButtonClick(ContentDialog sender, ContentDialogButtonClickEventArgs args)
{
    DisableKeys();
}
private void ShortcutDialog_SecondaryButtonClick(ContentDialog sender, ContentDialogButtonClickEventArgs args)
{
    EnableKeys();
}
private void EnableKeys()
{
    shortcutDialog.IsPrimaryButtonEnabled = true;
    c.IsError = false;
}
private void DisableKeys()
{
    shortcutDialog.IsPrimaryButtonEnabled = false;
    c.IsError = true;
}
```

![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/Shortcut_Demo.png)


# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.
