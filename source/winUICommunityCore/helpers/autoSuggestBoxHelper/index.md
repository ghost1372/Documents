---
title: AutoSuggestBoxHelper
---

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WinUICommunity) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wuc="using:WinUICommunity"`
For use in the Csharp:
`using WinUICommunity;`
{% endnote %}

Simple helper for Loading suggestions list in `AutoSuggestBox`

```cs
private void AutoSuggest_TextChanged(AutoSuggestBox sender, AutoSuggestBoxTextChangedEventArgs args)
{
    AutoSuggestBoxHelper.LoadSuggestions(sender, args, mylist);
}
```

![WinUICommunity](https://raw.githubusercontent.com/WinUICommunity/Resources/main/WinUICommunityDocs/AutoSuggestBoxHelper.png)

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.
