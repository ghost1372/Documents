---
title: Tools
---

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WinUICommunity) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wuc="using:WinUICommunity"`
For use in the Csharp:
`using WinUICommunity;`
{% endnote %}

# Observable
inherited from `INotifyPropertyChanged`

```cs
public class ShellViewModel : Observable
{
    private bool isBackEnabled;
    public bool IsBackEnabled
    {
        get { return isBackEnabled; }
        set { Set(ref isBackEnabled, value); }
    }
}
```

# Generic Comapre
Check if there is an specific item in the collection or not

```cs
var model = new Model
{
    Id = 1,
    Name = "Test"
};
var contain = DataList.Contains(model, new GenericCompare<Model>(x=>x.Id)); 
```