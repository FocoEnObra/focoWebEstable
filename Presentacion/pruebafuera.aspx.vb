Imports DevExpress.Web
Public Class pruebafuera
    Inherits System.Web.UI.Page
    Private dsGrilla As DataSet = Nothing
    Private Sub pruebafuera_Init(sender As Object, e As EventArgs) Handles Me.Init
        If (Not IsPostBack) OrElse (Session("DataSet") Is Nothing) Then
            dsGrilla = New DataSet()
            'Dim dtMensajes1 As New DataTable()
            Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
            Dim dtMensajes As DataTable = DAL.Calidad.Mensajeria.traerMensajesCriterios(ssUsuario, 68)
            dtMensajes.PrimaryKey = New DataColumn() {dtMensajes.Columns("ID_QA_MSG")}
            creaGrillas()
            'Dim dtCriterios As New DataTable()
            'dtCriterios.Columns.Add("ID", GetType(Integer))
            'dtCriterios.Columns.Add("MasterID", GetType(Integer))
            'dtCriterios.Columns.Add("Data", GetType(String))
            'dtCriterios.PrimaryKey = New DataColumn() {dtCriterios.Columns("ID")}
            'Dim index As Integer = 0



            'For i As Integer = 0 To 19
            '    dtMensajes.Rows.Add(New Object() {i, "Master Row " & i})
            '    For j As Integer = 0 To 4
            '        dtCriterios.Rows.Add(New Object() {index, i, "Detail Row " & j})
            '        index += 1
            '    Next j
            'Next i
            dsGrilla.Tables.Add(dtMensajes)
            Session("DataSet") = dsGrilla
        Else
            dsGrilla = DirectCast(Session("DataSet"), DataSet)
        End If
        grillaMensajes.DataSource = dsGrilla.Tables(0)
        grillaMensajes.SettingsEditing.Mode = GridViewEditingMode.Inline
        grillaMensajes.DataBind()
        grillaMensajes.AddNewRow()

    End Sub
    'Protected Sub ASPxGridView2_BeforePerformDataSelect(ByVal sender As Object, ByVal e As EventArgs)
    '    dsMensajes = DirectCast(Session("DataSet"), DataSet)
    '    Dim detailTable As DataTable = dsMensajes.Tables(1)
    '    Dim dv As New DataView(detailTable)
    '    Dim detailGridView As ASPxGridView = DirectCast(sender, ASPxGridView)
    '    dv.RowFilter = "MasterID = " & detailGridView.GetMasterRowKeyValue()
    '    detailGridView.DataSource = dv
    'End Sub
    Protected Sub grillaMensajes_RowUpdating(ByVal sender As Object, ByVal e As DevExpress.Web.Data.ASPxDataUpdatingEventArgs)
        dsGrilla = DirectCast(Session("DataSet"), DataSet)
        Dim gridView As ASPxGridView = DirectCast(sender, ASPxGridView)
        Dim dataTable As DataTable = If(gridView.GetMasterRowKeyValue() IsNot Nothing, dsGrilla.Tables(1), dsGrilla.Tables(0))
        Dim row As DataRow = dataTable.Rows.Find(e.Keys(0))
        Dim enumerator As IDictionaryEnumerator = e.NewValues.GetEnumerator()
        enumerator.Reset()
        Do While enumerator.MoveNext()
            row(enumerator.Key.ToString()) = enumerator.Value
        Loop
        gridView.CancelEdit()
        e.Cancel = True
    End Sub
    Protected Sub grillaMensajes_RowInserting(ByVal sender As Object, ByVal e As DevExpress.Web.Data.ASPxDataInsertingEventArgs)
        dsGrilla = DirectCast(Session("DataSet"), DataSet)
        Dim gridView As ASPxGridView = DirectCast(sender, ASPxGridView)
        Dim dataTable As DataTable = If(gridView.GetMasterRowKeyValue() IsNot Nothing, dsGrilla.Tables(1), dsGrilla.Tables(0))
        Dim row As DataRow = dataTable.NewRow()
        e.NewValues("ID_QA_MSG") = GetNewId()
        Dim enumerator As IDictionaryEnumerator = e.NewValues.GetEnumerator()
        enumerator.Reset()
        Do While enumerator.MoveNext()
            If enumerator.Key.ToString() <> "Count" Then
                row(enumerator.Key.ToString()) = enumerator.Value
            End If
        Loop
        gridView.CancelEdit()
        e.Cancel = True
        dataTable.Rows.Add(row)
    End Sub

    Protected Sub grillaMensajes_RowDeleting(ByVal sender As Object, ByVal e As DevExpress.Web.Data.ASPxDataDeletingEventArgs)
        Dim i As Integer = grillaMensajes.FindVisibleIndexByKeyValue(e.Keys(grillaMensajes.KeyFieldName))
        Dim c As Control = grillaMensajes.FindDetailRowTemplateControl(i, "ASPxGridView2")
        e.Cancel = True
        dsGrilla = DirectCast(Session("DataSet"), DataSet)
        dsGrilla.Tables(0).Rows.Remove(dsGrilla.Tables(0).Rows.Find(e.Keys(grillaMensajes.KeyFieldName)))

    End Sub



    Private Function GetNewId() As Integer
        dsGrilla = DirectCast(Session("DataSet"), DataSet)
        Dim table As DataTable = dsGrilla.Tables(0)
        If table.Rows.Count = 0 Then
            Return 0
        End If
        Dim max As Integer = Convert.ToInt32(table.Rows(0)("ID_QA_MSG"))
        For i As Integer = 1 To table.Rows.Count - 1
            If Convert.ToInt32(table.Rows(i)("ID_QA_MSG")) > max Then
                max = Convert.ToInt32(table.Rows(i)("ID_QA_MSG"))
            End If
        Next i
        Return max + 1
    End Function


    Sub creaGrillas()
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Dim dtsCriterios As DataTable = DAL.Calidad.Mensajeria.traerCriterios(ssUsuario, 68)

        Dim columnComand As New GridViewCommandColumn()
        grillaMensajes.Columns.Add(columnComand)
        columnComand.ShowEditButton = True
        columnComand.ShowUpdateButton = True
        columnComand.ShowNewButtonInHeader = True
        Dim bandCriterios As GridViewBandColumn = New GridViewBandColumn
        bandCriterios.Caption = "CRITERIOS"
        Dim bandInfoMsg As GridViewBandColumn = New GridViewBandColumn
        bandInfoMsg.Caption = "MENSAJERIA"
        grillaMensajes.Columns.Add(bandInfoMsg)
        Dim id As GridViewDataTextColumn = New GridViewDataTextColumn
        id.Caption = "ID"
        id.FieldName = "ID_QA_MSG"
        bandInfoMsg.Columns.Add(id)
        Dim NOMBRE As GridViewDataTextColumn = New GridViewDataTextColumn
        NOMBRE.Caption = "NOMBRE"
        NOMBRE.FieldName = "NOMBRE_MSG"
        bandInfoMsg.Columns.Add(NOMBRE)
        Dim CARGO As GridViewDataTextColumn = New GridViewDataTextColumn
        CARGO.Caption = "CARGO"
        CARGO.FieldName = "CARGO_MSG"
        bandInfoMsg.Columns.Add(CARGO)
        Dim MAIL As GridViewDataTextColumn = New GridViewDataTextColumn
        MAIL.Caption = "MAIL"
        MAIL.FieldName = "MAIL_MSG"
        bandInfoMsg.Columns.Add(MAIL)
        Dim FONO As GridViewDataTextColumn = New GridViewDataTextColumn
        FONO.Caption = "FONO"
        FONO.FieldName = "FONO_MSG"
        bandInfoMsg.Columns.Add(FONO)
        grillaMensajes.Columns.Add(bandCriterios)
        For Each row As DataRow In dtsCriterios.Rows
            Dim criterio As GridViewDataCheckColumn = New GridViewDataCheckColumn
            criterio.Caption = row.Item("NOMBRE_CORTO_CRI").ToString
            criterio.FieldName = row.Item("EST_QA_MSG_CRI")
            bandCriterios.Columns.Add(criterio)
        Next



    End Sub

End Class