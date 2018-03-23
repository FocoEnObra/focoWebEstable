Imports DAL.Seguridad

Public Class Formulario_web110
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        If Page.IsPostBack = False Then
            btn_Filtrar.Visible = False
            Dim xlbl_obra As Label = CType(Me.Master.FindControl("lbl_obra"), Label)
            Dim valorobras As HiddenField = CType(Me.Master.FindControl("hObraid"), HiddenField)
            Dim sUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
            If sUsuario.EmpresaSelected.ObraNombreSelected = "" Then
                xlbl_obra.Text = "sin obras listado"
            Else
                '  lbl_obra.Text = "Proyecto [ " & sUsuario.EmpresaSelected.ObraNombreSelected & " ]"
                xlbl_obra.Text = sUsuario.EmpresaSelected.ObraNombreSelected
                valorobras.Value = sUsuario.EmpresaSelected.ObraIDSelected
                Session.Add("idObra", sUsuario.EmpresaSelected.ObraIDSelected)
            End If
            gridActividades.DataBind()

        End If



    End Sub


    <System.Web.Services.WebMethod()>
    Public Shared Sub setProyecto(ByVal hObraid As String, ByVal hObraNombre As String)
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = HttpContext.Current.Session.Contents("xSSN_USUARIO")
        ssUsuario.EmpresaSelected.ObraNombreSelected = hObraNombre
        ssUsuario.EmpresaSelected.ObraIDSelected = hObraid
        HttpContext.Current.Session.Add("idObra", hObraid)
        HttpContext.Current.Session.Add("xSSN_USUARIO", ssUsuario)

    End Sub
    Protected Sub btn_Filtrar_Click(sender As Object, e As EventArgs) Handles btn_Filtrar.Click
        'Dim ssUsuario As DAL.Seguridad.UsuarioSistema = HttpContext.Current.Session.Contents("xSSN_USUARIO")
        'Dim proyecto As Integer = ssUsuario.EmpresaSelected.ObraIDSelected
        'Dim etapa As String = tknEtapa.Value
        'Dim actividad As String = tknActividad.Value
        'Dim estado As String = tknEstado.Value
        ''Session("etapa") = etapa
        'Session("actividad") = actividad
        'Session("estado") = estado

        'gridActividades.DataBind()


    End Sub

    Protected Sub sqlCalidad_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles sqlCalidad.Selecting

    End Sub
End Class