---
title: DynamicLanguage
---

The Localizer helps you to localize your app.

- Switch languages without restarting the app
- You (users) can edit localized strings even after deployment
- You (users) can add new languages even after deployment
- Use the starndard Resources.resw

# Quick Start
Create your resources in this format:

`Strings\en-US\Resources.resw`

`Strings\fa-IR\Resources.resw`

now Create a `Static` Helper Class for example, `DynamicLanguageHelper.cs` and Create a new static Instance of Localizer:

```cs
public static class DynamicLanguageHelper
{
    //for UnPackaged App
    public static string resourcesFolderPath = Path.Combine(Directory.GetCurrentDirectory(), "Strings");
    public static Localizer Localizer { get; set; } = Localizer.GetCurrent(resourcesFolderPath);
}
```

{% note warning %}
this Helper Class only work in `UnPackaged` Mode, for `Packaged` mode you need to change `ResourcesFolderPath`
{% endnote %}

we need to copy our resources to output next to `Exe` file, so copy this codes and put it in `CSProj` file:

```xml
<!-- Copy the String folder to output directory -->
  <Target Name="CopyStringResources" AfterTargets="Build">
    <ItemGroup>
      <StringResources Include="$(ProjectDir)Strings\**\*.*" />
    </ItemGroup>
    <Copy SourceFiles="@(StringResources)" DestinationFiles="$(OutDir)Strings\%(RecursiveDir)%(Filename)%(Extension)" />
  </Target>
```

now we need to Initialize `MainWindow`:

```xml
<!-- in MainWindow set Grid name to Root -->
<Window>
    <Grid Name="Root">
    ...
    </Grid>
</Window>
```

```cs
DynamicLanguageHelper.Localizer.InitializeWindow(Root, Content);
```

## Change Language in Runtime

```cs
 DynamicLanguageHelper.Localizer.TrySetCurrentLanguage("en-US");
 // OR
 DynamicLanguageHelper.Localizer.SetCurrentLanguage("fa-IR");
```

{% note warning %}
if you cant see translation in Pages you need to Call `RunLocalizationOnRegisteredRootElements` method in `Loaded` event in page

{% code lang:csharp %}
private void DynamicLanguagePage_Loaded(object sender, Microsoft.UI.Xaml.RoutedEventArgs e)
{
    DynamicLanguageHelper.Localizer.RunLocalizationOnRegisteredRootElements();
}
{% endcode %}
{% endnote %}

for more info please see [Demo](https://github.com/ghost1372/SettingsUI)

# How to Use with MVVM

for more info please refer to this [Page](https://github.com/AndrewKeepCoding/AK.Toolkit)

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/Localization_Demo.gif)
