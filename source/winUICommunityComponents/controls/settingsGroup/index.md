---
title: SettingsGroup
---

# Attributes

| Name |
|-|
|Header|
|Description|
|HeaderIcon|
|Content|
|Items|

# Example

```xml
<ScrollView>
    <wuc:WrapPanel>
        <wuc:SettingsGroup Margin="10"
                                Description="Recent and commonly used settings"
                                Header="Recommended settings">
            <wuc:SettingsGroup.Items>
                <wuc:SettingsCard Header="Installed apps"
                                    HeaderIcon="{wuc:SymbolIcon Symbol=AllApps}"
                                    IsClickEnabled="True" />
                <wuc:SettingsCard Header="Taskbar"
                                    HeaderIcon="{wuc:SymbolIcon Symbol=More}"
                                    IsClickEnabled="True" />
                <wuc:SettingsCard Header="Display"
                                    HeaderIcon="{wuc:SymbolIcon Symbol=Mail}"
                                    IsClickEnabled="True" />
            </wuc:SettingsGroup.Items>
        </wuc:SettingsGroup>
        <wuc:SettingsGroup Margin="10"
                                Description="Make sure OneDrive is installed on your PC so you can see your storage details here"
                                Header="Cloud storage"
                                HeaderIcon="{wuc:BitmapIcon Source=Assets/oneDrive.png}">
            <wuc:SettingsGroup.Content>
                <Button Content="Install OneDrive" />
            </wuc:SettingsGroup.Content>
        </wuc:SettingsGroup>
        <wuc:SettingsGroup Margin="10"
                                Description="Manage, add, and remove devices"
                                Header="Bluetooth devices">
            <wuc:SettingsGroup.Items>
                <wuc:SettingsCard Description="Discoverable as 'DESKTOP-NJVNLK0'"
                                    Header="Bluetooth"
                                    HeaderIcon="{wuc:SymbolIcon Symbol=DisconnectDrive}" />
                <wuc:SettingsCard Description="Not connected"
                                    Header="KA"
                                    HeaderIcon="{wuc:SymbolIcon Symbol=Mute}" />
                <wuc:SettingsCard Header="View all devices"
                                    IsClickEnabled="True" />
            </wuc:SettingsGroup.Items>
        </wuc:SettingsGroup>
    </wuc:WrapPanel>
</ScrollView>

```

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.

![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/SettingsGroup.png)
