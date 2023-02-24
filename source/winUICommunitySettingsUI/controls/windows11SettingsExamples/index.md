---
title: Windows 11 Settings Examples
---

# Awake Page

```xml
<controls:SettingsPageControl
    IsTabStop="False"
    ModuleDescription="A convenient way to keep your PC awake on-demand."
    ModuleImageSource="ms-appx:///Assets/Modules/Awake.png"
    ModuleTitle="Awake"
    SecondaryLinksHeader="Attribution">
    <controls:SettingsPageControl.ModuleContent>
        <StackPanel Orientation="Vertical" ChildrenTransitions="{StaticResource SettingsCardsAnimations}">
            <controls:Setting Header="Enable Awake">
                <controls:Setting.Icon>
                    <BitmapIcon ShowAsMonochrome="False" UriSource="ms-appx:///Assets/FluentIcons/FluentIconsAwake.png"/>
                </controls:Setting.Icon>
                <controls:Setting.ActionContent>
                    <ToggleSwitch HorizontalAlignment="Right"/>
                </controls:Setting.ActionContent>
            </controls:Setting>

            <controls:SettingsGroup Header="Behavior">
                <controls:Setting Header="Keep screen on" Icon="&#xE7FB;">
                    <controls:Setting.ActionContent>
                        <ToggleSwitch/>
                    </controls:Setting.ActionContent>
                </controls:Setting>
                <controls:SettingExpander IsEnabled="False" IsExpanded="True">
                    <controls:SettingExpander.Header>
                        <controls:Setting
                            Header="Mode"
                            Icon="&#xEC4E;"
                            Style="{StaticResource ExpanderHeaderSettingStyle}"/>
                    </controls:SettingExpander.Header>
                    <controls:SettingExpander.Content>
                        <StackPanel Padding="56,16,16,24" Spacing="12">
                            <RadioButton>
                                <RadioButton.Content>
                                    <TextBlock LineHeight="20" TextWrapping="WrapWholeWords">
                                        <Run Text="Inactive"/>
                                        <LineBreak/>
                                        <Run Foreground="{ThemeResource TextFillColorSecondaryBrush}" Text="Your PC operates according to its current power plan"/>
                                    </TextBlock>
                                </RadioButton.Content>
                            </RadioButton>
                            <RadioButton>
                                <RadioButton.Content>
                                    <TextBlock LineHeight="20" TextWrapping="WrapWholeWords">
                                        <Run Text="Keep awake indefinitely"/>
                                        <LineBreak/>
                                        <Run Foreground="{ThemeResource TextFillColorSecondaryBrush}" Text="Keeps your PC awake until the setting is disabled"/>
                                    </TextBlock>
                                </RadioButton.Content>
                            </RadioButton>
                            <RadioButton>
                                <RadioButton.Content>
                                    <TextBlock LineHeight="20" TextWrapping="WrapWholeWords">
                                        <Run Text="Keep awake temporarily"/>
                                        <LineBreak/>
                                        <Run Foreground="{ThemeResource TextFillColorSecondaryBrush}" Text="Keeps your PC awake until the set time elapses"/>
                                    </TextBlock>
                                </RadioButton.Content>
                            </RadioButton>
                            <StackPanel Margin="0,-8,0,0" AutomationProperties.LabeledBy="{Binding ElementName=ModeTitleLabel}">

                                <StackPanel Margin="28,8,0,0" Orientation="Horizontal">
                                    <NumberBox
                                        MinWidth="90"
                                        HorizontalAlignment="Left"
                                        Header="Hours"
                                        LargeChange="5"
                                        Minimum="0"
                                        SmallChange="1"
                                        SpinButtonPlacementMode="Compact"
                                        Value="0"/>
                                    <NumberBox
                                        MinWidth="90"
                                        Margin="8,0,0,0"
                                        HorizontalAlignment="Left"
                                        Header="Minutes"
                                        LargeChange="5"
                                        Minimum="0"
                                        SmallChange="1"
                                        SpinButtonPlacementMode="Compact"
                                        Value="0"/>
                                </StackPanel>
                            </StackPanel>
                        </StackPanel>
                    </controls:SettingExpander.Content>
                </controls:SettingExpander>
            </controls:SettingsGroup>
        </StackPanel>
    </controls:SettingsPageControl.ModuleContent>

    <controls:SettingsPageControl.PrimaryLinks>
        <controls:PageLink Link="https://aka.ms/PowerToysOverview_Awake" Text="Learn more about Awake"/>
    </controls:SettingsPageControl.PrimaryLinks>
    <controls:SettingsPageControl.SecondaryLinks>
        <controls:PageLink Link="https://Awake.den.dev" Text="Den Delimarsky's Awake"/>
    </controls:SettingsPageControl.SecondaryLinks>
</controls:SettingsPageControl>
```

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/Awake_Demo.png)

# ColorPicker Page

