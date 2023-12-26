---
title: Extensions
---

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WinUICommunity) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wuc="using:WinUICommunity"`
For use in the Csharp:
`using WinUICommunity;`
{% endnote %}

# ContentDialogExtension

By default, only 1 ContentDialog can be opened, with the help of this extension you can open multiple ContentDialogs.

```cs
ContentDialog dialog = new ContentDialog()
{
    Title = "Title",
    Content = "Content",
    PrimaryButtonText = "OK",
    CloseButtonText = "Cancel",
    DefaultButton = ContentDialogButton.Primary,
    XamlRoot = xamlRoot
};
var result = await dialog.ShowAsyncQueue();
```

# ShowAsyncDraggable
# ShowAsyncQueueDraggable

# DependencyObjectExtensions

# FrameworkElementExtensions

# DictionaryExtensions

# ListExtensions

# MergedDictionariesExtensions
# EnumValuesExtension
Assuming we had an Animal enum type and we wanted the user to pick one of the available names, here is the XAML syntax that allows us to create a ComboBox and display all Animal values, directly from XAML and with no code-behind:

```cs
<ComboBox
    xmlns:wuc="using:WinUICommunity"
    xmlns:enums="using:MyApplication.Enums"
    ItemsSource="{wuc:EnumValues Type=enums:Animal}"
    SelectedIndex="0"/>

```

![WinUICommunity](https://raw.githubusercontent.com/WinUICommunity/Resources/main/WinUICommunityDocs/EnumValueEx.png)


# ListViewExtension
## AlternateColor

```xml
<ListView
    wuc:ListViewExtensions.AlternateColor="Silver"
    ItemsSource="{x:Bind MainViewModel.Items, Mode=OneWay}" />
```

```xml
<Page.Resources>
    <DataTemplate x:Name="NormalTemplate">
        <TextBlock Text="{Binding " Foreground="Green"></TextBlock>
    </DataTemplate>
    
    <DataTemplate x:Name="AlternateTemplate">
        <TextBlock Text="{Binding}" Foreground="Orange"></TextBlock>
    </DataTemplate>
</Page.Resources>

<ListView
    ItemTemplate="{StaticResource NormalTemplate}"
    wuc:ListViewExtensions.AlternateItemTemplate="{StaticResource AlternateTemplate}"
    ItemsSource="{x:Bind MainViewModel.Items, Mode=OneWay}" />
```
## AlternateItem
## Command
```xml
<ListView
    wuc:ListViewExtensions.Command="{x:Bind MainViewModel.ItemSelectedCommand, Mode=OneWay}"
    IsItemClickEnabled="True"
    ItemsSource="{x:Bind MainViewModel.Items, Mode=OneWay}"
    SelectionMode="None" />
```
## DeselectItem
## DeselectAll
## SelectAllSafe
## SmoothScrollIntoView

```cs
await listView.SmoothScrollIntoViewWithIndexAsync(listView.SelectedIndex, ScrollItemPlacement.Center, false, true);

```

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.