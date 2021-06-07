---
title: TabControl
---

# TabControlBaseStyle

The default style of the tabcontrol is not recommended. It should always be used by other styles as BasedOn.

Case:

 ```xml
<TabControl Margin="10">
    <TabItem Header="Tab 1">
    </TabItem>
    <TabItem Header="Tab 2">
    </TabItem>
    <TabItem Header="Tab 3">
    </TabItem>
</TabControl>
 ```

effect::

![TabControl.DefaultStyle](https://raw.githubusercontent.com/HandyOrg/HandyOrgResource/master/HandyControl/Doc/native_controls/TabControl.DefaultStyle.png)

# TabControlInLine : TabControlBaseStyle

Single line fill tab style

Case:

```xml
<TabControl Margin="10" Style="{StaticResource TabControlInLine}">
    <TabItem Header="Tab 1">
    </TabItem>
    <TabItem Header="Tab 2">
    </TabItem>
    <TabItem Header="Tab 3">
    </TabItem>
</TabControl>
```

effect::

![TabControl.InLineStyle](https://raw.githubusercontent.com/HandyOrg/HandyOrgResource/master/HandyControl/Doc/native_controls/TabControl.InLineStyle.png)

# TabControlCapsule

Capsule tab style

Case:

```xml
<TabControl Margin="10" Style="{StaticResource TabControlCapsule}">
    <TabItem Header="Tab 1">
    </TabItem>
    <TabItem Header="Tab 2">
    </TabItem>
    <TabItem Header="Tab 3">
    </TabItem>
</TabControl>
```

effect::

![TabControl.CapsuleStyle](https://raw.githubusercontent.com/HandyOrg/HandyOrgResource/master/HandyControl/Doc/native_controls/TabControl.CapsuleStyle.png)

# TabControlCapsuleSolid : TabControlCapsule

Capsule (solid) tab style

Case:

```xml
<TabControl Margin="10" Style="{StaticResource TabControlCapsuleSolid}">
    <TabItem Header="Tab 1">
    </TabItem>
    <TabItem Header="Tab 2">
    </TabItem>
    <TabItem Header="Tab 3">
    </TabItem>
</TabControl>
```

effect::

![TabControl.CapsuleSolidStyle](https://raw.githubusercontent.com/HandyOrg/HandyOrgResource/master/HandyControl/Doc/native_controls/TabControl.CapsuleSolidStyle.png)

# Tips

You can use the property `TabStripPlacement` to set the position of the header title, the effect is as follows:

# TabItemTransparentStyle `Only Custom Version`
``` xml
<TabControl>
    <TabItem Header="Test" Style={StaticResource TabItemTransparentStyle}>
</TabControl>
```

![TabControl.TabStripPlacement](https://raw.githubusercontent.com/HandyOrg/HandyOrgResource/master/HandyControl/Doc/native_controls/TabControl.TabStripPlacement.png)