```xml
<Page.Resources>
    <Style TargetType="ListViewItem" BasedOn="{StaticResource ListViewItemSettingStyle}"/>
</Page.Resources>
<controls:SettingsPageControl
    ModuleDescription="Quick and simple system-wide color picker."
    ModuleImageSource="ms-appx:///Assets/Modules/ColorPicker.png"
    ModuleTitle="Color Picker"
    SecondaryLinksHeader="Attribution">
    <controls:SettingsPageControl.ModuleContent>
        <StackPanel x:Name="ColorPickerView" Orientation="Vertical" ChildrenTransitions="{StaticResource SettingsCardsAnimations}">
            <controls:Setting Header="Enable Color Picker">
                <controls:Setting.Icon>
                    <BitmapIcon ShowAsMonochrome="False" UriSource="ms-appx:///Assets/FluentIcons/FluentIconsColorPicker.png"/>
                </controls:Setting.Icon>
                <controls:Setting.ActionContent>
                    <ToggleSwitch/>
                </controls:Setting.ActionContent>
            </controls:Setting>

            <controls:SettingsGroup Header="Shortcut">
                <controls:SettingExpander IsExpanded="True">
                    <controls:SettingExpander.Header>
                        <controls:Setting
                            Header="Activation behavior"
                            Icon="&#xEC4E;"
                            Style="{StaticResource ExpanderHeaderSettingStyle}"/>
                    </controls:SettingExpander.Header>
                    <controls:SettingExpander.Content>
                        <StackPanel Padding="56,16,16,24" Spacing="12">
                            <RadioButton GroupName="ColorPickerActivationAction">
                                <RadioButton.Content>
                                    <StackPanel>
                                        <TextBlock Text="Color Picker with editor mode enabled"/>
                                        <TextBlock Style="{StaticResource SecondaryTextStyle}" Text="Pick a color from the screen, copy formatted value to clipboard, then to the editor"/>
                                    </StackPanel>
                                </RadioButton.Content>
                            </RadioButton>

                            <RadioButton GroupName="ColorPickerActivationAction">
                                <RadioButton.Content>
                                    <StackPanel>
                                        <TextBlock Text="Editor"/>
                                        <TextBlock Style="{StaticResource SecondaryTextStyle}" Text="Open directly into the editor mode"/>
                                    </StackPanel>
                                </RadioButton.Content>
                            </RadioButton>
                        </StackPanel>
                    </controls:SettingExpander.Content>
                </controls:SettingExpander>
            </controls:SettingsGroup>

            <controls:SettingsGroup Header="Picker behavior">
                <controls:Setting
                    Description="This format will be copied to your clipboard"
                    Header="Default color format"
                    Icon="&#xEF3C;">
                    <controls:Setting.ActionContent>
                        <ComboBox
                            MinWidth="{StaticResource SettingActionControlMinWidth}"
                            HorizontalAlignment="Left"
                            DisplayMemberPath="Value"/>
                    </controls:Setting.ActionContent>
                </controls:Setting>

                <controls:Setting Description="This will show the name of the color when picking a color" Header="Show color name">
                    <controls:Setting.ActionContent>
                        <ToggleSwitch/>
                    </controls:Setting.ActionContent>
                </controls:Setting>
            </controls:SettingsGroup>

            <controls:SettingsGroup Header="Editor">
                <controls:Setting
                    x:Name="ColorFormatsSetting"
                    Description="Select which color formats (and in what order) should show up in the editor"
                    Header="Color formats"
                    Icon="&#xE14C;"/>
                <ListView
                    HorizontalAlignment="Stretch"
                    AutomationProperties.Name="{Binding ElementName=ColorFormatsSetting, Path=Header}"
                    ItemsSource="{x:Bind ColorFormats, Mode=TwoWay}"
                    SelectionMode="None">
                    <ListView.ItemTemplate>
                        <DataTemplate x:DataType="models:ColorFormatModel">
                            <Grid
                                MinHeight="68"
                                Padding="0,0,16,0"
                                HorizontalAlignment="Stretch"
                                AutomationProperties.Name="{x:Bind Name}"
                                Background="{ThemeResource CardBackgroundBrush}"
                                BorderBrush="{ThemeResource CardBorderBrush}"
                                BorderThickness="{ThemeResource CardBorderThickness}"
                                CornerRadius="{ThemeResource ControlCornerRadius}">
                                <Grid.RowDefinitions>
                                    <RowDefinition/>
                                    <RowDefinition/>
                                </Grid.RowDefinitions>
                                <TextBlock
                                    Margin="56,8,0,0"
                                    FontSize="16"
                                    FontWeight="SemiBold"
                                    Text="{x:Bind Name}"/>
                                <TextBlock
                                    Grid.Row="1"
                                    Margin="56,0,0,8"
                                    Style="{StaticResource SecondaryTextStyle}"
                                    Text="{x:Bind Example}"/>
                                <ToggleSwitch
                                    Grid.RowSpan="2"
                                    Margin="0,0,56,0"
                                    HorizontalAlignment="Right"
                                    AutomationProperties.HelpText="{x:Bind Name}"
                                    IsOn="{x:Bind IsShown, Mode=TwoWay}"
                                    OffContent=""
                                    OnContent=""/>

                                <Button
                                    Grid.RowSpan="2"
                                    HorizontalAlignment="Right"
                                    VerticalAlignment="Center"
                                    Background="Transparent"
                                    Content="&#xE10C;"
                                    FontFamily="{ThemeResource SymbolThemeFontFamily}">
                                    <Button.Flyout>
                                        <MenuFlyout>
                                            <MenuFlyoutItem
                                                Icon="Up"
                                                IsEnabled="{x:Bind CanMoveUp}"
                                                Text="Move up"/>
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
            </controls:SettingsGroup>
        </StackPanel>

    </controls:SettingsPageControl.ModuleContent>

    <controls:SettingsPageControl.PrimaryLinks>
        <controls:PageLink Link="https://aka.ms/PowerToysOverview_ColorPicker" Text="Learn more about Color Picker"/>
    </controls:SettingsPageControl.PrimaryLinks>
    <controls:SettingsPageControl.SecondaryLinks>
        <controls:PageLink Link="https://github.com/martinchrzan/ColorPicker/" Text="Martin Chrzan's Color Picker"/>
        <controls:PageLink Link="https://medium.com/@Niels9001/a-fluent-color-meter-for-powertoys-20407ededf0c" Text="Niels Laute's UX concept"/>
    </controls:SettingsPageControl.SecondaryLinks>
</controls:SettingsPageControl>
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

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/ColorFornat1_Demo.png)


![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/ColorFornat2_Demo.png)

# FancyZones Page

```xml
<controls:SettingsPageControl
    ModuleDescription="Create window layouts to help make multi-tasking easy."
    ModuleImageSource="ms-appx:///Assets/Modules/FancyZones.png"
    ModuleTitle="FancyZones">
    <controls:SettingsPageControl.ModuleContent>
        <StackPanel Orientation="Vertical" ChildrenTransitions="{StaticResource SettingsCardsAnimations}">
            <controls:Setting Header="Enable FancyZones">
                <controls:Setting.Icon>
                    <BitmapIcon ShowAsMonochrome="False" UriSource="ms-appx:///Assets/FluentIcons/FluentIconsFancyZones.png"/>
                </controls:Setting.Icon>
                <controls:Setting.ActionContent>
                    <ToggleSwitch/>
                </controls:Setting.ActionContent>
            </controls:Setting>

            <controls:SettingsGroup Header="Editor">
                <Button Style="{StaticResource SettingButtonStyle}">
                    <controls:Setting
                        Description="Set and manage your layouts"
                        Header="Launch layout editor"
                        Icon="&#xF246;"
                        Style="{StaticResource ExpanderHeaderSettingStyle}">
                        <controls:Setting.ActionContent>
                            <FontIcon FontFamily="{ThemeResource SymbolThemeFontFamily}" Glyph="&#xE2B4;"/>
                        </controls:Setting.ActionContent>
                    </controls:Setting>
                </Button>

                <controls:SettingExpander IsExpanded="True">
                    <controls:SettingExpander.Header>
                        <controls:Setting
                            Header="Activation shortcut"
                            Icon="&#xEDA7;"
                            Style="{StaticResource ExpanderHeaderSettingStyle}"/>
                    </controls:SettingExpander.Header>

                    <controls:SettingExpander.Content>
                        <StackPanel>
                            <controls:Setting
                                Description="When using multiple screens, the editor will launch on the screen where the mouse cursor is"
                                Header="Launch editor where mouse cursor is"
                                Style="{StaticResource ExpanderContentSettingStyle}">
                                <controls:Setting.ActionContent>
                                    <ToggleSwitch/>
                                </controls:Setting.ActionContent>
                            </controls:Setting>
                        </StackPanel>
                    </controls:SettingExpander.Content>
                </controls:SettingExpander>
            </controls:SettingsGroup>

            <controls:SettingsGroup Header="Zones">
                <controls:SettingExpander IsExpanded="True">
                    <controls:SettingExpander.Header>
                        <controls:Setting
                            Description="Manage how zones behave when using FancyZones"
                            Header="Zone behaviors"
                            Icon="&#xE620;"
                            Style="{StaticResource ExpanderHeaderSettingStyle}"/>
                    </controls:SettingExpander.Header>
                    <controls:SettingExpander.Content>
                        <StackPanel>
                            <CheckBox Margin="{StaticResource ExpanderSettingMargin}" Content="Hold Shift key to activate zones while dragging"/>
                            <Rectangle Style="{StaticResource ExpanderSeparatorStyle}"/>
                            <CheckBox Margin="{StaticResource ExpanderSettingMargin}" Content="Use a non-primary mouse button to toggle zone activation"/>
                            <Rectangle Style="{StaticResource ExpanderSeparatorStyle}"/>
                            <CheckBox Margin="{StaticResource ExpanderSettingMargin}" Content="Show zones on all monitors while dragging a window"/>
                            <Rectangle Style="{StaticResource ExpanderSeparatorStyle}"/>
                            <controls:Setting Header="When multiple zones overlap" Style="{StaticResource ExpanderContentSettingStyle}">
                                <controls:Setting.ActionContent>
                                    <ComboBox MinWidth="{StaticResource SettingActionControlMinWidth}">
                                        <ComboBoxItem Content="Activate the smallest zone by area"/>
                                        <ComboBoxItem Content="Activate the largest zone by area"/>
                                        <ComboBoxItem Content="Split the overlapped area into multiple activation targets"/>
                                        <ComboBoxItem Content="Activate the zone whose center is closest to the cursor"/>
                                    </ComboBox>
                                </controls:Setting.ActionContent>
                            </controls:Setting>

                            <controls:Setting Header="Zone opacity" Style="{StaticResource ExpanderContentSettingStyle}">
                                <controls:Setting.ActionContent>
                                    <Slider
                                        MinWidth="{StaticResource SettingActionControlMinWidth}"
                                        HorizontalAlignment="Right"
                                        Maximum="100"
                                        Minimum="0"/>
                                </controls:Setting.ActionContent>
                            </controls:Setting>
                        </StackPanel>
                    </controls:SettingExpander.Content>
                </controls:SettingExpander>
            </controls:SettingsGroup>

            <controls:SettingsGroup Header="Windows">
                <controls:SettingExpander IsExpanded="True">
                    <controls:SettingExpander.Header>
                        <controls:Setting
                            Description="Manage how windows behave when using FancyZones"
                            Header="Window behavior"
                            Icon="&#xE737;"
                            Style="{StaticResource ExpanderHeaderSettingStyle}"/>
                    </controls:SettingExpander.Header>
                    <controls:SettingExpander.Content>
                        <StackPanel>
                            <CheckBox Margin="{StaticResource ExpanderSettingMargin}" Content="Keep windows in their zones when the screen resolution changes"/>
                            <Rectangle Style="{StaticResource ExpanderSeparatorStyle}"/>
                            <CheckBox Margin="{StaticResource ExpanderSettingMargin}" Content="During zone layout changes, windows assigned to a zone will match new size/positions"/>
                            <Rectangle Style="{StaticResource ExpanderSeparatorStyle}"/>
                            <CheckBox Margin="{StaticResource ExpanderSettingMargin}" Content="Move newly created windows to their last known zone"/>
                        </StackPanel>
                    </controls:SettingExpander.Content>
                </controls:SettingExpander>

                <controls:SettingExpander IsExpanded="True">
                    <controls:SettingExpander.Header>
                        <controls:Setting
                            Description="This overrides the Windows Snap shortcut (Win + arrow) to move windows between zones"
                            Header="Override windows snap"
                            Icon="&#xE145;"
                            Style="{StaticResource ExpanderHeaderSettingStyle}">
                            <controls:Setting.ActionContent>
                                <ToggleSwitch/>
                            </controls:Setting.ActionContent>
                        </controls:Setting>
                    </controls:SettingExpander.Header>

                    <controls:SettingExpander.Content>
                        <StackPanel>
                            <RadioButton
                                Margin="{StaticResource ExpanderSettingMargin}"
                                Content="Win + Left/Right to move windows based on zone index"
                                GroupName="OverrideSnapGroup"/>
                            <RadioButton
                                Margin="{StaticResource ExpanderSettingMargin}"
                                Content="Win + Up/Down/Left/Right to move windows based on relative position"
                                GroupName="OverrideSnapGroup"/>
                            <Rectangle Style="{StaticResource ExpanderSeparatorStyle}"/>
                            <CheckBox Margin="56,8,16,8" Content="Move windows between zones across all monitors"/>
                        </StackPanel>
                    </controls:SettingExpander.Content>
                </controls:SettingExpander>
            </controls:SettingsGroup>

            <controls:SettingsGroup Header="Layouts">
                <controls:SettingExpander IsExpanded="True">
                    <controls:SettingExpander.Header>
                        <controls:Setting
                            Description="You can configure layout-specific shortcuts in the editor"
                            Header="Enable quick layout switch"
                            Icon="&#xE737;"
                            Style="{StaticResource ExpanderHeaderSettingStyle}">
                            <controls:Setting.ActionContent>
                                <ToggleSwitch/>
                            </controls:Setting.ActionContent>
                        </controls:Setting>
                    </controls:SettingExpander.Header>

                    <controls:SettingExpander.Content>
                        <StackPanel>
                            <CheckBox Margin="{StaticResource ExpanderSettingMargin}" Content="Flash zones when switching layout"/>
                        </StackPanel>
                    </controls:SettingExpander.Content>
                </controls:SettingExpander>
            </controls:SettingsGroup>

            <controls:SettingsGroup Header="Excluded apps">
                <controls:SettingExpander IsExpanded="True">
                    <controls:SettingExpander.Header>
                        <controls:Setting
                            Description="Excludes an application from snapping to zones and will only react to Windows Snap - add one application name per line"
                            Header="Exclude apps"
                            Icon="&#xE103;"
                            Style="{StaticResource ExpanderHeaderSettingStyle}"/>
                    </controls:SettingExpander.Header>
                    <controls:SettingExpander.Content>
                        <TextBox
                            MinWidth="240"
                            MinHeight="160"
                            Margin="{StaticResource ExpanderSettingMargin}"
                            AcceptsReturn="True"
                            PlaceholderText="Example: outlook.exe"
                            ScrollViewer.IsVerticalRailEnabled="True"
                            ScrollViewer.VerticalScrollBarVisibility="Visible"
                            ScrollViewer.VerticalScrollMode="Enabled"
                            TextWrapping="Wrap"/>
                    </controls:SettingExpander.Content>
                </controls:SettingExpander>
            </controls:SettingsGroup>
        </StackPanel>
    </controls:SettingsPageControl.ModuleContent>

    <controls:SettingsPageControl.PrimaryLinks>
        <controls:PageLink Link="https://aka.ms/PowerToysOverview_FancyZones" Text="Learn more about FancyZones"/>
    </controls:SettingsPageControl.PrimaryLinks>
