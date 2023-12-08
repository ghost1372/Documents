---
title: Quick start
---

# Download and Install

|Nuget|Github|
|-|-|
|[WindowUI](https://www.nuget.org/packages/WindowUI/)|[Github](https://github.com/WindowUIOrg/WindowUI)


{% note warning %}
Github is generally updated every day and is relatively unsuitable for production.
{% endnote %}

## Install
```
Install-Package WindowUI
```

After installing, add the following resource to `app.xaml`

```xml
<ResourceDictionary Source="ms-appx:///WindowUI/Themes/Generic.xaml"/>
```

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WindowUI) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wui="using:WindowUI"`
For use in the Csharp:
`using WindowUI;`
{% endnote %}