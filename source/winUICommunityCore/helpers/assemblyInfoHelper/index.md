---
title: AssemblyInfoHelper
---

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

# GetCurrentAssemblyCustomAttribute

# GetCurrentAssemblyCustomAttribute(Assembly)

# GetVersion

```cs
var appversion1 = AssemblyInfoHelper.GetVersion(VersionType.EntryAssemblyVersion); // output: 1.1.1.1
var appversion2 = AssemblyInfoHelper.GetVersion(VersionType.CurrentAssemblyVersion);// output: 1.1.1.1
var appversion3 = AssemblyInfoHelper.GetVersion(VersionType.AssemblyFileVersion); // output: 2.2.2.2
var appversion4 = AssemblyInfoHelper.GetVersion(VersionType.AssemblyInformationalVersion); // output: 3.3.3.3-xyz

```

# GetAppName

```cs
var appname1 = AssemblyInfoHelper.GetAppName(NameType.EntryAssemblyVersion);
var appname2 = AssemblyInfoHelper.GetAppName(NameType.CurrentAssemblyVersion);
```

# GetAppDetails

```cs
var appNameVersion = AssemblyInfoHelper.GetAppDetails(NameType.CurrentAssemblyVersion, VersionType.AssemblyInformationalVersion);
var name = appNameVersion.Name;
var version = appNameVersion.Version;
var nameversion = appNameVersion.NameAndVersion;
```


# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.
