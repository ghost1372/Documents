---
title: StorageFileHelper
---

```cs
// NOTE This must be used from an async function
string myText = "Great information that the users wants to keep";
StorageFolder localFolder = Windows.Storage.ApplicationData.Current.LocalFolder;

// Save some text to a file named appFilename.txt (in the local cache folder)
var storageFile = await StorageFileHelper.WriteTextToLocalCacheFileAsync(myText, "appFilename.txt");

// Load some text from a file named appFilename.txt in the local cache folder 
string loadedText = await StorageFileHelper.ReadTextFromLocalCacheFileAsync("appFilename.txt");

// Save some text to a file named appFilename.txt (in the local folder)
storageFile = await StorageFileHelper.WriteTextToLocalFileAsync(myText, "appFilename.txt");

// Load some text from a file named appFilename.txt in the local folder 
loadedText = await StorageFileHelper.ReadTextFromLocalFileAsync("appFilename.txt");

// Check if a file exists in a specific folder
bool exists = await localFolder.FileExistsAsync("appFilename.txt");

// Check if a file exists in a specific folder or in one of its subfolders
bool exists = await localFolder.FileExistsAsync("appFilename.txt", true);

// Check if a file name is valid or not
bool isFileNameValid = StorageFileHelper.IsFileNameValid("appFilename.txt");

// Check if a file path is valid or not
bool isFilePathValid = StorageFileHelper.IsFilePathValid("folder/appFilename.txt");
```


# Demo
you can run [demo](https://github.com/ghost1372/SettingsUI) and see this feature.
