---
title: ApplicationDataContainerHelper
---

you can use ApplicationDataContainerHelper for save and restore application settings 

```cs
ApplicationDataContainerHelper settings = ApplicationDataContainerHelper.GetCurrent();
```

Save:
```cs
settings.Save<string>("stringKey", txtString.Text);
settings.Save<double>("doubleKey", txtNumber.Value);
settings.Save<bool>("boolKey", chkBool.IsChecked.Value);
```

Load:
```cs
txtString2.Text = settings.Read<string>("stringKey");
txtNumber2.Value = settings.Read<double>("doubleKey");
chkBool2.IsChecked = settings.Read<bool>("boolKey");
```

Clear:
```cs
settings.Clear();
```

# Demo
you can run [demo](https://github.com/ghost1372/SettingsUI) and see this feature.
