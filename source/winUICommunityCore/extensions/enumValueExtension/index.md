---
title: EnumValuesExtension
---

Assuming we had an Animal enum type and we wanted the user to pick one of the available names, here is the XAML syntax that allows us to create a ComboBox and display all Animal values, directly from XAML and with no code-behind:

```xml
<ComboBox
    xmlns:wuc="using:WinUICommunity"
    xmlns:enums="using:MyApplication.Enums"
    ItemsSource="{wuc:EnumValues Type=enums:Animal}"
    SelectedIndex="0"/>

```

![WinUICommunity](https://raw.githubusercontent.com/WinUICommunity/Resources/main/WinUICommunityDocs/EnumValueEx.png)



# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.