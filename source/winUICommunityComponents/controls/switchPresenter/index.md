---
title: SwitchPresenter
---


# Example

```xml

<Page.Resources>
    <Style x:Key="PanelStyle"
            TargetType="StackPanel">
        <Setter Property="CornerRadius" Value="8" />
        <Setter Property="Padding" Value="16" />
        <Setter Property="Background" Value="{ThemeResource CardBackgroundFillColorDefaultBrush}" />
        <Setter Property="BorderThickness" Value="1" />
        <Setter Property="BorderBrush" Value="{ThemeResource CardStrokeColorDefaultBrush}" />
        <Setter Property="Orientation" Value="Horizontal" />
        <Setter Property="Spacing" Value="8" />
        <Setter Property="animations:Implicit.HideAnimations" Value="{StaticResource ShowTransitions}" />
    </Style>

    <animations:ImplicitAnimationSet x:Name="ShowTransitions">
        <animations:OffsetAnimation EasingMode="EaseOut"
                                    From="0,24,0"
                                    To="0"
                                    Duration="0:0:0.4" />
        <animations:OpacityAnimation EasingMode="EaseOut"
                                        From="0"
                                        To="1"
                                        Duration="0:0:0.2" />
    </animations:ImplicitAnimationSet>
    <animations:ImplicitAnimationSet x:Name="HideTransitions">
        <animations:OffsetAnimation EasingMode="EaseOut"
                                    From="0"
                                    To="0,24,0"
                                    Duration="0:0:0.2" />
        <animations:OpacityAnimation EasingMode="EaseOut"
                                        From="1"
                                        To="0"
                                        Duration="0:0:0.1" />
    </animations:ImplicitAnimationSet>
</Page.Resources>

<wuc:SwitchPresenter Value="{Binding SelectedItem.Tag, ElementName=segmentedControl}">
    <wuc:Case Value="square">
        <StackPanel animations:Implicit.HideAnimations="{StaticResource HideTransitions}"
                    animations:Implicit.ShowAnimations="{StaticResource ShowTransitions}"
                    Style="{StaticResource PanelStyle}">

            <Border Width="24"
                    Height="24"
                    Background="{ThemeResource AccentFillColorDefaultBrush}" />
            <TextBlock VerticalAlignment="Center"
                        Text="This is the Square panel" />
        </StackPanel>
    </wuc:Case>
    <wuc:Case Value="circle">
        <StackPanel animations:Implicit.HideAnimations="{StaticResource HideTransitions}"
                    animations:Implicit.ShowAnimations="{StaticResource ShowTransitions}"
                    Style="{StaticResource PanelStyle}">

            <Ellipse Width="24"
                        Height="24"
                        Fill="{ThemeResource AccentFillColorDefaultBrush}" />
            <TextBlock VerticalAlignment="Center"
                        Text="This is the Circle panel" />
        </StackPanel>
    </wuc:Case>
    <wuc:Case Value="rect">
        <StackPanel animations:Implicit.HideAnimations="{StaticResource HideTransitions}"
                    animations:Implicit.ShowAnimations="{StaticResource ShowTransitions}"
                    Style="{StaticResource PanelStyle}">
            <Rectangle Width="48"
                        Height="24"
                        Fill="{ThemeResource AccentFillColorDefaultBrush}" />
            <TextBlock VerticalAlignment="Center"
                        Text="This is the Rectangle panel" />
        </StackPanel>
    </wuc:Case>
</wuc:SwitchPresenter>
```

# Example 2

```xml
 <StackPanel>
        <ComboBox x:Name="Lookup"
                  Margin="0,0,0,8"
                  Header="Look up reservation"
                  SelectedIndex="0">
            <x:String>Select an option</x:String>
            <x:String>Confirmation Code</x:String>
            <x:String>E-ticket number</x:String>
            <x:String>Mileage Plan number</x:String>
        </ComboBox>
        <!--  SwitchPresenter binds to a value  -->
        <wuc:SwitchPresenter Value="{Binding SelectedItem, ElementName=Lookup}">
            <!--  And then only dynamically displays the Case with the matching Value  -->
            <wuc:Case Value="Confirmation Code">
                <StackPanel>
                    <TextBox Name="ConfirmationCodeValidator"
                             ui:TextBoxExtensions.Regex="^[a-zA-Z]{6}$"
                             Header="Confirmation code"
                             PlaceholderText="6 letters" />
                    <TextBlock Text="Thanks for entering a valid code!"
                               Visibility="{Binding (ui:TextBoxExtensions.IsValid), ElementName=ConfirmationCodeValidator}" />
                </StackPanel>
            </wuc:Case>
            <wuc:Case Value="E-ticket number">
                <StackPanel>
                    <TextBox Name="TicketValidator"
                             ui:TextBoxExtensions.Regex="(^\d{10}$)|(^\d{13}$)"
                             Header="E-ticket number"
                             PlaceholderText="10 or 13 numbers" />
                    <TextBlock Text="Thanks for entering a valid code!"
                               Visibility="{Binding (ui:TextBoxExtensions.IsValid), ElementName=TicketValidator}" />
                </StackPanel>
            </wuc:Case>
            <wuc:Case Value="Mileage Plan number">
                <TextBox Name="PlanValidator"
                         Header="Mileage Plan #"
                         PlaceholderText="Mileage Plan #" />
            </wuc:Case>
            <!--  You can also provide a default case if no match is found  -->
            <wuc:Case IsDefault="True">
                <TextBlock Text="Please select a way to lookup your reservation above..." />
            </wuc:Case>
        </wuc:SwitchPresenter>
    </StackPanel>
```


