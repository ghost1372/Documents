---
title: GithubTimeLine
---

GithubTimeLine is a Timeline control that Inherited from TreeView

example:

``` xml
<Grid>
 <hc:GithubTimeLine Name="gitTime"/>
<Grid>
```

{% note warning %}
be careful not to put this control in the StackPanel, so you cannot scroll content
{% endnote %}

now you can add some items

``` CS
ObservableCollection<GithubTimeLine> data = new ObservableCollection<GithubTimeLine>();

var item = new GithubTimeLine() { TitleLabel = "3.1.0", TitleInfo = "Aug 11th 2018", TitleStyle = ResourceHelper.GetResource<Style>(ResourceToken.LabelViolet) };
            item.Members.Add(new ContentMember() { ContentTitle = "FIXED", ContentInfo = "Warn when committing to a protected branch", ContentStyle = ResourceHelper.GetResource<Style>(ResourceToken.LabelSuccess) });
            item.Members.Add(new ContentMember() { ContentTitle = "ADDED", ContentInfo = "Warn when committing to a repository you don't have write access to", ContentStyle = ResourceHelper.GetResource<Style>(ResourceToken.LabelSuccess) });
            item.Members.Add(new ContentMember() { ContentTitle = "IMPROVED", ContentInfo = "Adding integration for Xcode as external editor", ContentStyle = ResourceHelper.GetResource<Style>(ResourceToken.LabelPrimary) });
            data.Add(item);
            gitTime.ItemsSource = data;
```

# Attributes
| Property | Description |
| ------------------------ | ----------- |
|          OrderBy         | Sorts the items in ascending or descending order, **Available Types** [**AssendingTitleLabel**, **DessendingTitleLabel**, **AssendingTitleInfo**, **DessendingTitleInfo**] |

![GithubTimeLine](https://raw.githubusercontent.com/ghost1372/HandyControls/develop/Resources/GithubTimeLine.png)
