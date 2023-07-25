---
title: ThemeService
---

You can simplify the operation of saving, retrieving and selecting the Application theme. All operations are performed automatically.

# Simple Usage

First Create a new `ThemeService` then call `Initialize` method with a `window`

```cs
IThemeService themeService;

themeService = new ThemeService();
themeService.Initialize(window);
```

if you want to change autosave config file location:

```cs
themeService.Initialize(window, true, @"D:\app\config.json");
```

and if you want to save and restore theme manually you can set `useAutoSave = false`
```cs
themeService.Initialize(window, false);
```

## Config
there are some config methods:

### ConfigBackdrop

If you use the `ConfigBackdrop`, the themeService will automatically save and restore the SystemBackdrop (if useAutoSave is true)

```cs
themeService.ConfigBackdrop(BackdropType.Mica);
```

### ConfigElementTheme

If you use the `ConfigElementTheme`, the themeService will automatically save and restore the ElementTheme (if useAutoSave is true)

```cs
themeService.ConfigElementTheme(ElementTheme.Default);
```

### ConfigTitleBar

If you want to customize the titlebar, you can use `ConfigTitleBar`

```cs
themeService.ConfigTitleBar(new TitleBarCustomization
{
    TitleBarWindowType = TitleBarWindowType.AppWindow,
    LightTitleBarButtons = new TitleBarButtons
    {
        ButtonBackgroundColor = Colors.Transparent
    },
    DarkTitleBarButtons = new TitleBarButtons
    {
        ButtonBackgroundColor = Colors.Transparent
    }
});
```

#### TitleBarWindowType
|Name|
|-|
|Window|
|AppWindow|
|None|

#### TitleBarButtons
|Name|
|-|
|BackgroundColor|
|ButtonBackgroundColor|
|ForegroundColor|
|ButtonForegroundColor|
|ButtonInactiveForegroundColor|
|ButtonInactiveBackgroundColor|
|ButtonHoverBackgroundColor|
|ButtonHoverForegroundColor|
|ButtonPressedBackgroundColor|
|ButtonPressedForegroundColor|

### ConfigBackdropFallBackColorForWindow10

SystemBackdrop is not supported on windows 10, so you can set a fallback color and this color can be used in windows 10.

```cs
themeService.ConfigBackdropFallBackColorForWindow10(new SolidColorBrush(Colors.Red));
```

# MVVM Pattern


# Changing ElementTheme in Runtime
you can change ElementTheme in Runtime like this:

```cs
themeService.SetCurrentTheme(ElementTheme.Dark);
// themeService.GetCurrentTheme();

```

### Changing SystemBackdrop Type in Runtime
you can change SystemBackdrop Type in Runtime like this:

```cs
themeService.SetCurrentSystemBackdrop(BackdropType.Mica);
// var systemBackdrop = themeService.GetCurrentSystemBackdrop();
// var systemBackdrop = themeService.GetCurrentSystemBackdrop(WindowHelper.ActiveWindows.FirstOrDefault());

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
    themeService.OnThemeRadioButtonChecked(sender);
}
```
now if you want to selecting currect radiobutton item when page is loading, you can call `SetThemeRadioButtonDefaultItem` method in Page `Loaded` event:

```cs
themeService.SetThemeRadioButtonDefaultItem(ThemePanel);
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
    themeService.OnThemeComboBoxSelectionChanged(sender);
}
```
now if you want to selecting currect combobox item when page is loading, you can call `SetThemeComboBoxDefaultItem` method in Page `Loaded` event:

```cs
themeService.SetThemeComboBoxDefaultItem(cmbTheme);
```


## Manuel
you can change Application Theme with `RootTheme`, `ActualTheme` and `ChangeTheme` method:

```cs
themeService.RootTheme = ElementTheme.Dark;
//OR
themeService.ActualTheme = ElementTheme.Dark;
//OR
themeService.SetCurrentTheme(ElementTheme.Dark);
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
    themeService.OnBackdropRadioButtonChecked(sender);
}
```
now if you want to selecting currect radiobutton item when page is loading, you can call `SetBackdropRadioButtonDefaultItem` method in Page `Loaded` event:

```cs
themeService.SetBackdropRadioButtonDefaultItem(BackdropPanel);
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
    themeService.OnBackdropComboBoxSelectionChanged(sender);
}
```
now if you want to selecting currect combobox item when page is loading, you can call `SetBackdropComboBoxDefaultItem` method in Page `Loaded` event:

```cs
themeService.SetBackdropComboBoxDefaultItem(cmbBackdrop);
```

## Manuel
you can change Application SystemBackdrop:

```cs
themeService.SetCurrentSystemBackdrop(BackdropType.Mica);
```

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.
