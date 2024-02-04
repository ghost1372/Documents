---
title: CredentialHelper
---

# RequestWindowsPIN
you can verify your users by requesting windows pin
```cs
bool result = await CredentialHelper.RequestWindowsPIN("Please Enter your OS Pin so we can verify its you!");
```

![WinUICommunity](https://raw.githubusercontent.com/WinUICommunity/Resources/main/WinUICommunityDocs/RequestOSPin.png)

# PickCredential
Get username and password with Windows Credential Picker
```cs
CredentialPickerResults result = await CredentialHelper.PickCredential("Caption", "Message");
var password = result.CredentialPassword;
var username = result.CredentialUserName;
```

![WinUICommunity](https://raw.githubusercontent.com/WinUICommunity/Resources/main/WinUICommunityDocs/CredentialPicker.png)

# AddPasswordCredential
Add password to Windows Credential

```cs
CredentialHelper.AddPasswordCredential("myResource", "username", "password");
```

# GetPasswordCredential
Get password from Windows Credential

```cs
PasswordCredential result = CredentialHelper.GetPasswordCredential("myResource", "username");
var username = result.UserName;
var password = result.Password;

```

# RemovePasswordCredential
Remove password from Windows Credential

```cs
CredentialHelper.RemovePasswordCredential("myResource", "username");
```

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.
