---
title: Watermark
---

You can create a tiled background with the specified content.

```cs
[TemplatePart(Name = ElementRoot, Type = typeof(Border))]
[ContentProperty(nameof(Content))]
public class Watermark : Control
```

# Attributes
|Property|Description|Default Value|Remarks|
|-|-|-|-|
|Angle|Watermark rotation angle|20|provided by default style|
|Content|Content that needs to use watermark|||
|Mark|Watermark|||
|MarkWidth|Watermark width|0||
|MarkHeight|Watermark height|0||
|MarkBrush|Watermark color|||
|AutoSizeEnabled|Whether the watermark is automatically adapted to the size|true||
|MarkMargin|Watermark Margin||||

# Case

```xml
<hc:Watermark Mark="Project" FontSize="80" FontWeight="Bold" MarkMargin="30,0"/>
```
![Watermark](https://raw.githubusercontent.com/HandyOrg/HandyOrgResource/master/HandyControl/Doc/extend_controls/Watermark_1.png)

```xml
<hc:Watermark Mark="{StaticResource GitHubStrGeometry}" MarkMargin="30,0" MarkWidth="200" MarkHeight="100"/>
```

![Watermark](https://raw.githubusercontent.com/HandyOrg/HandyOrgResource/master/HandyControl/Doc/extend_controls/Watermark_2.png)