---
title: JsonFile
---

To navigate to the pages, you must set the `UniqueId`, here you must write the exact address of your page

```cs
WinUICommunity.DemoApp.Pages.ApplicationDataContainerPage
```

{% note info %}
If you do not set the ApiNamespace, we will load the default assembly and we will find your page (uniqueId). Therefore, if your page is located in another location (outside the default assembly of the app), you must specify the ApiNamespace
{% endnote %}

# DataGroup
## Available Properties in Json (Groups)
|Name|Example|Detail|
|-|-|-|
|UniqueId|WinUICommunity.DemoApp.Pages.ApplicationDataContainerPage|Full address to a Page in Project|
|SectionId|WinUICommunity.DemoApp.Pages.mySectionPage|Full address to a SectionPage in Project|
|Title|Features pages|Top Level Menu Item|
|SecondaryTitle|anything||
|ApiNamespace|WinUICommunity.DemoApp|Application Namespace|
|Subtitle|anything||
|ImagePath|ms-appx:///Assets/Modules/PT.png||
|IconGlyph|E946 or ||
|Description|anything||
|IsSpecialSection|false||
|HideGroup|false|Hide or Show a Group with Items|
|IsExpanded|true|If it is true NavigationViewItem will be expanded|
|Items||See Below|
|DataInfoBadge||See Below|
|ShowItemsWithoutGroup|true|if you set this to true, all items of the group will be added directly to the NavigationView|
|IsFooterNavigationViewItem|true|if you set this to true, item will be added into navigationView FooterMenuItems|
|IsNavigationViewItemHeader|false|if you set this to true, item will be added as NavigationViewItemHeader|
|Order|false|if you set this to true, items will be Sorted by Ascending|
|OrderByDescending|false|if you set this to true, items will be Sorted by Descending|


# DataItem
## Available Properties in Json (Items)
|Name|Example|Detail|
|-|-|-|
|UniqueId|WinUICommunity.DemoApp.Pages.ApplicationDataContainerPage|Full address to a Page in Project|
|SectionId|WinUICommunity.DemoApp.Pages.mySectionPage|Full address to a SectionPage in Project|
|Title|Features pages|Top Level Menu Item|
|SecondaryTitle|anything||
|ApiNamespace|WinUICommunity.DemoApp|Application Namespace|
|Parameter|true|anything|
|Subtitle|anything||
|ImagePath|ms-appx:///Assets/Modules/PT.png||
|IconGlyph|E946 or ||
|Description|anything||
|Content|anything||
|IsNew|true|if set true you can filter items based on new items|
|IsUpdated|true|if set true you can filter items based on updated items|
|IsPreview|true|if set true you can filter items based on preview items|
|IsNavigationViewItemHeader|false|if you set this to true, item will be added as NavigationViewItemHeader|
|IncludedInBuild|false|if set true item will be enabled|
|HideItem|false|if set true item will be hide|
|HideNavigationViewItem|false|if set true item will be hide|
|Items|||
|Links||See Below|
|Extra||See Below|
|DataInfoBadge||See Below|

{% note warning %}
only one of this proeprties `IsNew`, `IsUpdated` and `IsPreview` can be `true`
{% endnote %}

## Available Properties in Json (Links)
|Name|Example|Detail|
|-|-|-|
|Title|anything||
|Uri|https://ghost1372.github.io||


## Available Properties in Json (Extra)
|Name|Example|Detail|
|-|-|-|
||anything|use like string in between ""|

## DataInfoBadge
|Name|Default|Detail|
|-|-|-|
|BadgeValue|null|you should set an integer value like: 10 in a string format (we convert string to int internally) also you should set `BadgeStyle` to one of the `AttentionValueInfoBadgeStyle, InformationalValueInfoBadgeStyle, SuccessValueInfoBadgeStyle, CautionValueInfoBadgeStyle, CriticalValueInfoBadgeStyle`|
|BadgeStyle|AttentionValueInfoBadgeStyle|`AttentionDotInfoBadgeStyle, AttentionIconInfoBadgeStyle, AttentionValueInfoBadgeStyle, InformationalDotInfoBadgeStyle, InformationalIconInfoBadgeStyle, InformationalValueInfoBadgeStyle, SuccessDotInfoBadgeStyle, SuccessIconInfoBadgeStyle, SuccessValueInfoBadgeStyle, CautionDotInfoBadgeStyle, CautionIconInfoBadgeStyle, CautionValueInfoBadgeStyle, CriticalDotInfoBadgeStyle, CriticalIconInfoBadgeStyle, CriticalValueInfoBadgeStyle`you should set correct style if you want to use BadgeValue or Icon or Dot|
|HideNavigationViewInfoBadge|false||
|BadgeSymbolIcon|null|for example: `Sync` , we will convert your string to Symbol so please write correct symbol name|
|BadgeBitmapIcon|null|for example: `ms-appx:///Assets/Modules/PT.png` you should set BadgeStyle to one of the AttentionIconInfoBadgeStyle, InformationalIconInfoBadgeStyle, SuccessIconInfoBadgeStyle, CautionIconInfoBadgeStyle, CriticalIconInfoBadgeStyle |
|BadgeFontIconGlyph|null|for example: `E710` , you should set BadgeStyle to one of the AttentionIconInfoBadgeStyle, InformationalIconInfoBadgeStyle, SuccessIconInfoBadgeStyle, CautionIconInfoBadgeStyle, CriticalIconInfoBadgeStyle |
|BadgeFontIconFontName|null|if you are using `BadgeFontIconGlyph` you can set FontName for using glyphs|
|HideBadge|false||
|BadgeWidth|||
|BadgeHeight|||
