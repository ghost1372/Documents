---
title: SettingsCard
---

{% note warning %}
ported from https://github.com/CommunityToolkit/Labs-Windows
{% endnote %}

{% note warning %}
We moved all namespaces into a single namespace. No matter which (WinUICommunity) library you use, the namespace is always as follows
For use in the Xaml:
`xmlns:wuc="using:WinUICommunity"`
For use in the Csharp:
`using WinUICommunity;`
{% endnote %}

# Attributes

| Name |
|-|
|Header|
|Description|
|HeaderIcon|
|ActionIcon|
|ActionIconToolTip|
|IsClickEnabled|
|ContentAlignment|
|IsActionIconVisible|
|LaunchUri|

# Example

```xml
<wuc:SettingsCard Header="Keep screen on" Description="Keep your screen on" HeaderIcon="&#xE7FB;">
    <ToggleSwitch/>
</wuc:Setting>
```

![WinUICommunity](https://raw.githubusercontent.com/ghost1372/Resources/main/SettingsUI/Samples/Setting.png)


# SettingsPage
This example uses SettingsCard and SettingsExpander to showcase a complete Windows 11 style settings page.

```xml
<Page.Resources>
<!--  These styles can be referenced to create a consistent SettingsPage layout  -->

<!--  Spacing between cards  -->
<x:Double x:Key="SettingsCardSpacing">3</x:Double>

<!--  Style (inc. the correct spacing) of a section header  -->
<Style x:Key="SettingsSectionHeaderTextBlockStyle"
    BasedOn="{StaticResource BodyStrongTextBlockStyle}"
    TargetType="TextBlock">
<Style.Setters>
    <Setter Property="Margin" Value="1,29,0,5" />
</Style.Setters>
</Style>
</Page.Resources>
<ScrollViewer Margin="20">
    <Grid>
        <StackPanel MaxWidth="1000" HorizontalAlignment="Stretch" Spacing="{StaticResource SettingsCardSpacing}">
            <StackPanel.ChildrenTransitions>
                <EntranceThemeTransition FromVerticalOffset="50" />
                <RepositionThemeTransition IsStaggeringEnabled="False" />
            </StackPanel.ChildrenTransitions>
            <TextBlock Style="{StaticResource SettingsSectionHeaderTextBlockStyle}"
                Text="Section 1" />
            <wuc:SettingsCard Description="This is a default card, with the Header, HeaderIcon, Description and Content set"
                        Header="This is the Header">
                <wuc:SettingsCard.HeaderIcon>
                    <FontIcon Glyph="&#xE125;" />
                </wuc:SettingsCard.HeaderIcon>
                <ToggleSwitch IsOn="True" />
            </wuc:SettingsCard>

            <wuc:SettingsExpander Description="The SettingsExpander has the same properties as a SettingsCard"
                            Header="SettingsExpander">
                <wuc:SettingsExpander.HeaderIcon>
                    <FontIcon Glyph="&#xE91B;" />
                </wuc:SettingsExpander.HeaderIcon>
                <Button Content="Content"
                Style="{StaticResource AccentButtonStyle}" />

                <wuc:SettingsExpander.Items>
                    <wuc:SettingsCard Header="A basic SettingsCard within an SettingsExpander">
                        <Button Content="Button" />
                    </wuc:SettingsCard>
                    <wuc:SettingsCard Description="SettingsCard within an Expander can be made clickable too!"
                                Header="This item can be clicked"
                                IsClickEnabled="True" />

                    <wuc:SettingsCard ContentAlignment="Left">
                        <CheckBox Content="Here the ContentAlignment is set to Left. This is great for e.g. CheckBoxes or RadioButtons" />
                    </wuc:SettingsCard>
                </wuc:SettingsExpander.Items>
            </wuc:SettingsExpander>

            <TextBlock Style="{StaticResource SettingsSectionHeaderTextBlockStyle}"
                Text="Section 2" />
            <wuc:SettingsCard Description="Another card to show grouping of cards"
                        Header="Another SettingsCard">
                <wuc:SettingsCard.HeaderIcon>
                    <FontIcon Glyph="&#xE799;" />
                </wuc:SettingsCard.HeaderIcon>
                <ComboBox SelectedIndex="0">
                    <ComboBoxItem>Option 1</ComboBoxItem>
                    <ComboBoxItem>Option 2</ComboBoxItem>
                    <ComboBoxItem>Option 3</ComboBoxItem>
                </ComboBox>
            </wuc:SettingsCard>

            <wuc:SettingsCard Description="Another card to show grouping of cards"
                        Header="Yet another SettingsCard">
                <wuc:SettingsCard.HeaderIcon>
                    <FontIcon Glyph="&#xE29B;" />
                </wuc:SettingsCard.HeaderIcon>
                <Button Content="Content" />
            </wuc:SettingsCard>

            <!--  Example 'About' section  -->
            <TextBlock Style="{StaticResource SettingsSectionHeaderTextBlockStyle}"
                Text="About" />

            <wuc:SettingsExpander Description="© 2023. All rights reserved."
                            Header="Community Toolkit Gallery">
                <wuc:SettingsExpander.HeaderIcon>
                    <BitmapIcon ShowAsMonochrome="False"
                        UriSource="ms-appx:///Assets/AppTitleBar.scale-200.png" />
                </wuc:SettingsExpander.HeaderIcon>
                <TextBlock IsTextSelectionEnabled="True"
                    Foreground="{ThemeResource TextFillColorSecondaryBrush}"
                    Style="{StaticResource CaptionTextBlockStyle}"
                    Text="Version 1.0.0.0" />
                <wuc:SettingsExpander.Items>
                    <wuc:SettingsCard HorizontalContentAlignment="Left"
                                ContentAlignment="Left">
                        <StackPanel Margin="-12,0,0,0"
                            Orientation="Vertical">
                            <HyperlinkButton Content="Link 1" />
                            <HyperlinkButton Content="Link 2" />
                            <HyperlinkButton Content="Link 3" />
                        </StackPanel>
                    </wuc:SettingsCard>
                </wuc:SettingsExpander.Items>
            </wuc:SettingsExpander>
            <HyperlinkButton Margin="0,8,0,0"
                        Content="Send feedback" />
        </StackPanel>
    </Grid>
</ScrollViewer>
```

# Clickable SettingsCard

```cs
public bool IsCardEnabled { get; set; } = true;
public bool IsCardExpanded { get; set; } = false;

private async void OnCardClicked(object sender, RoutedEventArgs e)
{
    await Windows.System.Launcher.LaunchUriAsync(new Uri("https://www.microsoft.com"));
}
```

```xml
<StackPanel Spacing="3">

    <wuc:SettingsCard x:Name="settingsCard2"
                Description="A SettingsCard can be made clickable and you can leverage the Command property or Click event."
                Header="A clickable SettingsCard"
                IsClickEnabled="True"
                Click="OnCardClicked"
                IsEnabled="{x:Bind IsCardEnabled, Mode=OneWay}">
        <wuc:SettingsCard.HeaderIcon>
            <FontIcon Glyph="&#xE799;" />
        </wuc:SettingsCard.HeaderIcon>
    </wuc:SettingsCard>

    <wuc:SettingsCard ActionIconToolTip="Open in new window"
                Description="You can customize the ActionIcon and ActionIconToolTip."
                Header="Customizing the ActionIcon"
                IsClickEnabled="True"
                Click="OnCardClicked"
                IsEnabled="{x:Bind IsCardEnabled, Mode=OneWay}">
        <wuc:SettingsCard.HeaderIcon>
            <FontIcon Glyph="&#xE12B;" />
        </wuc:SettingsCard.HeaderIcon>
        <wuc:SettingsCard.ActionIcon>
            <FontIcon Glyph="&#xE8A7;" />
        </wuc:SettingsCard.ActionIcon>
    </wuc:SettingsCard>
</StackPanel>
```

# SettingsCard
SettingsCard is a control that can be used to display settings in your experience. It uses the default styling found in Windows 11 and is easy to use, meets all accesibility standards and will make your settings page look great! You can set the Header, Description, HeaderIcon and Content properties to create an easy to use experience.

SettingsCard can also be turned into a button, by setting the `IsClickEnabled` property. This can be useful whenever you want your settings component to navigate to a detail page or open an external link.

```xml
<StackPanel Spacing="3">
    <TextBlock Margin="1,0,0,4"
                Style="{StaticResource BodyStrongTextBlockStyle}"
                Text="Group of settings" />
    <wuc:SettingsCard x:Name="settingsCard"
                        Description="This is a default card, with the Header, HeaderIcon, Description and Content set."
                        Header="This is the Header"
                        IsEnabled="{x:Bind IsCardEnabled, Mode=OneWay}">
        <wuc:SettingsCard.HeaderIcon>
            <FontIcon Glyph="&#xE799;" />
        </wuc:SettingsCard.HeaderIcon>
        <ComboBox SelectedIndex="0">
            <ComboBoxItem>Option 1</ComboBoxItem>
            <ComboBoxItem>Option 2</ComboBoxItem>
            <ComboBoxItem>Option 3</ComboBoxItem>
        </ComboBox>
    </wuc:SettingsCard>

    <wuc:SettingsCard Description="You can use a FontIcon, SymbolIcon or BitmapIcon to set the cards HeaderIcon."
                        Header="Icon options"
                        IsEnabled="{x:Bind IsCardEnabled, Mode=OneWay}">
        <wuc:SettingsCard.HeaderIcon>
            <BitmapIcon ShowAsMonochrome="False"
                        UriSource="ms-appx:///Assets/AppTitleBar.scale-200.png" />
        </wuc:SettingsCard.HeaderIcon>
        <ToggleSwitch />
    </wuc:SettingsCard>

    <wuc:SettingsCard Header="A card with custom objects as its Description"
                        IsEnabled="{x:Bind IsCardEnabled, Mode=OneWay}">
        <wuc:SettingsCard.Description>
            <HyperlinkButton Content="Learn more about Phone Link" />
        </wuc:SettingsCard.Description>
        <Button Content="Open Phone Link"
                Style="{StaticResource AccentButtonStyle}" />
    </wuc:SettingsCard>

    <wuc:SettingsCard Description="When resizing a SettingsCard, the Content will wrap vertically. You can override this breakpoint by setting the SettingsCardWrapThreshold resource. For edge cases, you can also hide the icon by setting SettingsCardWrapNoIconThreshold."
                        Header="Adaptive layouts"
                        IsEnabled="{x:Bind IsCardEnabled, Mode=OneWay}">
        <wuc:SettingsCard.HeaderIcon>
            <FontIcon Glyph="&#xE745;" />
        </wuc:SettingsCard.HeaderIcon>
        <wuc:SettingsCard.Resources>
            <x:Double x:Key="SettingsCardWrapThreshold">800</x:Double>
            <x:Double x:Key="SettingsCardWrapNoIconThreshold">600</x:Double>
        </wuc:SettingsCard.Resources>
        <Button Content="This control will wrap vertically!"
                Style="{StaticResource AccentButtonStyle}" />
    </wuc:SettingsCard>
</StackPanel>
```

# SettingsExpander ItemsSource

```cs
public class MyDataModel
{
    public string? Name { get; set; }

    public string? Info { get; set; }

    public string? LinkDescription { get; set; }

    public string? Url { get; set; }
}

public ObservableCollection<MyDataModel> MyDataSet = new() {
    new()
    {
        Name = "First Item",
        Info = "More about first item.",
        LinkDescription = "Click here for more on first item.",
        Url = "https://microsoft.com/",
    },
    new()
    {
        Name = "Second Item",
        Info = "More about second item.",
        LinkDescription = "Click here for more on second item.",
        Url = "https://xbox.com/",
    },
    new()
    {
        Name = "Third Item",
        Info = "More about third item.",
        LinkDescription = "Click here for more on third item.",
        Url = "https://toolkitlabs.dev/",
    },
};
```xml
<wuc:SettingsExpander Description="The SettingsExpander can use ItemsSource to define its Items."
                        Header="Settings Expander with ItemsSource"
                        ItemsSource="{x:Bind MyDataSet}">
    <wuc:SettingsExpander.HeaderIcon>
        <FontIcon Glyph="&#xEA37;" />
    </wuc:SettingsExpander.HeaderIcon>
    <wuc:SettingsExpander.ItemTemplate>
        <DataTemplate x:DataType="local:MyDataModel">
            <wuc:SettingsCard Description="{x:Bind Info}"
                                Header="{x:Bind Name}">
                <HyperlinkButton Content="{x:Bind LinkDescription}"
                                    NavigateUri="{x:Bind Url}" />
            </wuc:SettingsCard>
        </DataTemplate>
    </wuc:SettingsExpander.ItemTemplate>
    <wuc:SettingsExpander.ItemsHeader>
        <InfoBar Title="This is the ItemsHeader"
                        BorderThickness="0"
                        CornerRadius="0"
                        IsIconVisible="False"
                        IsOpen="True"
                        Severity="Success">
            <InfoBar.ActionButton>
                <HyperlinkButton Content="It can host custom content" />
            </InfoBar.ActionButton>
        </InfoBar>
    </wuc:SettingsExpander.ItemsHeader>
    <wuc:SettingsExpander.ItemsFooter>
        <InfoBar Title="This is the ItemsFooter"
                        BorderThickness="0"
                        CornerRadius="0,0,4,4"
                        IsIconVisible="False"
                        IsOpen="True"
                        Severity="Informational">
            <InfoBar.ActionButton>
                <HyperlinkButton Content="It can host custom content" />
            </InfoBar.ActionButton>
        </InfoBar>
    </wuc:SettingsExpander.ItemsFooter>
</wuc:SettingsExpander>
```

# SettingsExpander
The SettingsExpander can be used to group multiple SettingsCards into a single collapsable group.

A SettingsExpander can have it's own content to display a setting on the right, just like a SettingsCard, but in addition can have any number of extra Items to include as additional settings. These items are SettingsCards themselves, which means you can easily move a setting into or out of Expanders just by cutting and pasting their XAML!
You can easily override certain properties to create custom experiences. For instance, you can customize the ContentAlignment of a SettingsCard, to align your content to the Right (default), Left (hiding the HeaderIcon, Header and Description) or Vertically (usually best paired with changing the HorizontalContentAlignment to Stretch).

SettingsExpander is also an ItemsControl, so its items can be driven by a collection and the ItemsSource property. You can use the ItemTemplate to define how your data object is represented as a SettingsCard, as shown below. The ItemsHeader and ItemsFooter property can be used to host custom content at the start or end of the items list.

```xml
<ScrollViewer>
    <wuc:SettingsExpander x:Name="settingsCard"
                            Description="The SettingsExpander has the same properties as a Card, and you can set SettingsCard as part of the Items collection."
                            Header="SettingsExpander"
                            IsEnabled="{x:Bind IsCardEnabled, Mode=OneWay}"
                            IsExpanded="{x:Bind IsCardExpanded, Mode=OneWay}">
        <!--  TODO: This should be TwoWay bound but throws compile error in Uno.  -->
        <wuc:SettingsExpander.HeaderIcon>
            <FontIcon Glyph="&#xE91B;" />
        </wuc:SettingsExpander.HeaderIcon>
        <ComboBox SelectedIndex="0">
            <ComboBoxItem>Option 1</ComboBoxItem>
            <ComboBoxItem>Option 2</ComboBoxItem>
            <ComboBoxItem>Option 3</ComboBoxItem>
        </ComboBox>

        <wuc:SettingsExpander.Items>
            <wuc:SettingsCard Header="A basic SettingsCard within an SettingsExpander">
                <Button Content="Button" />
            </wuc:SettingsCard>
            <wuc:SettingsCard Description="SettingsCard within an Expander can be made clickable too!"
                                Header="This item can be clicked"
                                IsClickEnabled="True" />

            <wuc:SettingsCard ContentAlignment="Left">
                <CheckBox Content="Here the ContentAlignment is set to Left. This is great for e.g. CheckBoxes or RadioButtons." />
            </wuc:SettingsCard>

            <wuc:SettingsCard HorizontalContentAlignment="Left"
                                ContentAlignment="Vertical"
                                Description="You can also align your content vertically. Make sure to set the HorizontalAlignment to Left when you do!"
                                Header="Vertically aligned">
                <GridView SelectedIndex="1">
                    <GridViewItem>
                        <Border Width="64"
                                Height="64"
                                Background="#0078D4"
                                CornerRadius="4" />
                    </GridViewItem>
                    <GridViewItem>
                        <Border Width="64"
                                Height="64"
                                Background="#005EB7"
                                CornerRadius="4" />
                    </GridViewItem>
                    <GridViewItem>
                        <Border Width="64"
                                Height="64"
                                Background="#003D92"
                                CornerRadius="4" />
                    </GridViewItem>
                    <GridViewItem>
                        <Border Width="64"
                                Height="64"
                                Background="#001968"
                                CornerRadius="4" />
                    </GridViewItem>
                </GridView>
            </wuc:SettingsCard>
            <wuc:SettingsCard Description="You can override the Left indention of a SettingsCard by overriding the SettingsCardLeftIndention"
                                Header="Customization">
                <wuc:SettingsCard.Resources>
                    <x:Double x:Key="SettingsCardLeftIndention">40</x:Double>
                </wuc:SettingsCard.Resources>
            </wuc:SettingsCard>
        </wuc:SettingsExpander.Items>
    </wuc:SettingsExpander>
</ScrollViewer>
```


# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.
