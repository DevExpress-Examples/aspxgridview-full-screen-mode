<!-- default badges list -->
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E1081)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to use grid (with vertical scrollbar) in Full Screen mode (100% Width and Height)
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/128543594/)**
<!-- run online end -->


<p>This example demonstrates how to resize the ASPxGridView control based on the browser window size.<br><br><strong>Update:</strong><br>To keep the visual grid's size intact while adjusting it on the first load, wrap ASPxGridView with a hidden container and show it only after its full initialization and adjustment. For example:</p>


```aspx
<div id="gridContainer" style="visibility: hidden">
    <dx:ASPxGridView runat="server" ID="gridView" ...>
        ...
    </dx:ASPxGridView>
</div>
```




```js
function OnInit(s, e) {
    AdjustSize();
    document.getElementById("gridContainer").style.visibility = "";
}

```


<p><strong><br>MVC Version:<br></strong><a href="https://www.devexpress.com/Support/Center/p/E3958">How to use the GridView extension in a Full Screen mode (100% browser Width and Height)</a><strong><br><br>See Also:<br></strong><a href="https://www.devexpress.com/Support/Center/p/E3958">How to use the GridView extension in a Full Screen mode (100% browser Width and Height)</a><a href="https://www.devexpress.com/Support/Center/p/E3940">How to use the ASPxPageControl control in a Full Screen mode (100% browser Width and Height)</a><br></p>


<h3>Description</h3>

<p><strong>Note:</strong> This approach is now <strong>obsolete</strong>, since it manipulates the internal ASPxGridView&#39;s HTML element and requires some HTML customization.</p><p>We cannot make this feature built-in because it is html page specific. <br />
To accomplish this task, you should:<br />
1) Put the gridView into a control which height will be changed on changing the browser window height.<br />
2) Update the vertical scrollable div height on changing the browser window size, on gridview init and on gridview callback.</p><p>To deal with the first task, we set the following style for the body tag: style=&quot;height:100%;min-height:100%;margin:0;padding:0&quot; and place the grid inside the div (its style=&quot;height:100%;position:absolute;width:98%;overflow: hidden;&quot;).<br />
To deal with the second task, we call the custom SynhronizeMyGridHeight() java script method on window resize (DOM event) and on gridview client events: &quot;Init&quot; and &quot;EndCallback&quot;.</p>

<br/>


