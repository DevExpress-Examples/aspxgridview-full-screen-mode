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


<p><strong><br>MVC Version:<br></strong><a href="https://supportcenter.devexpress.com/ticket/details/t830635/how-to-use-the-gridview-extension-in-full-screen-mode-100-browser-width-and-height">How to use the GridView extension in a Full Screen mode (100% browser Width and Height)</a><strong><br><br>See Also:<br></strong><a href="https://supportcenter.devexpress.com/ticket/details/t830635/how-to-use-the-gridview-extension-in-full-screen-mode-100-browser-width-and-height">How to use the GridView extension in a Full Screen mode (100% browser Width and Height)</a><a href="https://supportcenter.devexpress.com/ticket/details/t830634/how-to-use-the-aspxpagecontrol-control-in-full-screen-mode-100-browser-width-and-height">How to use the ASPxPageControl control in a Full Screen mode (100% browser Width and Height)</a><br></p>


<h3>Description</h3>

<p><strong>Note:</strong> Starting from version <strong>v2009 vol 3</strong> use the following approach:</p>
<p>1) Implement the javascript function that should resize the ASPxGridView's HTML element size according to a browser window size (via the <strong>ASPxClientGridView.SetHeight</strong> and <strong>ASPxClientGridView.SetWidth</strong> methods);<br> 2) Attach the global "<strong>window</strong><strong>"</strong> object "<strong>resize</strong><strong>"</strong> event handler (to handle a state when a browser window is resized) and call the define function to resize ASPxGridView on the client side;<br> 3) Handle client-side<strong> ASPxClientGridView.Init</strong> (to handle a state when the ASPxGridView's client-side programmatic object is initiated) and <strong>ASPxClientGridView.EndCallback</strong> events (to handle a state when the ASPxGridView's rendering is changed by reaction to the end-user manipulation) and call the define function to resize ASPxGridView on the client side.</p>

<br/>


