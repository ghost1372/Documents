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

Go to `App.cs` file and Create a new Instance of Localizer:

```cs
public App()
{
  InitializeComponent();
  string resourcesFolderPath = Path.Combine(Directory.GetCurrentDirectory(), "Strings");

  // For packaged app:
  //string resourcesFolderPath = @"C:\\Projects\\Strings";

  _ = Localizer.Create(resourcesFolderPath);
}
```

{% note warning %}
for `Packaged` mode you need to change `ResourcesFolderPath`
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
Call `InitializeWindow`:

```cs
public MainWindow()
{
    this.InitializeComponent();
    Localizer.Get().InitializeWindow(Root, Content);
}
```

## Change Language in Runtime

```cs
Localizer.Get().TrySetCurrentLanguage("en-US");
```

{% note warning %}
if you cant see translation in Pages after Navigation you need to Call `RunLocalizationOnRegisteredRootElements` or `RunLocalization` method in `Loaded` event in page

{% code lang:csharp %}
private void DynamicLanguagePage_Loaded(object sender, Microsoft.UI.Xaml.RoutedEventArgs e)
{
  Localizer.Get().RunLocalization(Root);

  //OR
  // Localizer.Get().RunLocalizationOnRegisteredRootElements();
}
{% endcode %}
{% endnote %}

for more info please see [Demo](https://github.com/ghost1372/SettingsUI)

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/Localization_Demo.gif)