</controls:SettingsPageControl>
```

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/FancyZones_Demo.png)

# General Page

```xml
<controls:SettingsPageControl ModuleDescription="Microsoft PowerToys is a set of utilities for power users to tune and streamline their Windows experience for greater productivity. Made with 💗 by Microsoft and the PowerToys community."
                                ModuleImageSource="ms-appx:///Assets/Modules/PT.png"
                                ModuleTitle="General"
                                SecondaryLinksHeader="Related information">
    <controls:SettingsPageControl.ModuleContent>
        <StackPanel Orientation="Vertical" ChildrenTransitions="{StaticResource SettingsCardsAnimations}">
            <controls:SettingsGroup Margin="0,-32,0,0"
                                    Header="Version">
                <controls:Setting Header="v0.45.0"
                                    Icon="&#xE117;">
                    <controls:Setting.Description>
                        <StackPanel Orientation="Vertical">
                            <TextBlock Style="{StaticResource SecondaryTextStyle}">
                                <Run Text="Last Checked" />
                                <Run Text="2021/09/10" />
                            </TextBlock>
                            <HyperlinkButton Margin="0,2,0,0"
                                                Content="Release notes"
                                                NavigateUri="https://github.com/microsoft/PowerToys/releases/" />
                        </StackPanel>
                    </controls:Setting.Description>
                    <controls:Setting.ActionContent>
                        <StackPanel VerticalAlignment="Center"
                                    Orientation="Horizontal"
                                    Spacing="18">
                            <ProgressRing Width="24"
                                            Height="24" />
                            <TextBlock VerticalAlignment="Center"
                                        FontWeight="SemiBold"
                                        Foreground="{ThemeResource TextFillColorSecondaryBrush}"
                                        Text="Checking For Updates" />
                            <Button HorizontalAlignment="Right"
                                    Content="Check For Updates" />
                        </StackPanel>
                    </controls:Setting.ActionContent>
                </controls:Setting>

                <InfoBar Title="Up To Date"
                            IsClosable="False"
                            IsOpen="True"
                            Severity="Success" />

                <controls:Setting Margin="0,-6,0,0"
                                    Description="Except on metered conections"
                                    Header="Download updates automatically">
                    <ToggleSwitch />
                </controls:Setting>
            </controls:SettingsGroup>
            <controls:SettingsGroup Header="Administrator mode">
                <controls:SettingExpander IsExpanded="True">
                    <controls:SettingExpander.Header>
                        <controls:Setting Description="Running as user"
                                            Header="Administrator mode"
                                            Icon="&#xE1A7;"
                                            Style="{StaticResource ExpanderHeaderSettingStyle}">
                            <controls:Setting.ActionContent>
                                <Button Content="Restart Demo as administrator" />
                            </controls:Setting.ActionContent>
                        </controls:Setting>
                    </controls:SettingExpander.Header>
                    <controls:SettingExpander.Content>
                        <StackPanel Orientation="Vertical">
                            <controls:Setting Header="Always run as administrator"
                                                IsEnabled="False"
                                                Style="{StaticResource ExpanderContentSettingStyle}">
                                <controls:Setting.Description>
                                    <HyperlinkButton Content="Learn more about administrator mode"
                                                        NavigateUri="https://aka.ms/powertoysDetectedElevatedHelp" />
                                </controls:Setting.Description>

                                <!--  This causes an error  -->

                                <!--<controls:Setting.ActionContent>
                                    <ToggleSwitch/>
                                </controls:Setting.ActionContent>-->
                            </controls:Setting>
                            <InfoBar Title="You need to run as administrator to use this setting."
                                        IsClosable="False"
                                        IsOpen="True"
                                        Severity="Warning" />
                        </StackPanel>
                    </controls:SettingExpander.Content>
                </controls:SettingExpander>
            </controls:SettingsGroup>
            <controls:SettingsGroup Header="Appearance &amp; behavior">
                <controls:Setting Header="Choose a mode"
                                    Icon="&#xE771;">
                    <controls:Setting.Description>
                        <HyperlinkButton Content="Windows color settings" />
                    </controls:Setting.Description>
                    <controls:Setting.ActionContent>
                        <ComboBox MinWidth="{StaticResource SettingActionControlMinWidth}"
                                    SelectedIndex="2">
                            <ComboBoxItem Content="Dark" />
                            <ComboBoxItem Content="Light" />
                            <ComboBoxItem Content="Default" />
                        </ComboBox>
                    </controls:Setting.ActionContent>
                </controls:Setting>
                <controls:Setting Description="Demo will launch automatically"
                                    Header="Run at startUp">
                    <controls:Setting.ActionContent>
                        <ToggleSwitch />
                    </controls:Setting.ActionContent>
                </controls:Setting>
            </controls:SettingsGroup>
            <CheckBox Name="check"
                        Margin="56,0,40,16"
                        AutomationProperties.Name="{Binding ElementName=IncludeInGlobalResultTitle, Path=Text}">
                <StackPanel Orientation="Vertical">
                    <TextBlock x:Name="IncludeInGlobalResultTitle"
                                Margin="0,10,0,0"
                                Text="Include in global result" />
                    <controls:IsEnabledTextBlock FontSize="{StaticResource SecondaryTextFontSize}"
                                                    IsEnabled="{Binding ElementName=check, Path=IsChecked}"
                                                    Text="Show results on queries without direct activation command" />
                </StackPanel>
            </CheckBox>
        </StackPanel>
    </controls:SettingsPageControl.ModuleContent>
    <controls:SettingsPageControl.PrimaryLinks>
        <controls:PageLink Link="https://aka.ms/powertoys"
                            Text="Documentation" />
        <controls:PageLink Link="https://aka.ms/powertoys"
                            Text="GitHub repository" />
        <controls:PageLink Link="https://aka.ms/powerToysReportBug"
                            Text="Report a bug" />
        <controls:PageLink Link="https://aka.ms/powerToysRequestFeature"
                            Text="Request a feature" />
    </controls:SettingsPageControl.PrimaryLinks>
    <controls:SettingsPageControl.SecondaryLinks>
        <controls:PageLink Link="http://go.microsoft.com/fwlink/?LinkId=521839"
                            Text="Privacy statement" />
        <controls:PageLink Link="https://github.com/microsoft/PowerToys/blob/master/NOTICE.md"
                            Text="Open-source notice" />
    </controls:SettingsPageControl.SecondaryLinks>
