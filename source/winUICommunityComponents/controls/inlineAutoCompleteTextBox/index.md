---
title: InlineAutoCompleteTextBox
---

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WinUICommunity) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wuc="using:WinUICommunity"`
For use in the Csharp:
`using WinUICommunity;`
{% endnote %}

# Attributes

| Name |
|-|
| IsSuggestionCaseSensitive |
| SuggestionsSource |
|SuggestionForeground|
|SuggestionPrefix|
|SuggestionSuffix|

# Example

```xml
<wuc:InlineAutoCompleteTextBox IsSuggestionCaseSensitive="False" SuggestionsSource="{x:Bind DemoSuggestions, Mode=OneWay}"/>
```

```cs
private List<string> DemoSuggestions { get; } = new();

public MainWindow()
{
    this.InitializeComponent();
    DemoSuggestions.Add("Ted Mosby");
    DemoSuggestions.Add("Marshal Eriksen");
    DemoSuggestions.Add("Barney Stinson");
}
```
![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/InlineAutoComplete.png)

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.

