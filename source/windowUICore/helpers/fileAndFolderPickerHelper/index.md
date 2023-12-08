---
title: FileAndFolderPickerHelper
---

# PickSaveFileAsync
```cs
var ext = new Dictionary<string, IList<string>>();
ext.Add("Plain Text", new List<string>() { ".txt" });
var picker = await FileAndFolderPickerHelper.PickSaveFileAsync(App.currentWindow, ext);
if (picker != null)
{
    txtRes.Text = picker.Path;
}
```

# PickMultipleFilesAsync
```cs
var fileTypeFilter = new List<string> { ".txt", ".rtf" };
var picker = await FileAndFolderPickerHelper.PickMultipleFilesAsync(App.currentWindow, fileTypeFilter);
if (picker != null)
{
    foreach (var item in picker)
    {
        txtRes.Text = item.Path;
    }
}
```

# PickSingleFileAsync
```cs
 var fileTypeFilter = new List<string> { ".txt", ".rtf" };
 var picker = await FileAndFolderPickerHelper.PickSingleFileAsync(App.currentWindow, fileTypeFilter);
 if (picker != null)
 {
     txtRes.Text = picker.Path;
 }
```

# PickSingleFolderAsync
```cs
var picker = await FileAndFolderPickerHelper.PickSingleFolderAsync(App.currentWindow);
if (picker != null)
{
    txtRes.Text = picker.Path;
}
```

![WindowUI](https://raw.githubusercontent.com/WindowUIOrg/Resources/main/WindowUIDocs/Picker.png)

# Demo
you can run [demo](https://github.com/WindowUIOrg/WindowUI) and see this feature.
