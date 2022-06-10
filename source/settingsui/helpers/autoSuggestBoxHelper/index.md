---
title: AutoSuggestBoxHelper
---

Simple helper for Loading suggestions list in `AutoSuggestBox`

```cs
private void AutoSuggest_TextChanged(AutoSuggestBox sender, AutoSuggestBoxTextChangedEventArgs args)
{
    AutoSuggestBoxHelper.LoadSuggestions(sender, args, mylist);
}
```

# Demo
you can run [demo](https://github.com/ghost1372/SettingsUI) and see this feature.
