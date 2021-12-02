<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v21.2, Version=21.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body, html {
            padding: 0;
            margin: 0;
        }
    </style>
    <script type="text/javascript">
        function OnInit(s, e) {
            AdjustSize();
            document.getElementById("gridContainer").style.visibility = "";
        }
        function OnEndCallback(s, e) {
            AdjustSize();
        }
        function OnControlsInitialized(s, e) {
            ASPxClientUtils.AttachEventToElement(window, "resize", function (evt) {
                AdjustSize();
            });
        }
        function AdjustSize() {
            var height = Math.max(0, document.documentElement.clientHeight);
            grid.SetHeight(height);
        }
    </script>
</head>
<body style="overflow: hidden">
    <form id="form1" runat="server">
        <div id="gridContainer" style="visibility: hidden">
            <dx:ASPxGridView runat="server" ID="gridView" ClientInstanceName="grid" AutoGenerateColumns="true"
                Width="100%" DataSourceID="ds" KeyFieldName="OrderID" OnHtmlRowCreated="gridView_HtmlRowCreated">
                <SettingsPager PageSize="50" />
                <Settings VerticalScrollBarMode="Visible" VerticalScrollableHeight="0" />
                <ClientSideEvents Init="OnInit" EndCallback="OnEndCallback" />
            </dx:ASPxGridView>
        </div>
        <asp:AccessDataSource ID="ds" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT TOP 200 * FROM [Orders]"></asp:AccessDataSource>
        <dx:ASPxGlobalEvents ID="ge" runat="server">
            <ClientSideEvents ControlsInitialized="OnControlsInitialized" />
        </dx:ASPxGlobalEvents>

    </form>
</body>
</html>