Imports System
Imports System.Threading

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
    End Sub

    Protected Sub gridView_HtmlRowCreated(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxGridViewTableRowEventArgs)
       ' Thread.Sleep(100);
    End Sub
End Class