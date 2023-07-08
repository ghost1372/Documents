---
title: ThemeManager
---

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WinUICommunity) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wuc="using:WinUICommunity"`
For use in the Csharp:
`using WinUICommunity;`
{% endnote %}

You can simplify the operation of saving, retrieving and selecting the Application theme. All operations are performed automatically.

first of all, `Initialize` ThemeManager (Theme retrieving is done automatically by the Initialize method):

# Initialize

## 1.Initialize with Window
In this case you are Initializing a Window `(MainWindow)`

```cs
public ThemeManager themeManager {get; set;}

protected override void OnLaunched(Microsoft.UI.Xaml.LaunchActivatedEventArgs args)
{
    m_window = new MainWindow();
    themeManager = ThemeManager.Initialize(m_window);
    // OR
    // themeManager = new ThemeManager(m_window);
    m_window.Activate();
}
```

## 2.Initialize with WindowHelper.ActiveWindows
If you used the `WindowHelper.TrackWindow` method when creating windows, you can initialize ThemeManager like this:

```cs
public ThemeManager themeManager {get; set;}

protected override void OnLaunched(Microsoft.UI.Xaml.LaunchActivatedEventArgs args)
{
    m_window = new MainWindow();
    WindowHelper.TrackWindow(m_window);
    themeManager = ThemeManager.Initialize();
    // OR
    // themeManager = new ThemeManager(null);
    m_window.Activate();
}
```

## 3.Initialize with ThemeOptions
You can Initialize ThemeManager with `ThemeOptions`

|Name|Default|Remark|
|-|-|-|
|BackdropType|Mica||
|ElementTheme|Default||
|ForceBackdrop|false||
|ForceElementTheme|false||
|UseBuiltInSettings|true||
|BuiltInSettingsFileName|null||
|TitleBarCustomization|null||

```cs
public ThemeManager themeManager {get; set;}

protected override void OnLaunched(Microsoft.UI.Xaml.LaunchActivatedEventArgs args)
{
    m_window = new MainWindow();
    themeManager = ThemeManager.Initialize(m_window, new ThemeOptions
    {
        BackdropType = BackdropType.MicaAlt,
        ElementTheme = ElementTheme.Dark,
        ForceBackdrop = true,
        ForceElementTheme = true,
        UseBuiltInSettings = true,
        TitleBarCustomization = new TitleBarCustomization 
        {
            TitleBarType = TitleBarType.Window,
            CaptionButtonsColorForLightTheme = new CaptionButtons
            {

            },
            CaptionButtonsColorForDarkTheme = new CaptionButtons
            {

            },
        }
    });
    
    // OR
    // themeManager = new ThemeManager(m_window, new ThemeOptions
    // {
    //     BackdropType = BackdropType.MicaAlt,
    //     ElementTheme = ElementTheme.Dark,
    //     ForceBackdrop = true,
    //     ForceElementTheme = true,
    //     UseBuiltInSettings = true,
    //     TitleBarCustomization = new TitleBarCustomization 
    //     {
    //         TitleBarType = TitleBarType.Window,
    //         CaptionButtonsColorForLightTheme = new CaptionButtons
    //         {

    //         },
    //         CaptionButtonsColorForDarkTheme = new CaptionButtons
    //         {

    //         },
    //     }
    // });
    
    m_window.Activate();
}
```

### Force SystemBackdrop and ElementTheme
if you set `ForceBackdrop`and `ForceElementTheme` to `true`, ThemeManager will force load your specified `BackdropType` and `ElementTheme` and ignore saved settings.

### Use Built-In Settings
we are saving/restoring selected `SystemBackdrop` and `ElementTheme` automatically and built-in, if you want you can disable this option or change config file location.

```cs
new ThemeOptions
{
    UseBuiltInSettings = false,
    // OR
    // BuiltInSettingsFileName = @"D:\test\config.json"
}
```

### TitleBarCustomization
we provide some methods for customizing TitleBar, so we can update titlebar caption buttons background/foreground:

Window: if you are using `Window` TitleBar Customizing.
AppWindow: if you are using `AppWindow` TitleBar Customizing.

```cs
new ThemeOptions
{
    TitleBarCustomization = new TitleBarCustomization
    {
        TitleBarType = TitleBarType.Window,
        CaptionButtonsColorForLightTheme = new CaptionButtons
        {

        },
        CaptionButtonsColorForDarkTheme = new CaptionButtons
        {

        },
    },
}
```

# Changing ElementTheme in Runtime
you can change ElementTheme in Runtime like this:

```cs
(Application.Current as App).themeManager.SetCurrentTheme(ElementTheme.Dark);
// (Application.Current as App).themeManager.GetCurrentTheme();

```

### Changing SystemBackdrop Type in Runtime
you can change SystemBackdrop Type in Runtime like this:

```cs
(Application.Current as App).themeManager.SetCurrentSystemBackdrop(BackdropType.Mica);
// var systemBackdrop = (Application.Current as App).themeManager.GetCurrentSystemBackdrop();
// var systemBackdrop = (Application.Current as App).themeManager.GetCurrentSystemBackdrop(WindowHelper.ActiveWindows.FirstOrDefault());

