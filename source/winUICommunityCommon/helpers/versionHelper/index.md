---
title: VersionHelper
---

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WinUICommunity) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wuc="using:WinUICommunity"`
For use in the Csharp:
`using WinUICommunity;`
{% endnote %}

We can define versions on our applications, but how to get the version at runtime?
We can define the version numbers for AssemblyVersion, FileVersion and Version in the project file (.csproj).

The AssemblyVersion and FileVersion attributes must be in format of "major[.minor[.build[.revision]]]" or you will get a compile time error (CS7034).

```xml
<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <AssemblyVersion>1.1.1.1</AssemblyVersion>
    <FileVersion>2.2.2.2</FileVersion>
    <Version>3.3.3.3-xyz</Version>
  </PropertyGroup>
</Project>
```

# AssemblyVersion

```cs
var version = VersionHelper.GetAssemblyVersion();

// output: 1.1.1.1
```

# FileVersion

```cs
var version = VersionHelper.GetFileVersion();

// output: 2.2.2.2
```

# Version
The attribute Version can contain customized strings, like a surfix of "-xyz"

```cs
var version = VersionHelper.GetVersion();

// output: 3.3.3.3-xyz
```