</controls:SettingsPageControl>
```

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/General_Demo.png)

# ImageResizer Page

```xml
<controls:SettingsPageControl
    ModuleDescription="Lets you resize images by right-clicking."
    ModuleImageSource="ms-appx:///Assets/Modules/ImageResizer.png"
    ModuleTitle="Image Resizer"
    SecondaryLinksHeader="Attribution">
    <controls:SettingsPageControl.Resources>
        <Style TargetType="ListViewItem" BasedOn="{StaticResource ListViewItemSettingStyle}"/>
    </controls:SettingsPageControl.Resources>
    <controls:SettingsPageControl.ModuleContent>
        <StackPanel ChildrenTransitions="{StaticResource SettingsCardsAnimations}">
            <controls:Setting Header="Enable Image Resizer">
                <controls:Setting.Icon>
                    <BitmapIcon ShowAsMonochrome="False" UriSource="ms-appx:///Assets/FluentIcons/FluentIconsImageResizer.png"/>
                </controls:Setting.Icon>
                <controls:Setting.ActionContent>
                    <ToggleSwitch/>
                </controls:Setting.ActionContent>
            </controls:Setting>

            <controls:SettingsGroup Header="Image sizes">
                <controls:Setting Header="Image sizes" Icon="&#xE2B2;">
                    <controls:Setting.ActionContent>
                        <Button Content="Add a size" Style="{ThemeResource AccentButtonStyle}"/>
                    </controls:Setting.ActionContent>
                </controls:Setting>
                <ListView
                    ItemsSource="{x:Bind Sizes, Mode=TwoWay}"
                    ScrollViewer.HorizontalScrollBarVisibility="Auto"
                    ScrollViewer.HorizontalScrollMode="Enabled"
                    ScrollViewer.IsHorizontalRailEnabled="True"
                    SelectionMode="None">
                    <ListView.ItemTemplate>
                        <DataTemplate x:Name="SingleLineDataTemplate" x:DataType="models:ImageSize">
                            <Grid
                                MinHeight="68"
                                Padding="0,0,16,0"
                                HorizontalAlignment="Stretch"
                                Background="{ThemeResource CardBackgroundBrush}"
                                BorderBrush="{ThemeResource CardBorderBrush}"
                                BorderThickness="{ThemeResource CardBorderThickness}"
                                CornerRadius="{ThemeResource ControlCornerRadius}">
                                <Grid.ColumnDefinitions>
                                    <ColumnDefinition Width="56"/>
                                    <ColumnDefinition Width="*"/>
                                    <ColumnDefinition Width="52"/>
                                </Grid.ColumnDefinitions>

                                <StackPanel
                                    Grid.Column="1"
                                    Margin="0,0,16,0"
                                    VerticalAlignment="Center"
                                    Orientation="Vertical">
                                    <TextBlock
                                        FontSize="16"
                                        FontWeight="SemiBold"
                                        Text="{x:Bind Name, Mode=OneWay}"/>
                                    <StackPanel
                                        Grid.Row="1"
                                        Grid.Column="1"
                                        Margin="0,4,0,0"
                                        Orientation="Horizontal">
                                        <TextBlock
                                            Margin="0,0,4,0"
                                            Style="{ThemeResource SecondaryTextStyle}"
                                            Text="{x:Bind Fit, Mode=OneWay}"/>
                                        <TextBlock
                                            Margin="0,0,4,0"
                                            FontWeight="SemiBold"
                                            Style="{ThemeResource SecondaryTextStyle}"
                                            Text="{x:Bind Width, Mode=OneWay}"/>
                                        <TextBlock
                                            Margin="0,5,4,0"
                                            AutomationProperties.AccessibilityView="Raw"
                                            FontFamily="{ThemeResource SymbolThemeFontFamily}"
                                            FontSize="10"
                                            Style="{ThemeResource SecondaryTextStyle}"
                                            Text="&#xE947;"/>
                                        <TextBlock
                                            Margin="0,0,4,0"
                                            FontWeight="SemiBold"
                                            Style="{ThemeResource SecondaryTextStyle}"
                                            Text="{x:Bind Height, Mode=OneWay}"/>
                                        <TextBlock
                                            Margin="0,0,4,0"
                                            Style="{ThemeResource SecondaryTextStyle}"
                                            Text="{x:Bind Unit, Mode=OneWay}"/>
                                    </StackPanel>
                                </StackPanel>

                                <StackPanel
                                    Grid.Column="2"
                                    HorizontalAlignment="Right"
                                    Orientation="Horizontal"
                                    Spacing="8">
                                    <Button
                                        Width="40"
                                        Height="36"
                                        Background="Transparent"
                                        Content="&#xE70F;"
                                        FontFamily="Segoe MDL2 Assets">
                                        <ToolTipService.ToolTip>
                                            <TextBlock Text="Edit"/>
                                        </ToolTipService.ToolTip>
                                        <Button.Flyout>
                                            <Flyout>
                                                <StackPanel Margin="0,12,0,0" Spacing="16">
                                                    <TextBox
                                                        Width="240"
                                                        HorizontalAlignment="Left"
                                                        Header="Name"
                                                        Text="{x:Bind Path=Name, Mode=TwoWay, UpdateSourceTrigger=PropertyChanged}"/>
                                                    <ComboBox
                                                        Width="240"
                                                        HorizontalAlignment="Left"
                                                        Header="Fit"
                                                        SelectedIndex="0">
                                                        <ComboBoxItem Content="Fill"/>
                                                        <ComboBoxItem Content="Fit"/>
                                                        <ComboBoxItem Content="Stretch"/>
                                                    </ComboBox>

                                                    <StackPanel Orientation="Horizontal" Spacing="8">
                                                        <NumberBox
                                                            Width="116"
                                                            Header="Width"
                                                            Minimum="0"
                                                            SpinButtonPlacementMode="Compact"
                                                            Value="{x:Bind Path=Width, Mode=TwoWay}"/>

                                                        <NumberBox
                                                            Width="116"
                                                            Header="Height"
                                                            Minimum="0"
                                                            SpinButtonPlacementMode="Compact"
                                                            Value="{x:Bind Path=Height, Mode=TwoWay}"/>

                                                    </StackPanel>
                                                    <ComboBox
                                                        Width="240"
                                                        Margin="0,0,0,24"
                                                        Header="Unit"
                                                        SelectedIndex="0">
                                                        <ComboBoxItem Content="CM"/>
                                                        <ComboBoxItem Content="Inches"/>
                                                        <ComboBoxItem Content="Percent"/>
                                                        <ComboBoxItem Content="Pixels"/>
                                                    </ComboBox>
                                                </StackPanel>
                                            </Flyout>
                                        </Button.Flyout>
                                    </Button>

                                    <Button
                                        Width="40"
                                        Height="36"
                                        Background="Transparent"
                                        Content="&#xE74D;"
                                        FontFamily="Segoe MDL2 Assets">
                                        <ToolTipService.ToolTip>
                                            <TextBlock Text="Remove"/>
                                        </ToolTipService.ToolTip>
                                    </Button>
                                </StackPanel>
                            </Grid>
                        </DataTemplate>
                    </ListView.ItemTemplate>
                </ListView>
            </controls:SettingsGroup>
            <controls:SettingsGroup Header="Encoding">
                <controls:Setting Header="Fallback encoder">
                    <controls:Setting.ActionContent>
                        <ComboBox MinWidth="{StaticResource SettingActionControlMinWidth}" SelectedIndex="2">
                            <ComboBoxItem Content="PNG encoder"/>
                            <ComboBoxItem Content="BMP encoder"/>
                            <ComboBoxItem Content="JPEG encoder"/>
                            <ComboBoxItem Content="TIFF encoder"/>
                        </ComboBox>
                    </controls:Setting.ActionContent>
                </controls:Setting>
                <controls:Setting Header="JPEG quality level">
                    <controls:Setting.ActionContent>
                        <NumberBox
                            MinWidth="{StaticResource SettingActionControlMinWidth}"
                            HorizontalAlignment="Right"
                            Maximum="100"
                            Minimum="0"
                            SpinButtonPlacementMode="Compact"
                            Value="90"/>
                    </controls:Setting.ActionContent>
                </controls:Setting>

                <controls:Setting Header="PNG interlacing">
                    <controls:Setting.ActionContent>
                        <ComboBox MinWidth="{StaticResource SettingActionControlMinWidth}" SelectedIndex="0">
                            <ComboBoxItem Content="Default"/>
                            <ComboBoxItem Content="On"/>
                            <ComboBoxItem Content="Off"/>
                        </ComboBox>
                    </controls:Setting.ActionContent>
                </controls:Setting>

                <controls:Setting Header="TIFF compression">
                    <controls:Setting.ActionContent>
                        <ComboBox MinWidth="{StaticResource SettingActionControlMinWidth}" SelectedIndex="0">
                            <ComboBoxItem Content="Default"/>
                            <ComboBoxItem Content="None"/>
                            <ComboBoxItem Content="CCITT3"/>
                            <ComboBoxItem Content="CCITT4"/>
                            <ComboBoxItem Content="LZW"/>
                        </ComboBox>
                    </controls:Setting.ActionContent>
                </controls:Setting>
            </controls:SettingsGroup>
            <controls:SettingsGroup Header="File">
                <controls:SettingExpander IsExpanded="True">
                    <controls:SettingExpander.Header>
                        <controls:Setting Header="Filename format" Style="{StaticResource ExpanderHeaderSettingStyle}">
                            <controls:Setting.ActionContent>
                                <StackPanel Orientation="Horizontal" Spacing="4">
                                    <TextBox
                                        MinWidth="{StaticResource SettingActionControlMinWidth}"
                                        HorizontalAlignment="Right"
                                        Header="Example: %1 (%2)"/>
                                    <Button Content="&#xE946;" FontFamily="{ThemeResource SymbolThemeFontFamily}">
                                        <Button.Flyout>
                                            <Flyout>
                                                <TextBlock x:Name="FileFormatTextBlock">
                                                    <Run Text="The following parameters can be used:"/>
                                                    <LineBreak/>
                                                    <LineBreak/>
                                                    <Run FontWeight="Bold" Text="%1"/>
                                                    <Run Text=" - "/>
                                                    <Run Text="Original filename"/>
                                                    <LineBreak/>
                                                    <Run FontWeight="Bold" Text="%2"/>
                                                    <Run Text=" - "/>
                                                    <Run Text="Size name"/>
                                                    <LineBreak/>
                                                    <Run FontWeight="Bold" Text="%3"/>
                                                    <Run Text=" - "/>
                                                </TextBlock>
                                            </Flyout>
                                        </Button.Flyout>
                                    </Button>
                                </StackPanel>
                            </controls:Setting.ActionContent>
                        </controls:Setting>
                    </controls:SettingExpander.Header>
                    <controls:SettingExpander.Content>
                        <CheckBox Margin="16,8,0,8" Content="Use original date modified"/>
                    </controls:SettingExpander.Content>
                </controls:SettingExpander>
            </controls:SettingsGroup>
        </StackPanel>
    </controls:SettingsPageControl.ModuleContent>

    <controls:SettingsPageControl.PrimaryLinks>
        <controls:PageLink Link="https://aka.ms/PowerToysOverview_ImageResizer" Text="Learn more about Image Resizer"/>
    </controls:SettingsPageControl.PrimaryLinks>
    <controls:SettingsPageControl.SecondaryLinks>
        <controls:PageLink Link="https://github.com/bricelam/ImageResizer/" Text="Brice Lambson's ImageResizer"/>
    </controls:SettingsPageControl.SecondaryLinks>