# Example 3

```cs
public enum Animal
{
    Cat,
    Dog,
    Bunny,
    Llama,
    Parrot,
    Squirrel
}
```

```xml
 <Page.Resources>
        <!--
            If you reference an enum directly in UWP, you need to use it somewhere for the XamlTypeInfo reference to be generated...
        -->
        <local:Animal x:Key="MyAnimal">Cat</local:Animal>
    </Page.Resources>

    <StackPanel>
        <ComboBox x:Name="AnimalPicker"
                  Header="Pick an Animal"
                  ItemsSource="{ui:EnumValues Type=local:Animal}"
                  SelectedIndex="0" />
        <wuc:SwitchPresenter Padding="16"
                                  TargetType="local:Animal"
                                  Value="{Binding SelectedItem, ElementName=AnimalPicker}">
            <wuc:Case Value="Cat">
                <TextBlock FontSize="32"
                           Text="🐈" />
            </wuc:Case>
            <wuc:Case Value="Dog">
                <TextBlock FontSize="32"
                           Text="🐕" />
            </wuc:Case>
            <wuc:Case Value="Bunny">
                <TextBlock FontSize="32"
                           Text="🐇" />
            </wuc:Case>
            <wuc:Case Value="Llama">
                <TextBlock FontSize="32"
                           Text="🦙" />
            </wuc:Case>
            <wuc:Case Value="Parrot">
                <TextBlock FontSize="32"
                           Text="🦜" />
            </wuc:Case>
            <wuc:Case Value="Squirrel">
                <TextBlock FontSize="32"
                           Text="🐿" />
            </wuc:Case>
        </wuc:SwitchPresenter>
    </StackPanel>
```

![WinUICommunity](https://raw.githubusercontent.com/WinUICommunity/Resources/main/WinUICommunityDocs/SwitchPresenter.gif)

# Example 4

```xml
<Grid Margin="10"
      ChildrenTransitions="{StaticResource SettingsCardsAnimations}">
    <Grid.RowDefinitions>
        <RowDefinition Height="Auto" />
        <RowDefinition />
    </Grid.RowDefinitions>
    <ToggleSwitch x:Name="LoadingState" />
    <wuc:SwitchPresenter Grid.Row="1"
                         HorizontalAlignment="Center"
                         TargetType="x:Boolean"
                         Value="{x:Bind LoadingState.IsOn, Mode=OneWay}">
        <wuc:Case Value="True">
            <StackPanel HorizontalAlignment="Center"
                        animations:Implicit.HideAnimations="{StaticResource HideTransitions}"
                        animations:Implicit.ShowAnimations="{StaticResource ShowTransitions}"
                        Orientation="Vertical"
                        Spacing="8">
                <ProgressRing IsActive="{x:Bind LoadingState.IsOn, Mode=OneWay}" />
                <TextBlock HorizontalAlignment="Center"
                           Foreground="{ThemeResource TextFillColorSecondaryBrush}"
                           Style="{StaticResource CaptionTextBlockStyle}"
                           Text="Fetching data.." />
            </StackPanel>
        </wui:Case>
        <wuc:Case Value="False">
            <TextBlock HorizontalAlignment="Center"
                       animations:Implicit.HideAnimations="{StaticResource HideTransitions}"
                       animations:Implicit.ShowAnimations="{StaticResource ShowTransitions}"
                       TextAlignment="Center"
                       TextWrapping="WrapWholeWords">
                <Run FontWeight="SemiBold"
                     Text="Content has loaded" />
                <LineBreak />
                <Run Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." />
            </TextBlock>
        </wui:Case>
    </wui:SwitchPresenter>
</Grid>
```

# Demo
you can run [demo](https://github.com/WinUICommunity/WinUICommunity) and see this feature.
