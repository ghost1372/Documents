---
title: BlurWindow
---

The background blur window can be used to enhance the UI effect, but it will sacrifice some performance.

```cs
public class BlurWindow : Window
```

{% note warning %}
Operating system support range: win10 10240 ~ win10 18362
{% endnote %}
{% note warning %}
Rewrite the resource `BlurGradientValue` to customize the blur color
{% endnote %}

{% note info %}
If you want to enable acrylic blur on unsupported builds (build >= 1903), you can use `FORCE_ENABLE_ACRYLIC_BLUR` Property.
 ```xml
 <hc:BlurWindow FORCE_ENABLE_ACRYLIC_BLUR="true"

 ```
{% endnote %}

# Case

```xml
<system:UInt32 x:Key="BlurGradientValue">0x99FFFFFF</system:UInt32>
```

```xml
<hc:BlurWindow x:Class="HandyControlDemo.Window.BlurWindow"
               xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
               xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
               xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
               xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
               xmlns:hc="https://handyorg.github.io/handycontrol"
               xmlns:langs="clr-namespace:HandyControlDemo.Properties.Langs"
               xmlns:ex="clr-namespace:HandyControlDemo.Tools.Extension"
               mc:Ignorable="d"
               Style="{StaticResource WindowBlur}"
               WindowStartupLocation="CenterScreen"
               Title="{ex:Lang Key={x:Static langs:LangKeys.Title}}"
               Height="450" 
               Width="800" 
               Icon="/HandyControlDemo;component/Resources/Img/icon.ico">
</hc:BlurWindow>
```

![BlurWindow](https://raw.githubusercontent.com/HandyOrg/HandyOrgResource/master/HandyControl/Resources/BlurWindow.png)