</controls:SettingsPageControl>
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
![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/ImageResize_Demo.png)

# KeyboardManager Page

```xml
<controls:SettingsPageControl
    ModuleDescription="Reconfigure your keyboard by remapping keys and shortcuts"
    ModuleImageSource="ms-appx:///Assets/Modules/KBM.png"
    ModuleTitle="Keyboard Manager">
    <controls:SettingsPageControl.ModuleContent>
        <StackPanel Orientation="Vertical" ChildrenTransitions="{StaticResource SettingsCardsAnimations}">
            <controls:Setting Header="Enable Keyboard Manager">
                <controls:Setting.Icon>
                    <BitmapIcon ShowAsMonochrome="False" UriSource="ms-appx:///Assets/FluentIcons/FluentIconsKeyboardManager.png"/>
                </controls:Setting.Icon>
                <controls:Setting.ActionContent>
                    <ToggleSwitch/>
                </controls:Setting.ActionContent>
                <controls:Setting.Description>
                    <HyperlinkButton NavigateUri="https://aka.ms/powerToysCannotRemapKeys">
                        <TextBlock FontWeight="SemiBold" Text="Learn more about remapping limitations"/>
                    </HyperlinkButton>
                </controls:Setting.Description>
            </controls:Setting>

            <controls:SettingsGroup Header="Keys" IsEnabled="False">

                <Button Style="{StaticResource SettingButtonStyle}">
                    <controls:Setting
                        Description="Remap keys to other keys or shortcuts"
                        Header="Remap a key"
                        Icon="&#xE92E;"
                        Style="{StaticResource ExpanderHeaderSettingStyle}">
                        <controls:Setting.ActionContent>
                            <FontIcon FontFamily="{ThemeResource SymbolThemeFontFamily}" Glyph="&#xE8A7;"/>
                        </controls:Setting.ActionContent>
                    </controls:Setting>
                </Button>

            </controls:SettingsGroup>

            <controls:SettingsGroup Header="Shortcuts" IsEnabled="False">
                <Button Style="{StaticResource SettingButtonStyle}">
                    <controls:Setting
                        Description="Remap shortcuts to other shortcuts or keys for all or specific applications"
                        Header="Remap a shortcut"
                        Icon="&#xE92E;"
                        Style="{StaticResource ExpanderHeaderSettingStyle}">
                        <controls:Setting.ActionContent>
                            <FontIcon FontFamily="{ThemeResource SymbolThemeFontFamily}" Glyph="&#xE8A7;"/>
                        </controls:Setting.ActionContent>
                    </controls:Setting>
                </Button>
            </controls:SettingsGroup>
        </StackPanel>
    </controls:SettingsPageControl.ModuleContent>
    <controls:SettingsPageControl.PrimaryLinks>
        <controls:PageLink Link="https://aka.ms/PowerToysOverview_KeyboardManager" Text="Learn more about Keyboard Manager"/>
    </controls:SettingsPageControl.PrimaryLinks>
</controls:SettingsPageControl>

```
![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/KeyboardManager_Demo.png)