```

# Changing ElementTheme
## Auto Theme Change
### RadioButton

copy this xaml in your page:

```xml
 <StackPanel x:Name="ThemePanel" Margin="10">
    <RadioButton Tag="Light" Checked="OnThemeRadioButtonChecked" Content="Light"/>
    <RadioButton Tag="Dark" Checked="OnThemeRadioButtonChecked" Content="Dark" />
    <RadioButton Tag="Default" Checked="OnThemeRadioButtonChecked" Content="Use system setting" />
</StackPanel>
```
now call `OnThemeRadioButtonChecked` method for changing and saving application theme:
```cs
private void OnThemeRadioButtonChecked(object sender, RoutedEventArgs e)
{
    (Application.Current as App).themeManager.OnThemeRadioButtonChecked(sender);
}
```
now if you want to selecting currect radiobutton item when page is loading, you can call `SetThemeRadioButtonDefaultItem` method in Page `Loaded` event:

```cs
(Application.Current as App).themeManager.SetThemeRadioButtonDefaultItem(ThemePanel);
```

### ComboBox

copy this xaml in your page:

```xml
<ComboBox Name="cmbTheme" SelectionChanged="cmbTheme_SelectionChanged">
    <ComboBoxItem Tag="Light" Content="Light"/>
    <ComboBoxItem Tag="Dark" Content="Dark"/>
    <ComboBoxItem Tag="Default" Content="Default"/>
</ComboBox>
```
now call `OnThemeComboBoxSelectionChanged` method for changing and saving application theme:
```cs
private void cmbTheme_SelectionChanged(object sender, SelectionChangedEventArgs e)
{
    (Application.Current as App).themeManager.OnThemeComboBoxSelectionChanged(sender);
}
```
now if you want to selecting currect combobox item when page is loading, you can call `SetThemeComboBoxDefaultItem` method in Page `Loaded` event:

```cs
(Application.Current as App).themeManager.SetThemeComboBoxDefaultItem(cmbTheme);
```


## Manuel
you can change Application Theme with `RootTheme`, `ActualTheme` and `ChangeTheme` method:

```cs
(Application.Current as App).themeManager.RootTheme = ElementTheme.Dark;
//OR
(Application.Current as App).themeManager.ActualTheme = ElementTheme.Dark;
//OR
(Application.Current as App).themeManager.SetCurrentTheme(ElementTheme.Dark);
```

# Changing SystemBackdrop
## Auto SystemBackdrop Change
### RadioButton

copy this xaml in your page:

```xml
 <StackPanel x:Name="BackdropPanel" Margin="10">
    <RadioButton Tag="None" Checked="OnBackdropRadioButtonChecked" Content="None"/>
    <RadioButton Tag="Mica" Checked="OnBackdropRadioButtonChecked" Content="Mica"/>
    <RadioButton Tag="MicaAlt" Checked="OnBackdropRadioButtonChecked" Content="MicaAlt" />
    <RadioButton Tag="DesktopAcrylic" Checked="OnBackdropRadioButtonChecked" Content="DesktopAcrylic" />
</StackPanel>
```
now call `OnBackdropRadioButtonChecked` method for changing and saving application systemBackdrop:
```cs
private void OnBackdropRadioButtonChecked(object sender, RoutedEventArgs e)
{
    (Application.Current as App).themeManager.OnBackdropRadioButtonChecked(sender);
}
```
now if you want to selecting currect radiobutton item when page is loading, you can call `SetBackdropRadioButtonDefaultItem` method in Page `Loaded` event:

```cs
(Application.Current as App).themeManager.SetBackdropRadioButtonDefaultItem(BackdropPanel);
```

### ComboBox

copy this xaml in your page:

```xml
<ComboBox Name="cmbBackdrop" SelectionChanged="cmbBackdrop_SelectionChanged">
    <ComboBoxItem Tag="None" Content="None"/>
    <ComboBoxItem Tag="Mica" Content="Mica"/>
    <ComboBoxItem Tag="MicaAlt" Content="MicaAlt"/>
    <ComboBoxItem Tag="DesktopAcrylic" Content="DesktopAcrylic"/>
</ComboBox>
```
now call `OnBackdropComboBoxSelectionChanged` method for changing and saving application theme:
```cs
private void cmbBackdrop_SelectionChanged(object sender, SelectionChangedEventArgs e)
{
    (Application.Current as App).themeManager.OnBackdropComboBoxSelectionChanged(sender);
}
```
now if you want to selecting currect combobox item when page is loading, you can call `SetBackdropComboBoxDefaultItem` method in Page `Loaded` event:

```cs
(Application.Current as App).themeManager.SetBackdropComboBoxDefaultItem(cmbBackdrop);
```

## Manuel
you can change Application SystemBackdrop:

```cs
(Application.Current as App).themeManager.SetCurrentSystemBackdrop(BackdropType.Mica);
```

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.
