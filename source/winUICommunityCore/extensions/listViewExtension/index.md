---
title: ListViewExtension
---

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