# OOBE Page

```xml
<controls:OOBEPageControl Title="FileExplorer Preview"
    HeroImage="ms-appx:///Assets/Modules/OOBE/FileExplorer.png"
    Description="These settings allow you to manage your Windows File Explorer custom preview handlers.">
    <controls:OOBEPageControl.PageContent>
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
    </controls:OOBEPageControl.PageContent>
</controls:OOBEPageControl>
```
![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/OOBE_Demo.png)

# PowerLauncher Page
```xml
<controls:SettingsPageControl
    ModuleDescription="A quick launcher that has additional capabilities without sacrificing performance."
    ModuleImageSource="ms-appx:///Assets/Modules/PowerLauncher.png"
    ModuleTitle="PowerToys Run"
    SecondaryLinksHeader="Attribution">
    <controls:SettingsPageControl.Resources>
        <Style TargetType="ListViewItem" BasedOn="{StaticResource ListViewItemSettingStyle}"/>
    </controls:SettingsPageControl.Resources>
    <controls:SettingsPageControl.ModuleContent>
        <StackPanel Orientation="Vertical" ChildrenTransitions="{StaticResource SettingsCardsAnimations}">
            <controls:Setting Header="Enable PowerToys Run">
                <controls:Setting.Icon>
                    <BitmapIcon ShowAsMonochrome="False" UriSource="ms-appx:///Assets/FluentIcons/FluentIconsPowerToysRun.png"/>
                </controls:Setting.Icon>
                <controls:Setting.ActionContent>
                    <ToggleSwitch/>
                </controls:Setting.ActionContent>
            </controls:Setting>
            <controls:SettingsGroup Header="Shortcut">
                <controls:SettingExpander IsExpanded="True">
                    <controls:SettingExpander.Header>
                        <controls:Setting
                            Description="Customize the keyboard shortcut to activate this module"
                            Header="Activation shortcut"
                            Icon="&#xEDA7;"
                            Style="{StaticResource ExpanderHeaderSettingStyle}"/>
                    </controls:SettingExpander.Header>
                    <controls:SettingExpander.Content>
                        <StackPanel>
                            <CheckBox Margin="{StaticResource ExpanderSettingMargin}" Content="Ignore shortcuts in fullscreen mode"/>
                        </StackPanel>
                    </controls:SettingExpander.Content>
                </controls:SettingExpander>
            </controls:SettingsGroup>

            <controls:SettingsGroup Header="Search &amp; results">
                <controls:SettingExpander IsExpanded="True">
                    <controls:SettingExpander.Header>
                        <controls:Setting
                            Header="Maximum number of results"
                            Icon="&#xE721;"
                            Style="{StaticResource ExpanderHeaderSettingStyle}">
                            <controls:Setting.ActionContent>
                                <NumberBox
                                    MinWidth="{StaticResource SettingActionControlMinWidth}"
                                    Minimum="1"
                                    SpinButtonPlacementMode="Compact"
                                    Value="4"/>
                            </controls:Setting.ActionContent>
                        </controls:Setting>
                    </controls:SettingExpander.Header>
                    <controls:SettingExpander.Content>
                        <CheckBox Margin="{StaticResource ExpanderSettingMargin}" Content="Clear the previous query on launch"/>
                    </controls:SettingExpander.Content>
                </controls:SettingExpander>
            </controls:SettingsGroup>

            <controls:SettingsGroup Header="Position &amp; appearance">
                <controls:Setting
                    Description="If multiple monitors are in use, PowerToys Run can be launched on the desired monitor"
                    Header="Preferred monitor position"
                    Icon="&#xE18C;">
                    <controls:Setting.ActionContent>
                        <ComboBox MinWidth="{StaticResource SettingActionControlMinWidth}" SelectedIndex="0">
                            <ComboBoxItem Content="Monitor with mouse cursor"/>
                            <ComboBoxItem Content="Primary monitor"/>
                            <ComboBoxItem Content="Monitor with focused window"/>
                        </ComboBox>
                    </controls:Setting.ActionContent>
                </controls:Setting>

                <controls:Setting Header="Choose a mode" Icon="&#xE771;">
                    <controls:Setting.Description>
                        <HyperlinkButton Content="Windows color settings"/>
                    </controls:Setting.Description>
                    <controls:Setting.ActionContent>
                        <ComboBox MinWidth="{StaticResource SettingActionControlMinWidth}" SelectedIndex="0">
                            <ComboBoxItem Content="Dark"/>
                            <ComboBoxItem Content="Light"/>
                            <ComboBoxItem Content="Default"/>
                        </ComboBox>
                    </controls:Setting.ActionContent>
                </controls:Setting>
            </controls:SettingsGroup>
            <controls:SettingsGroup Header="Plugins">
                <controls:Setting
                    Description="You can include or remove each plugin from the global results, change the direct activation phrase and configure additional options"
                    Header="Plugins"
                    Icon="&#xEA86;">
                    <controls:Setting.ActionContent>
                        <AutoSuggestBox
                            MinWidth="{StaticResource SettingActionControlMinWidth}"
                            PlaceholderText="Search this list"
                            QueryIcon="Find"/>
                    </controls:Setting.ActionContent>
                </controls:Setting>
                <InfoBar
                    Title="PowerToys Run can't provide any results without plugins"
                    IsClosable="False"
                    IsOpen="True"
                    Message="Enable at least one plugin to get started"
                    Severity="Error"/>

                <StackPanel Orientation="Horizontal">
                    <ProgressRing
                        Width="20"
                        Height="20"
                        Margin="18,18"
                        IsActive="True"/>
                    <TextBlock
                        VerticalAlignment="Center"
                        Style="{ThemeResource SecondaryTextStyle}"
                        Text="Plugins are loading..."/>
                </StackPanel>

                <ListView IsItemClickEnabled="False" SelectionMode="None"/>
            </controls:SettingsGroup>
        </StackPanel>

    </controls:SettingsPageControl.ModuleContent>
    <controls:SettingsPageControl.PrimaryLinks>
        <controls:PageLink Link="https://aka.ms/PowerToysOverview_PowerToysRun" Text="Learn more about PowerToys Run"/>
    </controls:SettingsPageControl.PrimaryLinks>
    <controls:SettingsPageControl.SecondaryLinks>
        <controls:PageLink Link="https://github.com/Wox-launcher/Wox/" Text="Wox"/>
        <controls:PageLink Link="https://github.com/betsegaw/windowwalker/" Text="Beta Tadele's Window Walker"/>
    </controls:SettingsPageControl.SecondaryLinks>
</controls:SettingsPageControl>
```
![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/Powertoys_Demo.png)

