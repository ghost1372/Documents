---
title: AutoSuggestBoxHelper
---

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WindowUI) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wui="using:WindowUI"`
For use in the Csharp:
`using WindowUI;`
{% endnote %}

Simple helper for Loading suggestions list in `AutoSuggestBox`

```cs
private void AutoSuggest_TextChanged(AutoSuggestBox sender, AutoSuggestBoxTextChangedEventArgs args)
{
    AutoSuggestBoxHelper.LoadSuggestions(sender, args, mylist);
}
```

![WindowUI](https://raw.githubusercontent.com/WindowUIOrg/Resources/main/WindowUIDocs/AutoSuggestBoxHelper.png)

# Demo
you can run [demo](https://github.com/WindowUIOrg/WindowUI) and see this feature.
