---
title: Sprite
---

Common functions can be integrated into `Sprite` without opening the main program.

```cs
public sealed class Sprite : System.Windows.Window
```

# Method
|Name|Description|
|-|-|
| Show(object) | Use the content as the main body of the control and Pin to the desktop |

# Case

```xml
<hc:SimplePanel x:Class="HandyControlDemo.UserControl.AppSprite"
             xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
             xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
             xmlns:hc="https://handyorg.github.io/handycontrol">
    <Border Background="White" CornerRadius="20" Effect="{StaticResource EffectShadow4}">
        <Path Width="70" Height="70" Data="{StaticResource LogoGeometry}" Fill="#f06632"/>
    </Border>
    <Button Command="hc:ControlCommands.CloseWindow" CommandParameter="{Binding RelativeSource={RelativeSource Self}}" Visibility="{Binding IsMouseOver,RelativeSource={RelativeSource AncestorType=hc:SimplePanel},Converter={StaticResource Boolean2VisibilityConverter}}" Width="22" Height="22" Style="{StaticResource ButtonIcon}" Foreground="White" hc:IconElement.Geometry="{StaticResource ErrorGeometry}" Padding="0" HorizontalAlignment="Right" VerticalAlignment="Top" Margin="0,-8,-8,0"/>
</hc:SimplePanel>
```

```cs
public partial class AppSprite
{
    public AppSprite()
    {
        InitializeComponent();
    }
}
```

```cs
Sprite.Show(new AppSprite());
```