# PowerPreview Page
```xml
<controls:SettingsPageControl
    ModuleDescription="These settings allow you to manage your Windows File Explorer custom preview handlers."
    ModuleImageSource="ms-appx:///Assets/Modules/PowerPreview.png"
    ModuleTitle="File Explorer">
    <controls:SettingsPageControl.ModuleContent>
        <StackPanel Orientation="Vertical" ChildrenTransitions="{StaticResource SettingsCardsAnimations}">
            <InfoBar
                Title="You need to run as administrator to modify these settings."
                IsClosable="False"
                IsOpen="True"
                Severity="Warning"/>

            <InfoBar
                Title="The settings on this page affect all users on the system"
                IsClosable="False"
                IsOpen="True"
                Severity="Informational"/>

            <controls:SettingsGroup Header="Preview Pane">
                <controls:Setting Header="Enable SVG (.svg) preview" Icon="&#xE91B;">
                    <controls:Setting.ActionContent>
                        <ToggleSwitch/>
                    </controls:Setting.ActionContent>
                </controls:Setting>

                <controls:Setting Header="Enable Markdown (.md) preview" Icon="&#xE943;">
                    <controls:Setting.ActionContent>
                        <ToggleSwitch/>
                    </controls:Setting.ActionContent>
                </controls:Setting>

                <controls:Setting Header="Enable PDF (.pdf) preview" Icon="&#xEA90;">
                    <controls:Setting.ActionContent>
                        <ToggleSwitch/>
                    </controls:Setting.ActionContent>
                </controls:Setting>
            </controls:SettingsGroup>

            <controls:SettingsGroup Header="Icon Preview">
                <InfoBar
                    Title="A reboot may be required for changes to these settings to take effect"
                    IsClosable="False"
                    IsOpen="True"
                    Severity="Informational"/>
                <controls:Setting Header="Enable SVG (.svg) thumbnails" Icon="&#xE91B;">
                    <controls:Setting.ActionContent>
                        <ToggleSwitch/>
                    </controls:Setting.ActionContent>
                </controls:Setting>
            </controls:SettingsGroup>
        </StackPanel>
    </controls:SettingsPageControl.ModuleContent>

    <controls:SettingsPageControl.PrimaryLinks>
        <controls:PageLink Link="https://aka.ms/PowerToysOverview_FileExplorerAddOns" Text="Learn more about File Explorer add-ons"/>
    </controls:SettingsPageControl.PrimaryLinks>
</controls:SettingsPageControl>
```

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/FileExplorer_Demo.png)

