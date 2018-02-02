Imports DevExpress.Web
Imports DevExpress.Web.Data
Imports SUL.Utilidades

Public Class Formulario_web15
    Inherits System.Web.UI.Page
    Private ds As DataSet = Nothing
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            'gridmsg.DataSource = obtenerMensajesCriterios()
            'gridmsg.DataBind()
            'creaGrillas()

            gridMensajes.AddNewRow()




        End If

        'gridMensajes.SettingsEditing.Mode = GridViewEditingMode.Inline
        'gridMensajes.AddNewRow()



    End Sub

    'Private Sub Formulario_web15_Init(sender As Object, e As EventArgs) Handles Me.Init



    'End Sub

    'Private Sub Formulario_web15_LoadComplete(sender As Object, e As EventArgs) Handles Me.LoadComplete

    'End Sub




    'Public Function obtenerMensajesCriterios() As DataTable

    '    Dim dtsMensajes As DataTable = New DataTable("dtsMensajes")

    '    Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
    '    Dim dtsCriterios As DataTable = DAL.Calidad.Mensajeria.traerCriterios(ssUsuario, 68)
    '    'Dim bandCriterios As GridViewBandColumn = New GridViewBandColumn
    '    'bandCriterios.Caption = "CRITERIOS"
    '    'grid.Columns.Add(bandCriterios)

    '    dtsMensajes.Columns.Add("ID")
    '    dtsMensajes.Columns.Add("NOMBRE")
    '    dtsMensajes.Columns.Add("CARGO")
    '    dtsMensajes.Columns.Add("MAIL")
    '    dtsMensajes.Columns.Add("FONO")
    '    For Each row As DataRow In dtsCriterios.Rows
    '        dtsMensajes.Columns.Add(row.Item("NOMBRE_CORTO_CRI").ToString)
    '    Next
    '    Return dtsMensajes
    'End Function

    'Sub creaGrillas()
    '    Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
    '    Dim dtsCriterios As DataTable = DAL.Calidad.Mensajeria.traerCriterios(ssUsuario, 68)
    '    Dim bandCriterios As GridViewBandColumn = New GridViewBandColumn
    '    bandCriterios.Caption = "CRITERIOS"
    '    Dim bandInfoMsg As GridViewBandColumn = New GridViewBandColumn
    '    gridMensajes.Columns.Add(bandCriterios)


    '    For Each row As DataRow In dtsCriterios.Rows
    '        Dim criterio As GridViewDataTextColumn = New GridViewDataTextColumn
    '        criterio.FieldName = row.Item("EST_QA_MSG_CRI").ToString
    '        criterio.Caption = row.Item("NOMBRE_CORTO_CRI").ToString
    '        bandCriterios.Columns.Add(criterio)
    '    Next



    'End Sub
    'Protected Sub gridMensajes_DataBound(sender As Object, e As EventArgs) Handles gridMensajes.DataBound
    '    Dim grid As ASPxGridView = TryCast(sender, ASPxGridView)
    '    grid.Columns(0).Visible = False

    '    If grid.Columns.IndexOf(grid.Columns("CommandColumn")) <> -1 Then
    '        Return
    '    End If
    '    If grid.Columns.IndexOf(grid.Columns("SOLICITAR")) Then
    '        Dim CK As New GridViewDataCheckColumn()
    '        CK.Name = "SOLICITAR"
    '        CK.VisibleIndex = grid.Columns.IndexOf(grid.Columns("SOLICITAR"))
    '        'grid.Columns.re  Add(CK)
    '    End If
    '    Dim col As New GridViewCommandColumn()
    '    col.Name = "CommandColumn"
    '    col.ShowSelectCheckbox = True
    '    col.VisibleIndex = 0
    '    grid.Columns.Add(col)
    'End Sub

    'Protected Sub gridMensajes_CellEditorInitialize(sender As Object, e As ASPxGridViewEditorEventArgs) Handles gridMensajes.CellEditorInitialize
    '    Dim grid As ASPxGridView = TryCast(sender, ASPxGridView)
    '    ' grid.
    'End Sub

    'Private Sub gridMensajes_CustomColumnDisplayText(sender As Object, e As ASPxGridViewColumnDisplayTextEventArgs) Handles gridMensajes.CustomColumnDisplayText
    '    If e.Column.FieldName = "SOLICITAR" Then
    '        Dim chk As CheckBox = New CheckBox()
    '    End If

    'End Sub
End Class

