---
title: AppNotification
---

# Related Classes

|Name|
|-|
|NotificationManager|
|NotificationHelper|
|ScenarioHelper|
|IScenario|
|Notification|

using existing helper classes you will create a desktop Windows application that sends and receives local app notifications, also known as toast notifications/

{% note warning %}
if your app is a Packaged app, please see [here](https://docs.microsoft.com/en-us/windows/apps/windows-app-sdk/notifications/app-notifications/app-notifications-quickstart?tabs=cs#step-2-update-your-apps-manifest)
{% endnote %}

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/AppNotificationAvatar.png)

![SettingsUI](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/AppNotificationTextBox.png)

# Send Toast with Existing Payloads
in this way you can create and send Toast with Existing Payloads.

first you need to create a new Class, we call it: `ToastWithAvatar.cs`
now inherit it from `IScenario` Interface:

`public class ToastWithAvatar : IScenario`

{% note warning %}
`NotificationReceived` is called when Notification is received and you need to implement your payload in `SendToast` method.
{% endnote %}

also we need a `Static` Instance property for this class:

```cs
private static ToastWithAvatar _Instance;
public static ToastWithAvatar Instance
{
    get
    {
        if (_Instance == null)
        {
            _Instance = new ToastWithAvatar();
        }
        return _Instance;
    }
    set => _Instance = value;
}
```
in `NotificationReceived` method we can get event args:

```cs
public void NotificationReceived(AppNotificationActivatedEventArgs notificationActivatedEventArgs)
{
    var notification = NotificationHelper.GetNotificationForWithAvatar(ScenarioName, notificationActivatedEventArgs);
    
    //OR

    // var notification = NotificationHelper.GetNotificationForWithTextBox(ScenarioName, textBoxReplyId, notificationActivatedEventArgs);

    //MainPage.Current.NotificationReceived(notification);
    WindowHelper.SwitchToThisWindow(mainWindow);
}
```
and for `SendToast` Method we can use Existing payloads:

```cs
public bool SendToast()
{
    return ScenarioHelper.SendToastWithAvatar(1, "Send Local Toast with Avatar", "Hi, This is a Local Toast", "Open my App", "OpenApp", "Icon.png");
}
```
OR

```cs
public bool SendToast()
{
    return ScenarioHelper.SendToastWithTextBox(1, "textBoxReplyId", "Send Local Toast with TextBox", "Hi, This is a Local Toast", "Reply", "Pleaser Answer Here...", "Reply", "Icon.png");
}
```
OR

```cs
public bool SendToast()
{
    string myPayload = "YOUR PAYLOAD HERE"
    return ScenarioHelper.SendToast(myPayload);
}
```

{% note warning %}
if you are using `SendToastWithTextBox` you can get textbox input text in `NotificationReceived` method like this:
{% code lang:csharp %}
public void NotificationReceived(AppNotificationActivatedEventArgs notificationActivatedEventArgs)
{
    // In a real-life scenario, this type of action would usually be processed in the background. Your App would process the payload in
    // the background (sending the payload back to your App Server) without ever showing the App's UI.
    // This is not something that can easily be demonstrated in a sample such as this one, as we need to show the UI to demonstrate how
    // the payload is routed internally

    var input = notificationActivatedEventArgs.UserInput;
    var text = input[textboxReplyId];

    var notification = new Notification();
    notification.Originator = ScenarioName;
    var action = NotificationHelper.ExtractParamFromArgs(notificationActivatedEventArgs.Argument, "action");
    notification.Action = action == null ? "" : action;
    notification.HasInput = true;
    notification.Input = text;
    //MainPage.Current.NotificationReceived(notification);
    WindowHelper.SwitchToThisWindow(mainWindow);
}
{% endcode %}

{% endnote %}

## Initialize
now we need to Initialize `NotificationManager`, go to `App.xaml.cs` and register your class:

```cs
private NotificationManager notificationManager;

public App()
{
    this.InitializeComponent();
    AppDomain.CurrentDomain.ProcessExit += new EventHandler(OnProcessExit);
    var c_notificationHandlers = new Dictionary<int, Action<AppNotificationActivatedEventArgs>>();
    c_notificationHandlers.Add(ToastWithAvatar.Instance.ScenarioId, ToastWithAvatar.Instance.NotificationReceived);
    notificationManager = new NotificationManager(c_notificationHandlers);
}

protected override void OnLaunched(Microsoft.UI.Xaml.LaunchActivatedEventArgs args)
{
    m_window = new MainWindow();
    notificationManager.Init(notificationManager, OnNotificationInvoked);
    m_window.Activate();
}
private void OnNotificationInvoked(string obj)
{
    Debug.WriteLine(obj);
}

void OnProcessExit(object sender, EventArgs e)
{
    notificationManager.Unregister();
}
```
## Send Toast
now we can send Toast this way:

```cs
ToastWithAvatar.Instance.SendToast();
```

# Send with Custom Payloads

```cs
public bool SendToast()
{
    // The ScenarioIdToken uniquely identify a scenario and is used to route the response received when the user clicks on a toast to the correct scenario.
    var ScenarioIdToken = NotificationHelper.MakeScenarioIdToken(ScenarioId);

    var xmlPayload = new string(
        "<toast launch = \"action=ToastClick&amp;" + ScenarioIdToken + "\">"
    + "<visual>"
    + "<binding template = \"ToastGeneric\">"
    + "<image placement = \"appLogoOverride\" hint-crop=\"circle\" src = \"" + PathHelper.GetFullPathToAsset("Square150x150Logo.png") + "\"/>"
    + "<text>" + ScenarioName + "</text>"
    + "<text>This is an example message using XML</text>"
    + "</binding>"
    + "</visual>"
    + "<actions>"
    + "<input "
    + "id = \"" + textboxReplyId + "\" "
    + "type = \"text\" "
    + "placeHolderContent = \"Type a reply\"/>"
    + "<action "
    + "content = \"Reply\" "
    + "arguments = \"action=Reply&amp;" + ScenarioIdToken + "\" "
    + "hint-inputId = \"" + textboxReplyId + "\"/>"
    + "</actions>"
    + "</toast>");

    return ScenarioHelper.SendToast(myPayload);
}
```

```cs
public void NotificationReceived(AppNotificationActivatedEventArgs notificationActivatedEventArgs)
{
    var input = notificationActivatedEventArgs.UserInput;
    var text = input[textboxReplyId];

    var notification = new Notification();
    notification.Originator = ScenarioName;
    var action = NotificationHelper.ExtractParamFromArgs(notificationActivatedEventArgs.Argument, "action");
    notification.Action = action == null ? "" : action;
    notification.HasInput = true;
    notification.Input = text;
    //MainPage.Current.NotificationReceived(notification);
    WindowHelper.SwitchToThisWindow(mainWindow);
}
```

{% note info %}
for more info about payloads you can see [here](https://docs.microsoft.com/en-us/windows/apps/design/shell/tiles-and-notifications/adaptive-interactive-toasts?tabs=builder-syntax) and [here](https://docs.microsoft.com/en-us/uwp/schemas/tiles/toastschema/schema-root)
{% endnote %}

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.
