---
title: TextBox
---

Represents a control that can be used to display or edit plain text.

``` CS
public class TextBox : System.Windows.Controls.TextBox, IDataInput
```
# Create TextBox
``` XML
<hc:TextBox />
```

``` CS
var textBox = new TextBox();
```

# Enter text
This example shows how to use the Text property to set the initial text content of a TextBox control:

``` XML
<hc:TextBox Text="This is the content"/>
```

``` CS
textBox.Text = "This is the content";
```

The generated TextBox is shown below:
![TextBox](https://raw.githubusercontent.com/HandyOrg/HandyOrgResource/master/HandyControl/Doc/extend_controls/TextBox_1.png)

For more examples of TextBox, you can refer to the [Document](https://docs.microsoft.com/en-us/dotnet/api/system.windows.controls.textbox?view=netframework-4.8) of its base class.

# Set title and placeholder text
You can add a Header and a Placeholder to a TextBox to indicate to the user its purpose. To use these two attributes

``` XML
<hc:TextBox hc:InfoElement.Placeholder="Please enter the content"
               hc:InfoElement.Title="This is the content"
```

# Attributes
| Property | Description |
| ---------------- | ------------------ |
| Text | Gets or sets the text content of the textbox. |
| VerifyFunc | Gets or sets the data validation delegate. |
| IsError | Gets or sets whether the data is wrong. |
| ErrorStr | Gets or sets the error prompt. |
| TextType | Gets or sets the text type. |
| ShowClearButton | Gets or sets whether to show the clear button. |

# Method
| Method | Description |
| ---------------- | ------------------ |
| VerifyData () | Verify the data. |

# TextType
| TextType | TextType | TextType |
| ------------------ | ------------------ | ------------------ |
| Mail               | NDouble            | Number             |
| Chinese            | NInt               | PDouble            |
| Common             | NnDouble           | PInt               |
| Digits             | NnInt              | Phone              |
| Double             | NpDouble           | Url                |
| Int                | NpInt              |                    |
| Persian `Only Custom Version`            | IranNationalCode `Only Custom Version`  |                    |

you can use regex pattern in texttype

{% note info %}
if you want to use RegexPatter, you should Set `TextType` to Anything except Common
```cs
Using HandyControl.Tools;
```
{% endnote %}

``` XML
<hc:TextBox TextType="Mail" hc:InfoElement.RegexPattern="^[0-9]*(?:\.[0-9]+)?$"/>
```