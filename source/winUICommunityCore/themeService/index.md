---
title: ThemeService
---

You can simplify the operation of saving, retrieving and selecting the Application theme, backdrop and TintColors. All operations are performed automatically.

# Backdrops
|Name|
|-|
|None|
|Mica|
|MicaAlt|
|DesktopAcrylic|
|AcrylicThin|
|AcrylicBase|
|Transparent|

# Methods
|Name|
|-|
|Window|
|ConfigBackdrop|
|ConfigTintColor|
|ConfigFallbackColor|
|ConfigElementTheme|
|GetSystemBackdrop|
|GetBackdropType|
|GetElementTheme|
|GetActualTheme|
|SetBackdropType|
|SetBackdropTintColor|
|SetBackdropFallbackColor|
|SetElementTheme|
|SetElementThemeWithoutSave|
|IsDarkTheme|
|OnThemeComboBoxSelectionChanged|
|SetThemeComboBoxDefaultItem|
|OnBackdropComboBoxSelectionChanged|
|SetBackdropComboBoxDefaultItem|
|OnThemeRadioButtonChecked|
|SetThemeRadioButtonDefaultItem|
|OnBackdropRadioButtonChecked|
|SetBackdropRadioButtonDefaultItem|
|UpdateCaptionButtons|

# Simple Usage

There is multipe ways you can use ThemeService:

In this method, all settings are applied automatically.

```cs
var themeService = new ThemeService(window);
```

or

```cs
var themeService = new ThemeService();
themeService.AutoInitialize(window);
```

If you want to change some settings like autosave, file location, use `Initialize` method:

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

### ConfigTintColor
you can change system backdrop TintColor.

```cs
themeService.ConfigTintColor();
```
then you can set your tint color:

```cs
themeService.SetBackdropTintColor(Colors.Yellow);
```

### ConfigFallbackColor
you can change system backdrop FallBackColor.

```cs
themeService.ConfigFallbackColor();
```

then you can set your FallBackColor
```cs
themeService.SetBackdropFallBackColor();
```

{% note warning %}
ConfigTintColor and ConfigFallbackColor only works if you use Acrylic or Mica Backdrop.
{% endnote %}

![WinUICommunity](https://raw.githubusercontent.com/WinUICommunity/Resources/main/WinUICommunityDocs/TintColor.gif)

# Changing ElementTheme in Runtime
you can change ElementTheme in Runtime like this:

```cs
themeService.SetElementTheme(ElementTheme.Dark);
// themeService.GetElementTheme();

```

### Changing SystemBackdrop Type in Runtime
you can change SystemBackdrop Type in Runtime like this:

```cs
themeService.SetBackdropType(BackdropType.Mica);
// var systemBackdrop = themeService.GetSystemBackdrop();

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
themeService.SetElementTheme(ElementTheme.Dark);
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
    <RadioButton Checked="OnBackdropRadioButtonChecked" Content="Desktop Acrylic" Tag="DesktopAcrylic" />
    <RadioButton Checked="OnBackdropRadioButtonChecked" Content="Acrylic Base" Tag="AcrylicBase" />
    <RadioButton Checked="OnBackdropRadioButtonChecked" Content="Acrylic Thin" Tag="AcrylicThin" />
    <RadioButton Checked="OnBackdropRadioButtonChecked" Content="Transparent" Tag="Transparent" />
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
    <ComboBoxItem Tag="DesktopAcrylic" Content="Desktop Acrylic"/>
    <ComboBoxItem Tag="AcrylicBase" Content="Acrylic Base"/>
    <ComboBoxItem Tag="AcrylicThin" Content="Acrylic Thin"/>
    <ComboBoxItem Tag="Transparent" Content="Transparent"/>
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
themeService.SetBackdropType(BackdropType.Mica);
```

# MVVM Pattern
first register a `IThemeService` service:

```cs
services.AddSingleton<IThemeService, ThemeService>();
```
then in your `App.xaml.cs`


```cs
var themeService = GetService<IThemeService>() as ThemeService;
if (themeService != null)
{
    themeService.AutoInitialize(Window);
}
```

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.
