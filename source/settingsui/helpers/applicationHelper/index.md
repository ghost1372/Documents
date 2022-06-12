---
title: ApplicationHelper
---

# GetCurrentPackageName

```cs
var packageName = ApplicationHelper.GetCurrentPackageName();

//return: 6bf3ff99-cad2-4593-95c3-a2b41f92b4f3_1.0.0.0_x86__d945pcw0g0yx4
```

{% note warning %}
`GetCurrentPackageName` Works only in `Packaged` mode, in UnPackaged mode this will Returns the null value.
{% endnote %}


# IsPackaged

```cs
var isPackagedMode = ApplicationHelper.IsPackaged;

//return: true/false 
```
# GetPackageDetails

```cs
var packageDetails = ApplicationHelper.GetPackageDetails();
```

# GetPackageVersion

```cs
var packageVersion = ApplicationHelper.GetPackageVersion();
packageVersion.Major.ToString();
packageVersion.Minor.ToString();
packageVersion.Build.ToString();
packageVersion.Revision.ToString();
//return: 1.0.0.0
```
# GetFullPathToExe

```cs
var pathToExe = ApplicationHelper.GetFullPathToExe();
//return: C:\\Users\\mahdi\\source\\repos\\App7\\App7\\bin\\x86\\Debug\\net6.0-windows10.0.19041.0\\win10-x86\\AppX"
```

# GetFullPathToAsset

```cs
var pathToAsset = ApplicationHelper.GetFullPathToAsset("logo.png");
//return: "C:\\Users\\mahdi\\source\\repos\\App7\\App7\\bin\\x86\\Debug\\net6.0-windows10.0.19041.0\\win10-x86\\AppX\\Assets\\logo.png"
```

# Demo
you can run [demo](https://github.com/ghost1372/SettingsUI) and see this feature.
