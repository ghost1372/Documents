---
title: Tools
---

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WindowUI) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wui="using:WindowUI"`
For use in the Csharp:
`using WindowUI;`
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

# RelayCommand

```cs
inherited from `ICommand`
```

```cs
private ICommand itemInvokedCommand;

public ICommand ItemInvokedCommand => itemInvokedCommand ?? (itemInvokedCommand = new RelayCommand<string>(OnItemInvoked));

public void OnItemInvoked(string arg)
{

}
```