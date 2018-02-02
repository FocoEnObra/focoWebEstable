Imports DevExpress.Web

Public Class Formulario_web14
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Not IsPostBack) Then
            Grid.StartEdit(0)
        End If
    End Sub



    Protected Sub Grid_CellEditorInitialize(ByVal sender As Object, ByVal e As ASPxGridViewEditorEventArgs)
        If e.Column.FieldName = "ID_TIP" Then
            Dim combo = CType(e.Editor, ASPxComboBox)
            AddHandler combo.Callback, AddressOf combo_Callback
            Dim grid = e.Column.Grid
            If (Not combo.IsCallback) Then
                Dim ID_TUC = -1
                If (Not grid.IsNewRowEditing) Then
                    ID_TUC = CInt(Fix(grid.GetRowValues(e.VisibleIndex, "ID_TUC")))
                End If
                FillTipologiaComboBox(combo, ID_TUC)
            End If
        End If
    End Sub

    Private Sub combo_Callback(ByVal sender As Object, ByVal e As CallbackEventArgsBase)
        Dim ID_TUC = -1
        Int32.TryParse(e.Parameter, ID_TUC)
        FillTipologiaComboBox(TryCast(sender, ASPxComboBox), ID_TUC)
    End Sub

    Protected Sub FillTipologiaComboBox(ByVal combo As ASPxComboBox, ByVal ID_TUC As Integer)
        combo.DataSourceID = "sqlTipologias"
        sqlTipologias.SelectParameters("ID_TUC").DefaultValue = ID_TUC.ToString()
        combo.DataBindItems()

        combo.Items.Insert(0, New ListEditItem("", Nothing)) ' Null Item
    End Sub

End Class