---
title: WndProdcHelper
---

you can define a wndproc for your winui 3 app.

```cs
WndProcHelper wndProc;
wndProc = new WndProcHelper(Window window);

// for MainWindow use RegisterWndProc

wndProc.RegisterWndProc(WindowWndProc);

// and for InputNonClientPointerSource

wndProc.RegisterInputNonClientPointerSourceWndProc(InputNonClientPointerSourceWndProc);

private IntPtr WindowWndProc(IntPtr hWnd, NativeValues.WindowMessage Msg, IntPtr wParam, IntPtr lParam)
{
    return wndProc.CallWindowProc(hWnd, Msg, wParam, lParam);
}

private IntPtr InputNonClientPointerSourceWndProc(IntPtr hWnd, NativeValues.WindowMessage Msg, IntPtr wParam, IntPtr lParam)
{
    return wndProc.CallInputNonClientPointerSourceWindowProc(hWnd, Msg, wParam, lParam);
}
```

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.
