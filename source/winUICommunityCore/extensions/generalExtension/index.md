---
title: Extensions
---

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WinUICommunity) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wuc="using:WinUICommunity"`
For use in the Csharp:
`using WinUICommunity;`
{% endnote %}

# ContentDialogExtension

By default, only 1 ContentDialog can be opened, with the help of this extension you can open multiple ContentDialogs.

```cs
ContentDialog dialog = new ContentDialog()
{
    Title = "Title",
    Content = "Content",
    PrimaryButtonText = "OK",
    CloseButtonText = "Cancel",
    DefaultButton = ContentDialogButton.Primary,
    XamlRoot = xamlRoot
};
var result = await dialog.ShowAsyncQueue();
```

# ShowAsyncDraggable
# ShowAsyncQueueDraggable

# DependencyObjectExtensions

# FrameworkElementExtensions

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.