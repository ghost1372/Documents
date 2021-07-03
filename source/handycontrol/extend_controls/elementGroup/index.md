---
title: ElementGroup 
---

Easily extend controls by adding textbox, buttons... on either side.


```c#
public class ElementGroup : SimpleStackPanel
```

# Case

```xml
<StackPanel Margin="32" VerticalAlignment="Center">
    <hc:ElementGroup Orientation="Horizontal">
        <Border Style="{StaticResource BorderRegion}" Padding="6,0">
            <Path Data="{StaticResource ClockGeometry}" Width="16" Height="16" Stretch="Uniform" Fill="{DynamicResource BorderBrush}"/>
        </Border>
        <TextBox MinWidth="200"/>
        <Button Content="Button"/>
        <ToggleButton Content="ToggleButton"/>
    </hc:ElementGroup>
    <hc:ElementGroup Margin="0,16,0,0">
        <TextBox/>
        <Button HorizontalAlignment="Stretch" Width="auto" Content="Button"/>
        <ToggleButton HorizontalAlignment="Stretch" Width="auto" Content="ToggleButton"/>
    </hc:ElementGroup>
</StackPanel>
```

![ElementGroup](https://raw.githubusercontent.com/HandyOrg/HandyOrgResource/master/HandyControl/Resources/ElementGroup.png)