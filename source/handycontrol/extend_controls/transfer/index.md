---
title: Transfer
---

The shuttle selection box uses an intuitive way to move elements in the two columns to complete the selection behavior.

```cs
[DefaultProperty("Items")]
[ContentProperty("Items")]
[TemplatePart(Name = ElementPanel, Type = typeof(Panel))]
public class SimpleItemsControl : Control
```

```cs
[TemplatePart(Name = ElementItemsOrigin, Type = typeof(SimpleItemsControl))]
[TemplatePart(Name = ElementItemsSelected, Type = typeof(SimpleItemsControl))]
public class Transfer : SimpleItemsControl
```

# Attributes
|Property|Description|Default Value|Remarks|
|-|-|-|-|
|SelectedItems|Selected Items||||

# Events
|Name|Description|
|-|-|
| SelectionChanged | Triggered when the selected item changes |

# Case

```xml
<hc:Transfer ItemsSource="{Binding DataList}" Margin="32" Height="300">
    <hc:Transfer.ItemTemplate>
        <DataTemplate>
            <TextBlock Text="{Binding Name}"/>
        </DataTemplate>
    </hc:Transfer.ItemTemplate>
</hc:Transfer>
```
![Transfer](https://raw.githubusercontent.com/HandyOrg/HandyOrgResource/master/HandyControl/Resources/Transfer.png)