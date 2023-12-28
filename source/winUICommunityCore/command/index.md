---
title: Command
---

You can use commands to use in the MVVM pattern, Different types of commands are available.


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

# DelegateCommand
Implementation of ICommand where the Execute and CanExecute callbacks are handled by delegates.

```cs
public ICommand AddItems { get; }

public TestViewModel()
{
    AddItems = DelegateCommand.Create(OnAddItems);
}

private void AddItemsImpl()
{
    Debug.WriteLine("Hello");
}
```

{% note info %}
you can use IDelegateCommand Instead of ICommand
{% endnote %}


