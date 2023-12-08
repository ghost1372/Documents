---
title: Breaking Changes
---

A breaking change is a change that may require you to make changes to your application in order to avoid disruption to your integration.

{% note info %}
See [here](https://github.com/WindowUIOrg/WindowUI/releases) for full changes
{% endnote %}

## 6.0.0
- We Renamed `WinUICommunity` to `WindowUI`:
`WinUICommunity.Components` renamed to `WindowUI`
`WinUICommunity.Core` renamed to `WindowUI.Core`
`WinUICommunity.LandingPages` renamed to `WindowUI.LandingPages`
`WinUICommunity.LandingPages` renamed to `WindowUI.LandingPages`

- ResourceDictionary Changed:
`
<ResourceDictionary Source="ms-appx:///WinUICommunity.LandingPages/Themes/Generic.xaml" />
`

Changed to

`
<ResourceDictionary Source="ms-appx:///WindowUI.LandingPages/Themes/Generic.xaml" />
`