# PowerRename Page
```xml
<controls:SettingsPageControl
    ModuleDescription="A Windows Shell extension for more advanced bulk renaming using search and replace or regular expressions."
    ModuleImageSource="ms-appx:///Assets/Modules/PowerRename.png"
    ModuleTitle="PowerRename"
    SecondaryLinksHeader="Attribution">
    <controls:SettingsPageControl.ModuleContent>
        <StackPanel HorizontalAlignment="Stretch" Orientation="Vertical" ChildrenTransitions="{StaticResource SettingsCardsAnimations}">
            <controls:Setting Header="Enable PowerRename">
                <controls:Setting.Icon>
                    <BitmapIcon ShowAsMonochrome="False" UriSource="ms-appx:///Assets/FluentIcons/FluentIconsPowerRename.png"/>
                </controls:Setting.Icon>
                <controls:Setting.ActionContent>
                    <ToggleSwitch/>
                </controls:Setting.ActionContent>
            </controls:Setting>

            <controls:SettingsGroup Header="Shell integration">
                <controls:Setting Header="Show icon on context menu">
                    <controls:Setting.ActionContent>
                        <ToggleSwitch/>
                    </controls:Setting.ActionContent>
                </controls:Setting>

                <controls:Setting Description="Press Shift + right-click on files to open the extended menu" Header="Appear only in extended context menu">
                    <controls:Setting.ActionContent>
                        <ToggleSwitch/>
                    </controls:Setting.ActionContent>
                </controls:Setting>
            </controls:SettingsGroup>

            <controls:SettingsGroup Header="Auto-complete">
                <controls:SettingExpander IsExpanded="True">
                    <controls:SettingExpander.Header>
                        <controls:Setting Header="Enable auto-complete for the search and replace fields" Style="{StaticResource ExpanderHeaderSettingStyle}">
                            <controls:Setting.ActionContent>
                                <ToggleSwitch/>
                            </controls:Setting.ActionContent>
                        </controls:Setting>
                    </controls:SettingExpander.Header>
                    <controls:SettingExpander.Content>
                        <StackPanel HorizontalAlignment="Stretch">
                            <controls:Setting Header="Maximum number of items" Style="{StaticResource ExpanderContentSettingStyle}">
                                <controls:Setting.ActionContent>
                                    <NumberBox
                                        MinWidth="{StaticResource SettingActionControlMinWidth}"
                                        HorizontalAlignment="Left"
                                        Maximum="20"
                                        Minimum="0"
                                        SpinButtonPlacementMode="Compact"
                                        Value="10"/>
                                </controls:Setting.ActionContent>
                            </controls:Setting>
                        </StackPanel>
                    </controls:SettingExpander.Content>
                </controls:SettingExpander>
                <controls:Setting Header="Show recently used strings">
                    <controls:Setting.ActionContent>
                        <ToggleSwitch/>
                    </controls:Setting.ActionContent>
                </controls:Setting>
            </controls:SettingsGroup>

            <controls:SettingsGroup Header="Behavior">
                <controls:Setting Description="Provides extended features but may use different regex syntax" Header="Use Boost library">
                    <controls:Setting.ActionContent>
                        <ToggleSwitch/>
                    </controls:Setting.ActionContent>
                </controls:Setting>
            </controls:SettingsGroup>
        </StackPanel>
    </controls:SettingsPageControl.ModuleContent>

    <controls:SettingsPageControl.PrimaryLinks>
        <controls:PageLink Link="https://aka.ms/PowerToysOverview_PowerRename" Text="Learn more about PowerRename"/>
    </controls:SettingsPageControl.PrimaryLinks>
    <controls:SettingsPageControl.SecondaryLinks>
        <controls:PageLink Link="https://github.com/chrdavis/SmartRename" Text="Chris Davis's SmartRenamer"/>
    </controls:SettingsPageControl.SecondaryLinks>
</controls:SettingsPageControl>
```

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/PowerRename_Demo.png)

# ShortcutGuid Page
```xml
<controls:SettingsPageControl
    ModuleDescription="Shows a help overlay with Windows shortcuts when the Windows key is pressed."
    ModuleImageSource="ms-appx:///Assets/Modules/ShortcutGuide.png"
    ModuleTitle="Shortcut Guide">
    <controls:SettingsPageControl.ModuleContent>
        <StackPanel Orientation="Vertical" ChildrenTransitions="{StaticResource SettingsCardsAnimations}">
            <controls:Setting Header="Enable Shortcut Guide">
                <controls:Setting.Icon>
                    <BitmapIcon ShowAsMonochrome="False" UriSource="ms-appx:///Assets/FluentIcons/FluentIconsShortcutGuide.png"/>
                </controls:Setting.Icon>
                <controls:Setting.ActionContent>
                    <ToggleSwitch/>
                </controls:Setting.ActionContent>
            </controls:Setting>

            <controls:KeyVisual IsTabStop="False"
                                        AutomationProperties.AccessibilityView="Raw"
                                        VisualType="SmallOutline"
                                        VerticalAlignment="Center"
                                HorizontalAlignment="Left"
                                        Content="Ctrl+F5" />
            <controls:ShortcutWithTextLabelControl x:Name="HotkeyMicVidControl" Text="to toggle both your microphone and video" />
            <controls:ShortcutWithTextLabelControl x:Name="HotkeyMicControl" Text="to toggle your microphone" />
            <controls:ShortcutWithTextLabelControl x:Name="HotkeyVidControl" Text="to toggle your microphone" />
            <Button Content="Open Shortcut Dialog" Click="Button_Click"/>
            <controls:SettingsGroup Header="Appearance &amp; behavior">

                <controls:Setting Header="Choose a mode" Icon="&#xE771;">
                    <controls:Setting.Description>
                        <HyperlinkButton Content="Windows color settings"/>
                    </controls:Setting.Description>
                    <controls:Setting.ActionContent>
                        <ComboBox MinWidth="{StaticResource SettingActionControlMinWidth}" SelectedIndex="0">
                            <ComboBoxItem Content="Dark"/>
                            <ComboBoxItem Content="Light"/>
                            <ComboBoxItem Content="Default"/>
                        </ComboBox>
                    </controls:Setting.ActionContent>
                </controls:Setting>

                <controls:Setting Header="Opacity of background">
                    <controls:Setting.ActionContent>
                        <Slider
                            MinWidth="{StaticResource SettingActionControlMinWidth}"
                            Maximum="100"
                            Minimum="0"/>
                    </controls:Setting.ActionContent>
                </controls:Setting>
            </controls:SettingsGroup>
            <controls:SettingsGroup Header="Excluded apps">
                <controls:SettingExpander IsExpanded="True">
                    <controls:SettingExpander.Header>
                        <controls:Setting
                            Description="Turns off Shortcut Guide when these applications have focus - add one application name per line"
                            Header="Exclude apps"
                            Icon="&#xE103;"
                            Style="{StaticResource ExpanderHeaderSettingStyle}"/>
                    </controls:SettingExpander.Header>
                    <controls:SettingExpander.Content>
                        <TextBox
                            MinWidth="240"
                            MinHeight="160"
                            Margin="{StaticResource ExpanderSettingMargin}"
                            AcceptsReturn="True"
                            PlaceholderText="Example: outlook.exe"
                            ScrollViewer.IsVerticalRailEnabled="True"
                            ScrollViewer.VerticalScrollBarVisibility="Visible"
                            ScrollViewer.VerticalScrollMode="Enabled"
                            TextWrapping="Wrap"/>
                    </controls:SettingExpander.Content>
                </controls:SettingExpander>
            </controls:SettingsGroup>
        </StackPanel>
    </controls:SettingsPageControl.ModuleContent>
    <controls:SettingsPageControl.PrimaryLinks>
        <controls:PageLink Link="https://aka.ms/PowerToysOverview_ShortcutGuide" Text="Learn more about Shortcut Guide"/>
    </controls:SettingsPageControl.PrimaryLinks>
</controls:SettingsPageControl>
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

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/Shortcut_Demo.png)


# Demo
you can run [demo](https://github.com/ghost1372/SettingsUI) and see this feature.
