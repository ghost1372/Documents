---
title: ThemeManager
---

You can simplify the operation of saving, retrieving and selecting the Application theme. All operations are performed automatically.

{% note info %}
Theme retrieving/Saving is done automatically.
{% endnote %}

# Available Features

- Set SystemBackdrop (Mica/MicaAlt/Acrylic)
- Set ElementTheme (Dark/Light/Default)
- Set SetPreferredAppMode (System ContextMenu Theme : Right Click on TitleBar)
- ActualThemeChanged Event
- 3 way to Use ThemeManager (Singleton, Builder, Normal use)

# Quick Start 1 : Singleton

```cs
public static ThemeManager themeManager { get; private set; }

protected override void OnLaunched(Microsoft.UI.Xaml.LaunchActivatedEventArgs args)
{
    m_window = new MainWindow();
    themeManager = ThemeManager.Initialize(m_window);
    m_window.Activate();
}
```

## SystemBackdrops

just add backdrop type:

```cs
themeManager = ThemeManager.Initialize(m_window, BackdropType.MicaAlt);
```

## Default Theme

```cs
themeManager = ThemeManager.Initialize(m_window, ElementTheme.Dark);

```

## SystemBackdrops/Theme

```cs
themeManager = ThemeManager.Initialize(m_window, ElementTheme.Dark, BackdropType.MicaAlt);

```

## ActiveWindows/TrackWindow
if you are using `WindowHelper.TrackWindow/ActiveWindows` Methods, you can use our other methods:

```cs
WindowHelper.TrackWindow(m_window);

themeManager = ThemeManager.Initialize();

// OR

themeManager = ThemeManager.Initialize(ElementTheme.Dark);

// OR

themeManager = ThemeManager.Initialize(BackdropType.MicaAlt);

// OR

themeManager = ThemeManager.Initialize(ElementTheme.Dark, BackdropType.MicaAlt);

```

# Quick Start 2 : Builder

```cs
public static ThemeManager themeManager { get; private set; }

protected override void OnLaunched(Microsoft.UI.Xaml.LaunchActivatedEventArgs args)
{
    m_window = new MainWindow();
    themeManager = ThemeManager.GetCurrent().
                                UseWindow(m_window).
                                Build();
    m_window.Activate();
}
```
## SystemBackdrops

```cs
themeManager = ThemeManager.GetCurrent().
                            UseWindow(m_window).
                            UseBackdrop(BackdropType.Mica).
                            Build();
```

## Default Theme

```cs
themeManager = ThemeManager.GetCurrent().
                                UseWindow(m_window).
                                UseTheme(ElementTheme.Dark).
                                Build();
```

## SystemBackdrops/Theme

```cs
themeManager = ThemeManager.GetCurrent().
                                UseWindow(m_window).
                                UseBackdrop(BackdropType.Mica).
                                UseTheme(ElementTheme.Dark).
                                Build();
```

## ActiveWindows/TrackWindow

{% note warning %}
if you are using `WindowHelper.TrackWindow/ActiveWindows` Methods, you should use `BuildWithoutWindow` method instead of `Build`.
{% endnote %}

```cs
WindowHelper.TrackWindow(m_window);

themeManager = ThemeManager.GetCurrent().
                            BuildWithoutWindow();

// OR

themeManager = ThemeManager.GetCurrent().
                            UseTheme(ElementTheme.Dark).
                            BuildWithoutWindow();
// OR

themeManager = ThemeManager.GetCurrent().
                            UseBackdrop(BackdropType.Mica).
                            BuildWithoutWindow();
// OR

themeManager = ThemeManager.GetCurrent().
                            UseBackdrop(BackdropType.Mica).
                            UseTheme(ElementTheme.Dark).
                            BuildWithoutWindow();
```

# Quick Start 3

in this way you are not using singleton so you can initialize every windows you want!
```cs
public static ThemeManager themeManager { get; private set; }

protected override void OnLaunched(Microsoft.UI.Xaml.LaunchActivatedEventArgs args)
{
    m_window = new MainWindow();
    themeManager = new ThemeManager(m_window);
    m_window.Activate();
}
```
## SystemBackdrops

just add backdrop type:

```cs
themeManager = new ThemeManager(m_window, BackdropType.MicaAlt);
```

## Default Theme

```cs
themeManager = new ThemeManager(m_window, ElementTheme.Dark);

```

## SystemBackdrops/Theme

```cs
themeManager = new ThemeManager(m_window, ElementTheme.Dark, BackdropType.MicaAlt);

```

## ActiveWindows/TrackWindow
if you are using `WindowHelper.TrackWindow/ActiveWindows` Methods, you can use our other methods:

```cs
WindowHelper.TrackWindow(m_window);

themeManager = new ThemeManager(null);

// OR

themeManager = new ThemeManager(ElementTheme.Dark);

// OR

themeManager = new ThemeManager(BackdropType.MicaAlt);

// OR

themeManager = new ThemeManager(ElementTheme.Dark, BackdropType.MicaAlt);

```

# Changing SystemBackdrop Type in Runtime
## Set SystemBackdrop Type
you can change SystemBackdrop Type in Runtime like this:

```cs
App.themeManager.SetSystemBackdropType(BackdropType.Mica);
```

## Get SystemBackdrop Type
you can get current SystemBackdrop Type.

if you initialized ThemeManager with a specific Window, you need to use this method:
```cs
var backdropType = App.themeManager.GetSystemBackdropType();
```

but if you initialized ThemeHelper with `WindowHelper.ActiveWindows`, you need to specify a window.

```cs
var backdropType = App.themeManager.GetSystemBackdropType(WindowHelper.ActiveWindows.FirstOrDefault());
```

# Changing Application Theme in Runtime

## Auto Theme Change
copy this xaml in your page:

### RadioButton

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
    App.themeManager.OnThemeRadioButtonChecked(sender);
}
```
now if you want to selecting currect radiobutton item when page is loading, you can call `SetThemeRadioButtonChecked` method in Page `Loaded` event:

```cs
App.themeManager.SetThemeRadioButtonChecked(ThemePanel);
```

### ComboBox

```xml
<ComboBox Name="cmbTheme" SelectionChanged="OnComboBoxSelectionChanged">
    <ComboBoxItem Tag="Light" Content="Light"/>
    <ComboBoxItem Tag="Dark" Content="Dark"/>
    <ComboBoxItem Tag="Default" Content="Default"/>
</ComboBox>
```
now call `OnComboBoxSelectionChanged` method for changing and saving application theme:
```cs
private void OnComboBoxSelectionChanged(object sender, RoutedEventArgs e)
{
    App.themeManager.OnComboBoxSelectionChanged(sender);
}
```
now if you want to selecting currect combobox item when page is loading, you can call `SetComboBoxDefaultItem` method in Page `Loaded` event:

```cs
App.themeManager.SetComboBoxDefaultItem(cmbTheme);
```

## Manuel
you can change Application Theme with `RootTheme`, `ActualTheme` and `ChangeTheme` method:

```cs
App.themeManager.ChangeTheme(ElementTheme.Dark);

// OR

App.themeManager.RootTheme = ElementTheme.Dark;

//OR

App.themeManager.ActualTheme = ElementTheme.Dark;
```

# Demo
you can run [demo](https://github.com/WinUICommunity/DemoApp) and see this feature.
