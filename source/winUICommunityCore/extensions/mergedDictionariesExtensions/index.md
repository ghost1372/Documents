---
title: MergedDictionariesExtensions
---

|Available Extensions|
|-|
|AddIfNotNull|
|RemoveIfNotNull|
|InsertOrReplace|
|RemoveAll|
|InsertIfNotExists|
|Swap|

# Example

```cs

mergedDictionary.AddIfNotNull(resourceDictionary);

//

mergedDictionary.RemoveIfNotNull(resourceDictionary);

//

mergedDictionary.InsertOrReplace(index, resourceDictionary);

//

mergedDictionary.InsertIfNotExists(index, resourceDictionary);

//

mergedDictionary.RemoveAll();

//

mergedDictionary.Swap(index1, index2);

```

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.