---
title: Welcome to WindowUI
---

### Experience WinUI 3 quickly and easily with the help of WindowUI, Everything you need to develop an application is gathered in one place.

# Requirements

![dotnet-require](https://img.shields.io/badge/.net-%3E=6.0-brightgreen) ![os-require](https://img.shields.io/badge/OS-%3E%3D%20Windows%2010%20Build%201809-orange) ![IDE-require](https://img.shields.io/badge/IDE-vs2022-red) ![csharp-require](https://img.shields.io/badge/CSharp-Latest-yellow)

# Download and Install

|Nuget|Github|
|-|-|
|[WindowUI](https://www.nuget.org/packages/WindowUI)|[Github](https://github.com/WindowUIOrg/WindowUI)|
|[WindowUI.LandingPages](https://www.nuget.org/packages/WindowUI.LandingPages)|[Github](https://github.com/WindowUIOrg/WindowUI)|
|[WindowUI.ContextMenuExtensions](https://www.nuget.org/packages/WindowUI.ContextMenuExtensions)|[Github](https://github.com/WindowUIOrg/WindowUI)|
|[WindowUI.Core](https://www.nuget.org/packages/WindowUI.Core)|[Github](https://github.com/WindowUIOrg/WindowUI)|

# Project Template
for creating a new project easily, you can use our project templates:

download and install our vsix package from Marketplace:

[WindowUITemplates](https://marketplace.visualstudio.com/items?itemName=MahdiHosseini.WinUICommunityTemplates)

![WindowUITemplates](https://raw.githubusercontent.com/WindowUIOrg/Resources/main/WinUICommunity-Templates/Demo-WinUICommunityTemplates.png)

![WindowUITemplates](https://raw.githubusercontent.com/WindowUIOrg/Resources/main/WinUICommunity-Templates/1.png)

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WindowUI) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wui="using:WindowUI"`
For use in the Csharp:
`using WindowUI;`
{% endnote %}