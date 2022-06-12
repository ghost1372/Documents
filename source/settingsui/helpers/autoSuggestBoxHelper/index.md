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

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/LoadSuggestion.png)

# Demo
you can run [demo](https://github.com/ghost1372/SettingsUI) and see this feature.
