Imports System.IO
Imports DevExpress.Web
Imports DevExpress.Web.Bootstrap
Imports DevExpress.Web.Data
Imports DevExpress.Web.Demos

Public Class Formulario_web16
    Inherits System.Web.UI.Page



    Private Const UploadDirectory As String = "~/archivos/"

    Protected Sub ddlProyectos_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlProyectos.SelectedIndexChanged
        Session.Add("idObra", ddlProyectos.SelectedItem.Value)
        'lblProyecto.Text = ddlProyectos.SelectedItem.Text
        Dim codigo As String
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        codigo = DAL.Calidad.Actividad.GeneraCodigoActividad(ssUsuario, ddlProyectos.Value)
        codigotexto.Value = codigo
        Session.Add("xCodigo", codigo)
        'lblProyecto_nombre.Text = ddlProyectos.Text
        'lblPLantillaCodigo.Text = codigotexto.Text
        'lblPlantillaNombre.Text = txtnombre.Text


    End Sub

    Protected Sub btnNuevaActividad_Click(sender As Object, e As EventArgs) Handles btnNuevaActividad.Click
        Dim newAct As Boolean
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        newAct = DAL.Calidad.Actividad.insertarActividades(ssUsuario, ssUsuario.ID_MAESTRO, Session.Contents("idObra"), ddlEtapa.SelectedItem.Value, "1", txtAct_Nombre.Value)
        If newAct = True Then
            'mensaje
            dllActividad.DataBind()
            'lblProyecto_nombre.Text = ddlProyectos.Text
            'lblPLantillaCodigo.Text = codigotexto.Text
            'lblPlantillaNombre.Text = txtnombre.Text
            dllActividad.Text = txtAct_Nombre.Value
            txtEtapa.Text = ddlEtapa.Text
            'lblActividad.Text = dllActividad.Text



            ' Los iconos de arriba

            lblObra.Text = ddlProyectos.Text
            'lblPlnCod.Text = codigotexto.Text
            lblPlnNom.Text = txtnombre.Text
            lblAct.Text = dllActividad.Text

            '------  
        Else
            'mensaje 
        End If





    End Sub

    Protected Sub dllActividad_SelectedIndexChanged(sender As Object, e As EventArgs) Handles dllActividad.SelectedIndexChanged
        Dim nombreEtapa As String
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Session.Add("xActividad", dllActividad.Value)

        nombreEtapa = DAL.Calidad.Actividad.buscarEtapa(ssUsuario, dllActividad.Value)
        'lblProyecto_nombre.Text = ddlProyectos.Text
        'lblPLantillaCodigo.Text = codigotexto.Text
        'lblPlantillaNombre.Text = txtnombre.Text

        ' Los iconos de arriba

        lblObra.Text = ddlProyectos.Text
        '  lblPlnCod.Text = codigotexto.Text
        lblPlnNom.Text = txtnombre.Text
        lblAct.Text = dllActividad.Text

        '------  

        txtEtapa.Text = nombreEtapa


    End Sub

#Region "Web method"
    <System.Web.Services.WebMethod()>
    Public Shared Sub guardaPaso_1(idObr As Integer, codPlt As String, nomPlt As String, idAct As Integer, obs As String)
        'Public Shared Sub guardaPaso1()
        Dim newPlantilla As Boolean
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = HttpContext.Current.Session.Contents("xSSN_USUARIO")
        'newPlantilla = DAL.Calidad.Plantilla.insertarPlantilla(ssUsuario, ssUsuario.ID_MAESTRO, codigotexto.Text, HttpContext.Current.Session.Contents("idObra"), dllActividad.Value, 1, txtnombre.Text, txtMemPbservaciones.Text)

        Dim ID_ACC_PLT As Integer

        If HttpContext.Current.Session("ID_ACC_PLT") Is Nothing Then
            'newPlantilla = DAL.Calidad.Plantilla.insertarPlantilla(ssUsuario, ssUsuario.ID_MAESTRO, HttpContext.Current.Session.Contents("xCodigo"), HttpContext.Current.Session.Contents("idObra"), 1, HttpContext.Current.Session.Contents("xActividad"), HttpContext.Current.Session.Contents("xtxtNombre"), HttpContext.Current.Session.Contents("xObs"))
            newPlantilla = DAL.Calidad.Plantilla.insertarPlantilla(ssUsuario, ssUsuario.ID_MAESTRO, codPlt, idObr, 1, idAct, nomPlt, obs)
            ID_ACC_PLT = DAL.Calidad.Plantilla.traeUltimoFolio(ssUsuario, "qa_acc_plt")
            HttpContext.Current.Session.Add("ID_ACC_PLT", ID_ACC_PLT)
        Else
            ' newPlantilla = DAL.Calidad.Plantilla.modificarrPlantilla(ssUsuario, ssUsuario.ID_MAESTRO, HttpContext.Current.Session.Contents("ID_ACC_PLT"), HttpContext.Current.Session.Contents("xCodigo"), HttpContext.Current.Session.Contents("idObra"), 1, HttpContext.Current.Session.Contents("xActividad"), HttpContext.Current.Session.Contents("xtxtNombre"), HttpContext.Current.Session.Contents("xObs"))
            newPlantilla = DAL.Calidad.Plantilla.modificarrPlantilla(ssUsuario, ssUsuario.ID_MAESTRO, HttpContext.Current.Session.Contents("ID_ACC_PLT"), codPlt, idObr, idAct, 1, nomPlt, obs)
        End If
    End Sub

    <System.Web.Services.WebMethod()>
    Public Shared Sub guardaGrupo(ByVal nombreGrupo As String)
        Dim newGrupo As Boolean
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = HttpContext.Current.Session.Contents("xSSN_USUARIO")
        newGrupo = DAL.Calidad.Actividad.insertarGrupoActividad(ssUsuario, nombreGrupo)

    End Sub



    Protected Sub txtnombre_ValueChanged(sender As Object, e As EventArgs) Handles txtnombre.ValueChanged
        Session.Add("xtxtNombre", txtnombre.Value)
    End Sub

    Protected Sub txtMemPbservaciones_ValueChanged(sender As Object, e As EventArgs) Handles txtMemPbservaciones.ValueChanged
        Session.Add("xObs", txtMemPbservaciones.Text)
    End Sub

    Protected Sub codigotexto_TextChanged(sender As Object, e As EventArgs) Handles codigotexto.TextChanged
        Session.Add("xCodigo", codigotexto.Text)
    End Sub
