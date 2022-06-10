---
title: Shortcut
---

```cs
public sealed partial class SettingsPageControl : UserControl
```

# Attributes

| Name | Class|
|-|-|
|Keys|ShortcutDialogContentControl|
|IsError|ShortcutDialogContentControl|
|Text|ShortcutWithTextLabelControl|
|Keys|ShortcutWithTextLabelControl|

# Example

```cs
private ShortcutDialogContentControl c = new ShortcutDialogContentControl();
private ContentDialog shortcutDialog;
bool canClose = false;
public ShortcutGuidePage()
{
    this.InitializeComponent();
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

```xml
<controls:SettingsPageControl
    ModuleDescription="Shows a help overlay with Windows shortcuts when the Windows key is pressed."
    ModuleImageSource="ms-appx:///Assets/Modules/ShortcutGuide.png"
    ModuleTitle="Shortcut Guide">
    <controls:SettingsPageControl.ModuleContent>
        <StackPanel Orientation="Vertical">
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

# Demo
you can run [demo](https://github.com/ghost1372/SettingsUI) and see this feature.
