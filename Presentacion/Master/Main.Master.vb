Public Class Main
    Inherits System.Web.UI.MasterPage



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Page.ClientScript.GetPostBackEventReference(Me, "")
        Dim sUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        If Not Page.IsPostBack Then

            lblUsuario.Text = sUsuario.NickName & " - " & sUsuario.EmpresaSelected.Nombre
            lbl_obra.Text = sUsuario.EmpresaSelected.ObraNombreSelected
        End If



    End Sub

    Private Sub CargarObras()







        'Try
        '    Dim dt As New DataTable
        'dt = DAL.Empresa.Obra.ListarObrasUsuario(Session("xSSN_USUARIO"))
        '    If dt.Rows.Count > 0 Then
        '        lblProyecto.Text = dt.Rows.Item(0).ToString
        '    Else
        '        lblProyecto.Text = "NINGUNA"
        '    End If

        'Catch ex As Exception
        'End Try


    End Sub

    'Private Sub lnk_CM_ServerClick(sender As Object, e As System.EventArgs) Handles lnk_CM.ServerClick
    '    Response.Redirect("~/Sistema/FrmInicio.aspx", False)
    'End Sub

    'Private Sub lnk_exit_ServerClick(sender As Object, e As System.EventArgs) Handles lnk_exit.ServerClick
    '    Response.Redirect("../Seguridad/FrmLogin.aspx?Raz=3")
    'End Sub

    Private Sub CargarEmpresa()
        'Dim emp As DataTable = Session.Contents("xEMPRESA")

        'Dim nombreEmpresa As String = emp.Rows(0).Item(1).ToString

        'Dim usuario As String = Trim(Session.Contents("xUser"))

        'If emp.Rows.Count = 1 Then
        '    lblUsuario.Text = usuario.ToUpper 'emp.Rows(0).Item(1).ToString
        '    ' lblEmpresa.Text = nombreEmpresa.ToUpper
        '    lblEmpresaMenu.Text = nombreEmpresa.ToUpper

        'End If


    End Sub

    <System.Web.Services.WebMethod()>
    Public Shared Sub setProyecto(ByVal hObraid As String, ByVal hObraNombre As String)
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = HttpContext.Current.Session.Contents("xSSN_USUARIO")
        ssUsuario.EmpresaSelected.ObraNombreSelected = hObraNombre
        ssUsuario.EmpresaSelected.ObraIDSelected = hObraid
        HttpContext.Current.Session.Add("idObra", hObraid)
        HttpContext.Current.Session.Add("xSSN_USUARIO", ssUsuario)

    End Sub
End Class