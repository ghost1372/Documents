---
title: ThemeHelper
---

You can simplify the operation of saving, retrieving and selecting the Application theme, All operations are performed automatically.

first of all, `Initialize` ThemeHelper (Theme retrieving is done automatically by the Initialize method):

```cs
protected override void OnLaunched(Microsoft.UI.Xaml.LaunchActivatedEventArgs args)
{
    m_window = new MainWindow();
    ThemeHelper.Initialize(m_window);
    m_window.Activate();
}
```

{% note info %}
if you want to activate mica with ThemeHelper, you want Initialize this way:
```cs
ThemeHelper.Initialize(m_window, true);
```
{% endnote %}

copy this xaml in your page:
```xml
 <StackPanel x:Name="ThemePanel" Margin="10">
    <RadioButton Tag="Light" Checked="OnThemeRadioButtonChecked" Content="Light"/>
    <RadioButton Tag="Dark" Checked="OnThemeRadioButtonChecked" Content="Dark" />
    <RadioButton Tag="Default" Checked="OnThemeRadioButtonChecked" Content="Use system setting" />
</StackPanel>
```
now call `OnThemeRadioButtonChecked` method for change and save application theme:
```cs
private void OnThemeRadioButtonChecked(object sender, RoutedEventArgs e)
{
    ThemeHelper.OnThemeRadioButtonChecked(sender);
}
```
now call `SetThemeRadioButtonChecked` method for selecting currect radiobutton item when page is loading:
```cs
ThemeHelper.SetThemeRadioButtonChecked(ThemePanel);
```

# Demo
you can run [demo](https://github.com/ghost1372/SettingsUI) and see this feature.
