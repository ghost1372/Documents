---
title: Button
---

# ButtonBaseStyle : ButtonBaseBaseStyle

The default style of the button is not recommended for direct use and should always be used by other styles in the BasedOn mode.

{% note info %}
All buttons that inherit this style can use the additional properties defined in `IconElement` to control the properties of the geometry in the button.
{% endnote %}

{% note info %}
All buttons that inherit this style can use the `BorderElement.CornerRadius` attached property to control the fillet size of the button.
{% endnote %}

{% note info no-icon %}
Example:

{% code lang:xml %}
<StackPanel Orientation="Horizontal">
  <Button Content="This is a button"/>
  <Button Content="This is a button" Margin="10,0,0,0" controls:BorderElement.CornerRadius="15"/>
  <Button Content="This is a button" Margin="10,0,0,0"
controls:IconElement.Geometry="{StaticResource GithubGeometry}"/>
</StackPanel>
{% endcode %}

![ButtonBaseStyle](https://raw.githubusercontent.com/HandyOrg/HandyOrgResource/master/HandyControl/Doc/native_controls/ButtonBaseStyle_1.png)

{% endnote %}

# ButtonPrimary : ButtonBaseStyle

Main Button

{% note info no-icon %}
Example:

{% code lang:xml %}
<StackPanel Orientation="Horizontal">
   <Button Style="{StaticResource ButtonPrimary}" Content="This is a button"/>
   <Button Style="{StaticResource ButtonPrimary}" Content="This is a button" Margin="10,0,0,0" controls:BorderElement.CornerRadius="15"/>
   <Button Style="{StaticResource ButtonPrimary}" Content="This is a button" Margin="10,0,0,0" controls:IconElement.Geometry="{StaticResource GithubGeometry}"/>
</StackPanel>
{% endcode %}

![ButtonPrimary](https://raw.githubusercontent.com/HandyOrg/HandyOrgResource/master/HandyControl/Doc/native_controls/ButtonPrimary_1.png)

{% endnote %}

# ButtonSuccess : ButtonBaseStyle

Success button

{% note info no-icon %}
Example：

{% code lang:xml %}
<StackPanel Orientation="Horizontal">
   <Button Style="{StaticResource ButtonSuccess}" Content="This is a button"/>
   <Button Style="{StaticResource ButtonSuccess}" Content="This is a button" Margin="10,0,0,0" controls:BorderElement.CornerRadius="15"/>
   <Button Style="{StaticResource ButtonSuccess}" Content="This is a button" Margin="10,0,0,0" controls:IconElement.Geometry="{StaticResource GithubGeometry}"/>
</StackPanel>
{% endcode %}

![ButtonSuccess](https://raw.githubusercontent.com/HandyOrg/HandyOrgResource/master/HandyControl/Doc/native_controls/ButtonSuccess_1.png)

{% endnote %}

# ButtonInfo : ButtonBaseStyle

Information button

{% note info no-icon %}
Example：

{% code lang:xml %}
<StackPanel Orientation="Horizontal">
  <Button Style="{StaticResource ButtonInfo}" Content="This is a button"/>
  <Button Style="{StaticResource ButtonInfo}" Content="This is a button" Margin="10,0,0,0" controls:BorderElement.CornerRadius="15"/>
  <Button Style="{StaticResource ButtonInfo}" Content="This is a button" Margin="10,0,0,0" controls:IconElement.Geometry="{StaticResource GithubGeometry}"/>
</StackPanel>
{% endcode %}

![ButtonInfo](https://raw.githubusercontent.com/HandyOrg/HandyOrgResource/master/HandyControl/Doc/native_controls/ButtonInfo_1.png)

{% endnote %}

# ButtonWarning : ButtonBaseStyle

Warning button

{% note info no-icon %}
Example：

{% code lang:xml %}
<StackPanel Orientation="Horizontal">
    <Button Style="{StaticResource ButtonWarning}" Content="This is a button"/>
    <Button Style="{StaticResource ButtonWarning}" Content="This is a button" Margin="10,0,0,0" controls:BorderElement.CornerRadius="15"/>
    <Button Style="{StaticResource ButtonWarning}" Content="This is a button" Margin="10,0,0,0" controls:IconElement.Geometry="{StaticResource GithubGeometry}"/>
</StackPanel>
{% endcode %}

![ButtonWarning](https://raw.githubusercontent.com/HandyOrg/HandyOrgResource/master/HandyControl/Doc/native_controls/ButtonWarning_1.png)

{% endnote %}

# ButtonDanger : ButtonBaseStyle

Danger button

{% note info no-icon %}
Example：

{% code lang:xml %}
<StackPanel Orientation="Horizontal">
    <Button Style="{StaticResource ButtonDanger}" Content="This is a button"/>
    <Button Style="{StaticResource ButtonDanger}" Content="This is a button" Margin="10,0,0,0" controls:BorderElement.CornerRadius="15"/>
    <Button Style="{StaticResource ButtonDanger}" Content="This is a button" Margin="10,0,0,0" controls:IconElement.Geometry="{StaticResource GithubGeometry}"/>
</StackPanel>
{% endcode %}

![ButtonDanger](https://raw.githubusercontent.com/HandyOrg/HandyOrgResource/master/HandyControl/Doc/native_controls/ButtonDanger_1.png)

{% endnote %}

# ButtonViolet : ButtonBaseStyle

Violet button
{% note info no-icon %}
Only Custom Version
{% endnote %}

{% note info no-icon %}
Example：

{% code lang:xml %}
<StackPanel Orientation="Horizontal">
    <Button Style="{StaticResource ButtonViolet}" Content="This is a button"/>
    <Button Style="{StaticResource ButtonViolet}" Content="This is a button" Margin="10,0,0,0" controls:BorderElement.CornerRadius="15"/>
    <Button Style="{StaticResource ButtonViolet}" Content="This is a button" Margin="10,0,0,0" controls:IconElement.Geometry="{StaticResource GithubGeometry}"/>
</StackPanel>
{% endcode %}

{% endnote %}

# ButtonDefault : ButtonBaseStyle

Default button

{% note info no-icon %}
Example：

{% code lang:xml %}
<StackPanel Orientation="Horizontal">
    <Button Style="{StaticResource ButtonDefault}" Content="This is a button"/>
    <Button Style="{StaticResource ButtonDefault}" Content="This is a button" Margin="10,0,0,0" controls:BorderElement.CornerRadius="15"/>
    <Button Style="{StaticResource ButtonDefault}" Content="This is a button" Margin="10,0,0,0" controls:IconElement.Geometry="{StaticResource GithubGeometry}"/>
</StackPanel>
{% endcode %}

{% endnote %}

# ButtonIcon : ButtonBaseStyle

This style is recommended if you only want to display the geometry button.

{% note info no-icon %}
Example：

{% code lang:xml %}
<StackPanel Orientation="Horizontal">
    <Button Style="{StaticResource ButtonIcon}" Foreground="Black" controls:IconElement.Geometry="{StaticResource UpDownGeometry}"/>
    <Button Style="{StaticResource ButtonIcon}" Background="Black" Foreground="White" controls:BorderElement.CornerRadius="15" controls:IconElement.Geometry="{StaticResource UpDownGeometry}" Margin="10,0,0,0"/>
    <Button Style="{StaticResource ButtonIcon}" BorderThickness="1" BorderBrush="Black" Foreground="Black" controls:IconElement.Geometry="{StaticResource UpDownGeometry}" Margin="10,0,0,0"/>
</StackPanel>
{% endcode %}

![ButtonIcon](https://raw.githubusercontent.com/HandyOrg/HandyOrgResource/master/HandyControl/Doc/native_controls/ButtonIcon_1.png)

{% endnote %}

# ButtonCustom

This style is recommended if you want to fully customize the content of the button. The content in `ButtonCustom` is entirely up to you. In addition, you can switch the background with additional properties in `BackgroundSwitchElement`:

{% note info no-icon %}
Example：

{% code %}
<Button Height="30" Padding="10,0" Background="Black" Foreground="White" Content="This is a button" Style="{StaticResource ButtonCustom}" controls:BackgroundSwitchElement.MouseHoverBackground="Red" controls:BackgroundSwitchElement.MouseDownBackground="PaleVioletRed"/>
{% endcode %}

![ButtonCustom](https://raw.githubusercontent.com/HandyOrg/HandyOrgResource/master/HandyControl/Doc/native_controls/ButtonCustom_1.gif)

{% endnote %}

# Styles
| Style |
| - |
| ButtonPrimary  | 
| ButtonInfo  | 
| ButtonDanger  | 
| ButtonWarning  | 
| ButtonViolet (Only Custom Version) | 
| ButtonDefault | 
| ButtonSuccess  | 
| ButtonIcon  | 
| ButtonIconCircular  | 
| ButtonDashed  | 
| ButtonDashedPrimary  | 
| ButtonDashedSuccess  | 
| ButtonDashedInfo  | 
| ButtonDashedWarning  | 
| ButtonDashedDanger  | 
| ButtonCustom  | 
| ButtonGroupItemDefault  | 
| ButtonGroupItemHorizontalFirst  | 
| ButtonGroupItemHorizontalLast  | 
| ButtonGroupItemSingle |
| ButtonGroupItemVerticalFirst |
| ButtonGroupItemVerticalLast |
