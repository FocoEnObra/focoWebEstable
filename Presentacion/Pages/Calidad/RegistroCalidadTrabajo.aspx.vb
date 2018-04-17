Imports System.Drawing
Imports System.IO
Imports DevExpress.Export
Imports DevExpress.Web
Imports DevExpress.Web.Demos
Imports DevExpress.Web.Internal

Public Class Formulario_web112
    Inherits System.Web.UI.Page
    Private extensionsDisplayName_Renamed As Dictionary(Of String, String)
    Private ReadOnly Property ExtensionsDisplayName() As Dictionary(Of String, String)
        Get
            If extensionsDisplayName_Renamed Is Nothing Then
                extensionsDisplayName_Renamed = XDocument.Load(MapPath("~/archivos/ExtensionsDisplayName.xml")).Descendants("Extension").ToDictionary(Function(n) n.Attribute("Extension").Value, Function(n) n.Attribute("DisplayName").Value)
            End If
            Return extensionsDisplayName_Renamed
        End Get
    End Property
    Private Property CurrentView() As FileListView
        Get
            Dim view = Session("View")
            Return If(view Is Nothing, FileListView.Thumbnails, CType(Session("View"), FileListView))
        End Get
        Set(ByVal value As FileListView)
            manejaArchivos.SettingsFileList.View = value
            Session("View") = value
        End Set
    End Property
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        manejaArchivos.SettingsFileList.View = CurrentView
        Dim isDetailsView As Boolean = CurrentView.Equals(FileListView.Details)
        SetFileManagerToolbarItemCheckedState("ChangeView-Thumbnails", (Not isDetailsView))
        SetFileManagerToolbarItemCheckedState("ChangeView-Details", isDetailsView)

        If Page.IsPostBack = False Then
            Dim idRegistro As String = Request.Params("idRegistro")
            'Dim carpeta As String = "/archivos/" & idRegistro & "/"
            Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
            Dim dsregistro As DataSet = DAL.registro.registro.traerRegistro(ssUsuario, idRegistro)
            Dim carpeta As String = "/archivos/" & ssUsuario.EmpresaSelected.Nombre & "/" & idRegistro & "/" & CType(dsregistro.Tables(0).Rows(0).Item("ESTADO_VB"), Integer) + 1 & "/"
            'lblNombreObra.Text = dsRegistro.Tables(0).Rows(0).Item("NOM_PROYECTO").ToString
            lblActividad.Text = dsRegistro.Tables(0).Rows(0).Item("NOMBRE_ACT").ToString
            lblEtapa.Text = dsRegistro.Tables(0).Rows(0).Item("NOMBRE_ETA").ToString
            lblRecinto.Text = dsRegistro.Tables(0).Rows(0).Item("NOMBRE_UCO").ToString
            lblRaiz.Text = dsRegistro.Tables(0).Rows(0).Item("RAIZ").ToString
            lblFechaCrea.Text = dsRegistro.Tables(0).Rows(0).Item("FECHA_CREA").ToString
            lblvb.Text = dsRegistro.Tables(0).Rows(0).Item("FECHA_ULT_VB").ToString
            lblNivel.Text = dsRegistro.Tables(0).Rows(0).Item("NIVEL_VB").ToString
            lblDias.Text = dsRegistro.Tables(0).Rows(0).Item("DIAS_DIF").ToString
            If Not Directory.Exists(Server.MapPath(carpeta)) Then
                Directory.CreateDirectory(Server.MapPath(carpeta))
                Session.Add("xCarpeta", Directory.CreateDirectory(Server.MapPath(carpeta)))
            End If
            manejaArchivos.Settings.RootFolder = carpeta
            manejaArchivos.Settings.ThumbnailFolder = carpeta
            'Else
            '    ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta();", True)
        End If


    End Sub

    Protected Sub manejaArchivos_CustomCallback(ByVal source As Object, ByVal e As CallbackEventArgsBase)
        CurrentView = CType(System.Enum.Parse(GetType(FileListView), e.Parameter.ToString()), FileListView)
    End Sub




    Protected Sub PopupControl_WindowCallback(ByVal source As Object, ByVal e As PopupWindowCallbackArgs)
        Select Case e.Parameter
            Case "Files"
                Dim file = manejaArchivos.SelectedFile
                Dim fileInfo = New FileInfo(MapPath(file.FullName))

                PopupControl.JSProperties("cpHeaderText") = Path.GetFileNameWithoutExtension(fileInfo.FullName)
                Type.Text = ExtensionsDisplayName(file.Extension)
                Size.Text = file.Length.ToString("#,#") & " bytes"
                Created.Text = fileInfo.CreationTime.ToString("U")
                Modified.Text = fileInfo.LastWriteTime.ToString("U")
                Accessed.Text = fileInfo.LastAccessTime.ToString("U")
                FormLayout.FindItemOrGroupByName("Contains").Visible = False
                SetFileManagerItemInfo(file)

        End Select
    End Sub

    Private Sub SetFileManagerItemInfo(ByVal item As FileManagerItem)
        PopupControl.JSProperties("cpHeaderText") &= "Properties"
        Name.Text = item.Name
        Location.Text = item.FullName
        RelativeLocation.Text = item.RelativeName
    End Sub
    Private Sub SetFileManagerToolbarItemCheckedState(ByVal commandName As String, ByVal checkedState As Boolean)
        Dim item = manejaArchivos.SettingsToolbar.Items.FindByCommandName(commandName)
        TryCast(item, FileManagerToolbarCustomButton).Checked = checkedState
    End Sub

    Private Sub ValidateSiteEdit(ByVal e As FileManagerActionEventArgsBase)
        e.Cancel = Utils.IsSiteMode
        e.ErrorText = Utils.GetReadOnlyMessageText()
    End Sub




    Protected Sub grilla_check_CellEditorInitialize(sender As Object, e As DevExpress.Web.ASPxGridViewEditorEventArgs) Handles grilla_check.CellEditorInitialize
        If TypeOf e.Editor Is ASPxCheckBox Then
            Dim editor As ASPxCheckBox = CType(e.Editor, ASPxCheckBox)
            editor.ClientSideEvents.CheckedChanged = "checkedChanged"
        End If

    End Sub



    Protected Sub grilla_check_RowUpdating(sender As Object, e As Data.ASPxDataUpdatingEventArgs) Handles grilla_check.RowUpdating
        e.Cancel = True
        Try
            sqlCheckList.UpdateParameters("ID_REG_CHK").DefaultValue = CLng(e.Keys.Item("ID_REG_CHK"))
            sqlCheckList.UpdateParameters("ESTADO_APROBACION").DefaultValue = 0
            If e.NewValues("ESTADO_APROBACION_APROBADO") = True Then
                sqlCheckList.UpdateParameters("ESTADO_APROBACION").DefaultValue = 1
            End If
            If e.NewValues("ESTADO_APROBACION_CONFALOS") = True Then
                sqlCheckList.UpdateParameters("ESTADO_APROBACION").DefaultValue = -1
            End If
            If e.NewValues("ESTADO_APROBACION_NOAPLICA") = True Then sqlCheckList.UpdateParameters("ESTADO_APROBACION").DefaultValue = -2
            sqlCheckList.UpdateParameters("OBS").DefaultValue = e.NewValues("OBSERVACION_CHK")
            sqlCheckList.Update()
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            sqlCheckList.DataBind()
        End Try
        grilla_check.CancelEdit()

    End Sub

    Protected Sub grilla_check_HtmlRowPrepared(sender As Object, e As ASPxGridViewTableRowEventArgs) Handles grilla_check.HtmlRowPrepared
        If e.RowType <> GridViewRowType.Data Then
            grilla_check.CancelEdit()
            Return

        End If
        Dim check1 As Boolean = e.GetValue("ESTADO_APROBACION_APROBADO")
        Dim check2 As Boolean = e.GetValue("ESTADO_APROBACION_CONFALOS")
        Dim check3 As Boolean = e.GetValue("ESTADO_APROBACION_NOAPLICA")

        If check1 Then e.Row.ForeColor = System.Drawing.Color.Green
        If check2 Then e.Row.ForeColor = System.Drawing.Color.Red
        If check3 Then e.Row.ForeColor = System.Drawing.Color.Silver
        grilla_check.CancelEdit()

    End Sub

    Protected Sub grilla_check_ToolbarItemClick(source As Object, e As Data.ASPxGridViewToolbarItemClickEventArgs) Handles grilla_check.ToolbarItemClick
        Dim grid As ASPxGridView = CType(source, ASPxGridView)
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Dim idRegistro As String = Request.Params("idRegistro")

        Select Case e.Item.Name

            Case "CustomExportToXLS"
                grid.ExportXlsToResponse(New DevExpress.XtraPrinting.XlsExportOptionsEx With {.ExportType = ExportType.WYSIWYG})
            Case "CustomExportToXLSX"
                grid.ExportXlsxToResponse(New DevExpress.XtraPrinting.XlsxExportOptionsEx With {.ExportType = ExportType.WYSIWYG})
            Case "Finalizar"

            Case Else
        End Select
    End Sub

    Protected Sub btnCerrarProtocolo_Click(sender As Object, e As EventArgs) Handles btnCerrarProtocolo.Click
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Dim idRegistro As String = Request.Params("idRegistro")
        Dim dsRespuesta As DataSet = DAL.registro.registro.actualizaEstado(ssUsuario, idRegistro)

        If CType(dsRespuesta.Tables(0).Rows(0).Item("ESTADO_APROB"), Integer) = 0 Then
            ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta(resp=0);", True)
            Exit Sub
        End If

        If dsRespuesta.Tables(0).Rows(0).Item("ESTADO_APROB") = -1 Then
            ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta(resp=-1);", True)
            Exit Sub
        End If
        If dsRespuesta.Tables(0).Rows(0).Item("ESTADO_APROB") = -3 Then
            ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta(resp=-3);", True)
            Exit Sub
        End If

        If dsRespuesta.Tables(0).Rows(0).Item("ESTADO_APROB") = 1 Then
            ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta(resp=1);", True)
        End If


        ' Response.Redirect("RegistrosCalidadListado.aspx")
    End Sub

    Protected Sub manejaArchivos_FileUploading(source As Object, e As FileManagerFileUploadEventArgs) Handles manejaArchivos.FileUploading
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Dim idRegistro As String = Request.Params("idRegistro")
        Dim dsregistro As DataSet = DAL.registro.registro.traerRegistro(ssUsuario, idRegistro)
        Dim result As Boolean = DAL.Calidad.Archivo.insertarArchivo(ssUsuario, e.File.Folder.FullName, e.File.Name.ToUpper, idRegistro, CType(dsregistro.Tables(0).Rows(0).Item("ESTADO_VB"), Integer) + 1)
    End Sub

    Protected Sub manejaArchivos_ItemDeleting(source As Object, e As FileManagerItemDeleteEventArgs) Handles manejaArchivos.ItemDeleting

        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Dim idRegistro As String = Request.Params("idRegistro")
        Dim result As Boolean = DAL.Calidad.Archivo.modificarEstadoADJ(ssUsuario, idRegistro, e.Item.Name.ToString)



    End Sub
End Class