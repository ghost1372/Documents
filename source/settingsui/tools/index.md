---
title: Tools
---

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

```cs
private ICommand itemInvokedCommand;

public ICommand ItemInvokedCommand => itemInvokedCommand ?? (itemInvokedCommand = new RelayCommand<string>(OnItemInvoked));

public void OnItemInvoked(string arg)
{

}
```