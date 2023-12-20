---
title: PrintHelper
---

{% note warning %}
- Because `PrintHelper` has not yet been updated to the `CommunityToolkit` package, we added it. But note that whenever it is updated to the CommunityToolkit package, we will `remove` this helper class.

- `PrintHelper` is Available Only in `Windows10.0.19041_OR_Greater` Target Frameworks.
{% endnote %}


# Example

```xml
<Grid x:Name="DirectPrintContainer">
    <Grid x:Name="PrintableContent">
        <Rectangle x:Name="RectangleToPrint" Width="500" Height="500">
            <Rectangle.Fill>
                <ImageBrush ImageSource="ms-appx:///Assets/AusterNY.jpg" />
            </Rectangle.Fill>
        </Rectangle>
    </Grid>
</Grid>
```

```cs
private PrintHelper _printHelper;

if (PrintManager.IsSupported())
{
    _printHelper = new PrintHelper(DirectPrintContainer);

    _printHelper.OnPrintCanceled += PrintHelper_OnPrintCanceled;
    _printHelper.OnPrintFailed += PrintHelper_OnPrintFailed;
    _printHelper.OnPrintSucceeded += PrintHelper_OnPrintSucceeded;

    var printHelperOptions = new PrintHelperOptions(false);
    printHelperOptions.Orientation = PrintOrientation.Default;

    await _printHelper.ShowPrintUIAsync(WinRT.Interop.WindowNative.GetWindowHandle(MainWindow.Instance), "Windows Community Toolkit Sample App", printHelperOptions, true);
}
else
{
    PrintingIsNotSupported();
}

private void ReleasePrintHelper()
{
    _printHelper.Dispose();

    if (!DirectPrintContainer.Children.Contains(PrintableContent))
    {
        DirectPrintContainer.Children.Add(PrintableContent);
    }
}

private async void PrintHelper_OnPrintSucceeded()
{
    ReleasePrintHelper();
    ContentDialog noPrintingDialog = new ContentDialog()
    {
        XamlRoot = this.Content.XamlRoot,
        Title = "Printing Done",
        Content = "\nDone, element printed.",
        PrimaryButtonText = "OK"
    };
    await noPrintingDialog.ShowAsyncQueue();
}

private async void PrintHelper_OnPrintFailed()
{
    ReleasePrintHelper();
    ContentDialog noPrintingDialog = new ContentDialog()
    {
        XamlRoot = this.Content.XamlRoot,
        Title = "Printing error",
        Content = "\nSorry, failed to print.",
        PrimaryButtonText = "OK"
    };
    await noPrintingDialog.ShowAsyncQueue();
}
private void PrintHelper_OnPrintCanceled()
{
    ReleasePrintHelper();
}
```

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.
