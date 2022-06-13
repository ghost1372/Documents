---
title: InlineAutoCompleteTextBox
---

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
<controls:InlineAutoCompleteTextBox IsSuggestionCaseSensitive="False" SuggestionsSource="{x:Bind DemoSuggestions, Mode=OneWay}"/>
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
![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/InlineAutoComplete.png)

# Demo
you can run [demo](https://github.com/ghost1372/SettingsUI) and see this feature.

