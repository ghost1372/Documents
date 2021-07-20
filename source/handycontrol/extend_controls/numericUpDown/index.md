---
title: NumericUpDown
---

The NumericUpDown control looks like a pair of arrow buttons and a TextBox that the user can click to adjust the value. The control displays and sets a value. The user can change the Value by clicking the up and down arrows, or by typing a number in the TextBox section of the control.

``` CS
[TemplatePart(Name = ElementTextBox, Type = typeof(DatePickerTextBox))]
public class DatePicker : System.Windows.Controls.DatePicker, IDataInput
```

# Create NumericUpDown and set Value

``` XML
<hc:NumericUpDown Value="100"/>
```

``` CS
var numericUpDown = new NumericUpDown();
numericUpDown.Value = 100;
```

The generated NumericUpDown is shown below:![NumericUpDown](https://raw.githubusercontent.com/HandyOrg/HandyOrgResource/master/HandyControl/Doc/extend_controls/NumericUpDown_1.png)

# Setting DecimalPlaces

If you need to change the number of decimal places displayed by Value, you can change DecimalPlaces. DecimalPlaces is a **int? ** Type, it does not limit the number of decimal places displayed when it is null, otherwise the displayed number of decimal places is the value of DecimalPlaces.

``` XML
<hc:NumericUpDown DecimalPlaces="2" Value="100.12345"/>
```

``` CS
numericUpDown.Value = 10.12345;
numericUpDown.DecimalPlaces = 2;
```

![NumericUpDown](https://raw.githubusercontent.com/HandyOrg/HandyOrgResource/master/HandyControl/Doc/extend_controls/NumericUpDown_2.png)

# Setting Increment

You can set the Increment to increase or decrease the number when you click the button.

``` XML
<hc:NumericUpDown Value="100" Increment="10"/>
```

``` CS
numericUpDown.Increment = 10;
```

# Set upper and lower limits

You can set the upper and lower limits of the Value by setting the Maximum and Minimum.

``` XML
<hc:NumericUpDown Maximum="500" Minimum="10"/>
```

``` CS
numericUpDown.Minimum = 10;
numericUpDown.Maximum = 1000;
```

# Set title and placeholder text

You can add Headers and Placeholders to NumericUpDown to indicate to users what they do. To use these two additional attributes, you need to apply the **NumericUpDownPlus** style first.

``` XML
                <hc:NumericUpDown ValueFormat="N2" Maximum="100000" Value="10000" Width="380" hc:InfoElement.TitleWidth="140" hc:InfoElement.Placeholder="Please enter the content" hc:InfoElement.TitlePlacement="Left" hc:InfoElement.Title="This is the title" Style="{StaticResource NumericUpDownExtend}" hc:InfoElement.Necessary="True" Margin="0,32,0,0"/>
```

![NumericUpDown](https://raw.githubusercontent.com/HandyOrg/HandyOrgResource/master/HandyControl/Doc/extend_controls/NumericUpDown_3.png)

# Attributes
| Property | Description |
| ---------------- | ------------------ |
| Value | Get or set the current value |
| Maximum | Get or Set the Maximum Allowed Value |
| Minimum | Get or set the minimum allowable value |
| Increment | Gets or sets the value that the digital display box (also known as an up-down control) increments or decrements when the up or down button is clicked. |
| DecimalPlaces | Gets or sets the decimal digits to be displayed in NumericUpDown. This property does not affect the Value property. |
| VerifyFunc | Get or Set Data Validation Delegation |
| IsError | Get or set whether the data is wrong |
| ErrorStr | Get or Set Error Alert |
| TextType | Get or Set Text Type |
| ShowClearButton | Gets or sets whether to show the clear button |
|SelectionTextBrush||
|SelectionOpacity||
|SelectionBrush||
|CaretBrushProperty||
|ValueFormat||
|ShowUpDownButton||

# Method
| Method | Description |
| ---------------- | ------------------ |
| VerifyData () | Verify Data |

# Event
| Event | Description |
| ---------------- | ------------------ |
| ValueChanged | Occurs after the Value property has been changed in some way. |