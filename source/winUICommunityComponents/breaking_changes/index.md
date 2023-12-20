---
title: Breaking Changes
---

A breaking change is a change that may require you to make changes to your application in order to avoid disruption to your integration.

{% note info %}
See [here](https://github.com/WinUICommunity/WinUICommunity/releases) for full changes
{% endnote %}

## 6.0.0
- We Renamed `WinUICommunity` to `WinUICommunity`:
`WinUICommunity.Components` renamed to `WinUICommunity`
`WinUICommunity.Core` renamed to `WinUICommunity.Core`
`WinUICommunity.LandingPages` renamed to `WinUICommunity.LandingPages`
`WinUICommunity.LandingPages` renamed to `WinUICommunity.LandingPages`

- ResourceDictionary Changed:
`
<ResourceDictionary Source="ms-appx:///WinUICommunity.Components/Themes/Generic.xaml" />
`

Changed to

`
<ResourceDictionary Source="ms-appx:///WinUICommunity/Themes/Generic.xaml" />
`

