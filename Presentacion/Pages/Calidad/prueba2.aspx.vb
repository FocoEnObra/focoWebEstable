Public Class Formulario_web15
    Inherits System.Web.UI.Page
    Private ds As DataSet = Nothing
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then






        End If




    End Sub

    Protected Sub GridVb_RowInserted(sender As Object, e As DevExpress.Web.Data.ASPxDataInsertedEventArgs) Handles GridVb.RowInserted



    End Sub

    Protected Sub GridVb_RowInserting(sender As Object, e As DevExpress.Web.Data.ASPxDataInsertingEventArgs) Handles GridVb.RowInserting
        Dim X As String = e.NewValues("USUARIOS")
        Dim A As String


        A = X


    End Sub
End Class

