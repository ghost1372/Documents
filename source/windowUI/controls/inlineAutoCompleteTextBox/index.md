---
title: InlineAutoCompleteTextBox
---

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WindowUI) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wui="using:WindowUI"`
For use in the Csharp:
`using WindowUI;`
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
![WindowUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/InlineAutoComplete.png)

# Demo
you can run [demo](https://github.com/WindowUIOrg/WindowUI) and see this feature.

