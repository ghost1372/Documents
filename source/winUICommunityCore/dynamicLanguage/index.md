---
title: DynamicLanguage
---

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WinUICommunity) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wuc="using:WinUICommunity"`
For use in the Csharp:
`using WinUICommunity;`
{% endnote %}

The Localizer helps you to localize your app.

- Switch languages without restarting the app
- You (users) can edit localized strings even after deployment
- You (users) can add new languages even after deployment
- Use the starndard Resources.resw
- Support Both Packaged and UnPackaged

# Quick Start
Create your resources in this format:

`Strings\en-US\Resources.resw`

`Strings\fa-IR\Resources.resw`

Go to `App.cs` file and Copy `InitializeLocalizer` method

```cs

private static string StringsFolderPath { get; set; } = string.Empty;

private async Task InitializeLocalizer(params string[] languages)
{
    // Initialize a "Strings" folder in the "LocalFolder" for the packaged app.
    if (PackageHelper.IsPackaged)
    {
        // Create string resources file from app resources if doesn't exists.
        StorageFolder localFolder = ApplicationData.Current.LocalFolder;
        StorageFolder stringsFolder = await localFolder.CreateFolderAsync(
          "Strings",
            CreationCollisionOption.OpenIfExists);
        string resourceFileName = "Resources.resw";
        foreach (var item in languages)
        {
            await LocalizerBuilder.CreateStringResourceFileIfNotExists(stringsFolder, item, resourceFileName);
        }

        StringsFolderPath = stringsFolder.Path;
    }
    else
    {
        // Initialize a "Strings" folder in the executables folder.
        StringsFolderPath = Path.Combine(AppContext.BaseDirectory, "Strings");
        var stringsFolder = await StorageFolder.GetFolderFromPathAsync(StringsFolderPath);
    }


    ILocalizer localizer = await new LocalizerBuilder()
        .AddStringResourcesFolderForLanguageDictionaries(StringsFolderPath)
        .SetOptions(options =>
        {
            options.DefaultLanguage = "en-US";
        })
        .Build();
}
```

now we need to call `InitializeLocalizer` in `OnLaunched` method:

```cs

protected override async void OnLaunched(Microsoft.UI.Xaml.LaunchActivatedEventArgs args)
{
    m_window = new MainWindow();
    
    await InitializeLocalizer("fa-IR", "en-US");

    m_window.Activate();
}
```

we need to copy our resources to output next to `Exe` file, so copy this codes and put it in `CSProj` file:

```xml
<!-- Copy the String folder to output directory -->
<ItemGroup>
  <Content Include="Strings\**\*.resw">
    <CopyToOutputDirectory>PreserveNewest</CopyToOutputDirectory>
  </Content>
</ItemGroup>
```

now in UIElement you need to set `Uid`:

```xml
<Page
    xmlns:wuc="using:WinUICommunity">

<Button wuc:Localizer.Uid="myButtonId"/>

</Page>
```

## Get Localization in Code Behind

```cs
txt.Text = Localizer.Get().GetLocalizedStrings("myButtonId").FirstOrDefault();
```

## Change Language in Runtime

```cs
Localizer.Get().SetLanguage("en-US");
```

## Multiple Resources

You can also have multiple string resources files. For example, besides the default **Resources.resw** file, you can have a **Messages.resw** for your messages file.
include `/<resources-file-name>/` before the string resource identifier.

```xml
<TextBlock wuc:Localizer.Uid="/Messages/ButtonFlyoutMessage" />
```

for more info please see [Demo](https://github.com/WinUICommunity/WinUICommunity)

![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/Localization_Demo.gif)
