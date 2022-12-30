---
title: ThemeHelper
---

You can simplify the operation of saving, retrieving and selecting the Application theme. All operations are performed automatically.

first of all, `Initialize` ThemeHelper (Theme retrieving is done automatically by the Initialize method):

# Initialize

## 1.Initialize with Window
In this case you are Initializing a Window `(MainWindow)`

```cs
protected override void OnLaunched(Microsoft.UI.Xaml.LaunchActivatedEventArgs args)
{
    m_window = new MainWindow();
    ThemeHelper.Initialize(m_window);
    m_window.Activate();
}
```

## 2.Initialize with WindowHelper.ActiveWindows
If you used the `WindowHelper.TrackWindow` method when creating windows, you can initialize ThemeHelper like this:

```cs
protected override void OnLaunched(Microsoft.UI.Xaml.LaunchActivatedEventArgs args)
{
    m_window = new MainWindow();
    WindowHelper.TrackWindow(m_window);
    ThemeHelper.Initialize(null);
    m_window.Activate();
}
```

## 3.Initialize with SystemBackdrop (Mica/Acrylic)
You can Initialize backdrops with ThemeHelper
```cs
protected override void OnLaunched(Microsoft.UI.Xaml.LaunchActivatedEventArgs args)
{
    m_window = new MainWindow();
    ThemeHelper.Initialize(m_window, BackdropType.Mica);
    m_window.Activate();
}
```

or if you used the `WindowHelper.TrackWindow` method:

```cs
protected override void OnLaunched(Microsoft.UI.Xaml.LaunchActivatedEventArgs args)
{
    m_window = new MainWindow();
    WindowHelper.TrackWindow(m_window);
    ThemeHelper.Initialize(null, BackdropType.Mica);
    m_window.Activate();
}
```

### Changing SystemBackdrop Type in Runtime
you can change SystemBackdrop Type in Runtime like this:

```cs
ThemeHelper.SetSystemBackdropType(BackdropType.Mica);
```

### Get SystemBackdrop Type
you can get current SystemBackdrop Type.

if you initialized ThemeHelper with a specific Window, you need to use this method:
```cs
var backdropType = ThemeHelper.GetSystemBackdropType();
```

but if you initialized ThemeHelper with `WindowHelper.ActiveWindows`, you need to specify a window.

```cs
var backdropType = ThemeHelper.GetSystemBackdropType(WindowHelper.ActiveWindows.FirstOrDefault());
```

# Changing Theme
## Auto Theme Change
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
    ThemeHelper.OnThemeRadioButtonChecked(sender);
}
```
now if you want to selecting currect radiobutton item when page is loading, you can call `SetThemeRadioButtonChecked` method in Page `Loaded` event:

```cs
ThemeHelper.SetThemeRadioButtonChecked(ThemePanel);
```

## Manuel
you can change Application Theme with `RootTheme`, `ActualTheme` and `ChangeTheme` method:

```cs
ThemeHelper.RootTheme = ElementTheme.Dark;
//OR
ThemeHelper.ActualTheme = ElementTheme.Dark;
//OR
ThemeHelper.ChangeTheme(ElementTheme.Dark);
```

# Demo
you can run [demo](https://github.com/ghost1372/SettingsUI) and see this feature.
