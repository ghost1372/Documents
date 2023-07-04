---
title: JsonFile
---

## Available Properties in Json (Groups)
|Name|Example|Detail|
|-|-|-|
|UniqueId|WinUICommunity.DemoApp.Pages.ApplicationDataContainerPage|Full address to a Page in Project|
|Title|Features pages|Top Level Menu Item|
|SecondaryTitle|anything||
|ApiNamespace|WinUICommunity.DemoApp|Application Namespace|
|Subtitle|anything||
|ImagePath|ms-appx:///Assets/Modules/PT.png||
|ImageIconPath|ms-appx:///Assets/Modules/PT.png||
|Description|anything||
|IsSpecialSection|false||
|HideGroup|false|Hide or Show a Group with Items|
|IsExpanded|true|If it is true NavigationViewItem will be expanded|
|Items||See Below|
|InfoBadge||See Below|
|ShowItemsWithoutGroup|true|if you set this to true, all items of the group will be added directly to the NavigationView|
|IsFooterNavigationViewItem|true|if you set this to true, items will be added into navigationView FooterMenuItems|

## Available Properties in Json (Items)
|Name|Example|Detail|
|-|-|-|
|UniqueId|WinUICommunity.DemoApp.Pages.ApplicationDataContainerPage|Full address to a Page in Project|
|Title|Features pages|Top Level Menu Item|
|SecondaryTitle|anything||
|ApiNamespace|WinUICommunity.DemoApp|Application Namespace|
|Subtitle|anything||
|ImagePath|ms-appx:///Assets/Modules/PT.png||
|ImageIconPath|ms-appx:///Assets/Modules/PT.png||
|Description|anything||
|Content|anything||
|IsNew|true|if set true you can filter items based on new items|
|IsUpdated|true|if set true you can filter items based on updated items|
|IsPreview|true|if set true you can filter items based on preview items|
|IncludedInBuild|false|if set true item will be enabled|
|HideItem|false|if set true item will be hide|
|HideSourceCodeAndRelatedControls|true|under development|
|Docs||See Below|
|RelatedControls||See Below|
|InfoBadge||See Below|

{% note warning %}
only one of this proeprties `IsNew`, `IsUpdated` and `IsPreview` can be `true`
{% endnote %}

{% note info %}
ApiNamespace can be set to empty `("ApiNamespace": "")` , in this way we will find application namespace.
{% endnote %}


## Available Properties in Json (Docs)
|Name|Example|Detail|
|-|-|-|
|Title|anything||
|Uri|https://ghost1372.github.io||


## Available Properties in Json (RelatedControls)
|Name|Example|Detail|
|-|-|-|
||anything|use like string in between ""|

## InfoBadge
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