#End Region
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

    Private Sub Formulario_web16_Load(sender As Object, e As EventArgs) Handles Me.Load
        If (Not IsPostBack) Then

            Grid.StartEdit(0)
            '  lblFecha.Text = Date.Today.ToLongDateString
            limpiarVariables()

        End If






    End Sub

    Protected Sub GridVb_CellEditorInitialize(sender As Object, e As ASPxGridViewEditorEventArgs) Handles GridVb.CellEditorInitialize
        If (e.Column.FieldName = "ORDEN_VB") Then
            Dim cbx As ASPxComboBox = TryCast(e.Editor, ASPxComboBox)
            cbx.SelectedIndex = 0

        End If
    End Sub



    Protected Sub UploadControl_FileUploadComplete(ByVal sender As Object, ByVal e As FileUploadCompleteEventArgs)
        Dim resultExtension As String = Path.GetExtension(e.UploadedFile.FileName)
        Dim resultFileName As String = Path.ChangeExtension(Path.GetRandomFileName(), resultExtension)
        Dim resultFileUrl As String = UploadDirectory & resultFileName
        Dim resultFilePath As String = MapPath(resultFileUrl)
        e.UploadedFile.SaveAs(resultFilePath)
        UploadingUtils.RemoveFileWithDelay(resultFileName, resultFilePath, 5)
        Dim name As String = e.UploadedFile.FileName
        Dim url As String = ResolveClientUrl(resultFileUrl)
        Dim sizeInKilobytes As Long = e.UploadedFile.ContentLength / 1024
        Dim sizeText As String = sizeInKilobytes.ToString() & " KB"
        e.CallbackData = name & "|" & url & "|" & sizeText

    End Sub

    Private Sub btnNuevoGrupo_Click(sender As Object, e As EventArgs) Handles btnNuevoGrupo.Click
        Dim newGrupo As Boolean
        Dim grupo As String
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        grupo = txtNuevoGrupo.Value
        newGrupo = DAL.Calidad.Actividad.insertarGrupoActividad(ssUsuario, grupo)
        If newGrupo = True Then



        End If
    End Sub

    Protected Sub txtMemPbservaciones_TextChanged(sender As Object, e As EventArgs) Handles txtMemPbservaciones.TextChanged
        Session.Add("xObs", txtMemPbservaciones.Text)
    End Sub

    Protected Sub Grid_InitNewRow(sender As Object, e As ASPxDataInitNewRowEventArgs) Handles Grid.InitNewRow

        If Session("ID_ACC_PLT") Is Nothing Then
            Dim newPlantilla As Boolean
            Dim ssUsuario As DAL.Seguridad.UsuarioSistema = HttpContext.Current.Session.Contents("xSSN_USUARIO")
            newPlantilla = DAL.Calidad.Plantilla.insertarPlantilla(ssUsuario, ssUsuario.ID_MAESTRO, HttpContext.Current.Session.Contents("xCodigo"), HttpContext.Current.Session.Contents("idObra"), 1, HttpContext.Current.Session.Contents("xActividad"), HttpContext.Current.Session.Contents("xtxtNombre"), HttpContext.Current.Session.Contents("xObs"))
            Dim ID_ACC_PLT As Integer = DAL.Calidad.Plantilla.traeUltimoFolio(ssUsuario, "qa_acc_plt")
            e.NewValues("ID_ACC_PLT") = ID_ACC_PLT
            Session.Add("ID_ACC_PLT", ID_ACC_PLT)



        End If

    End Sub

    Protected Sub Grid_DataBound(sender As Object, e As EventArgs) Handles Grid.DataBound
        ' Grid.Columns("ID_ACC_PLT").Visible = False
    End Sub


    Private Sub limpiarVariables()
        Session.Remove("ID_ACC_PLT")
        Session.Remove("xCodigo")
        Session.Remove("idObra")
        Session.Remove("xActividad")
        Session.Remove("xtxtNombre")
        Session.Remove("xObs")

    End Sub

    Protected Sub GridVb_RowInserting(sender As Object, e As ASPxDataInsertingEventArgs) Handles GridVb.RowInserting
        Dim ultimoValor As String = e.NewValues("ORDEN_VB").ToString
        e.NewValues("ID_PLT_VB_PRED") = ultimoValor

        ' Session.Add("ID_PLT_VB_PRED", ultimoValor)


    End Sub

    Protected Sub grillaCheck_InitNewRow(sender As Object, e As ASPxDataInitNewRowEventArgs) Handles grillaCheck.InitNewRow

    End Sub
End Class