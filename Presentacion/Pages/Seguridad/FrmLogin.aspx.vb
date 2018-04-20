Imports System.Net
Imports System.Data.SqlClient
Imports System.Windows.Forms

Public Class FrmLogin
    Inherits System.Web.UI.Page
    Dim ip As String = ""
    Dim hostName As String = ""
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim vRazon As String = Request.QueryString("Raz")
        Response.AppendHeader("Cache-Control", "no-cache, no-store, must-revalidate")
        ' HTTP 1.1.
        Response.AppendHeader("Pragma", "no-cache")
        ' HTTP 1.0.
        Response.AppendHeader("Expires", "0")
        ' Proxies.
        Session.Clear()
        If Not String.IsNullOrWhiteSpace(vRazon) Then
            Select Case vRazon
                Case "1" 'La session caducó o el intento de ingreso no es válido.
                Case "2" 'El usuario no tiene empresas.
                Case "3"
            End Select
        End If
    End Sub
    Private Sub Ingresar()
        Dim vUser As DAL.Seguridad.UsuarioSistema
        Try
            Dim dtEmpresas As DataTable = New DataTable
            ' pendiente..  
            vUser = DAL.Seguridad.Usuario.Ingresar(fname.Value.ToLower, fpass.Value.ToLower, "Data Source=192.168.1.52;Initial Catalog=Foco_WebMaster;Integrated Security=False;Connect Timeout=200;USER ID=foco_webmaster;password=Foco38Web1835", "192.168.0.102", "")
            dtEmpresas = vUser.Empresas
            Session.Add("xEMPRESA", dtEmpresas)
        Catch sqlEx As SqlException
            Exit Sub
        Catch ex As Exception
            Exit Sub
        End Try
        If vUser IsNot Nothing Then
            If vUser.Empresas.Rows.Count = 0 Then
            Else
                If vUser.Empresas.Rows.Count = 1 Then
                    'Solo tiene una empresa
                    'Usuario.
                    DAL.Seguridad.Usuario.CargarParticular(vUser)
                End If
                'Podemos redireccionar
                Session.Add("xSSN_USUARIO", vUser)
                vUser.LoggedIn = True
                vUser.ID_PARTICULAR.ToString()
                Session.Add("xUser", vUser.ID_PARTICULAR.ToString())
                Response.Redirect(ConfigurationManager.AppSettings("PaginaInicio"))
            End If
        Else
        End If
    End Sub
    Private Sub ObtenerHost()
        Dim strHostName As String = Dns.GetHostName()
        Dim ipEntry As IPHostEntry = Dns.GetHostEntry(strHostName)
        ip = Convert.ToString(ipEntry.AddressList(ipEntry.AddressList.Length - 1))
        hostName = Convert.ToString(ipEntry.HostName)
        Dim IPAdd As String = String.Empty
        IPAdd = Request.ServerVariables("HTTP_X_FORWARDED_FOR")
        If String.IsNullOrEmpty(IPAdd) Then
            IPAdd = Request.ServerVariables("REMOTE_ADDR")
            ip = IPAdd
        End If
    End Sub
    Sub Ingresar_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Ingresar()
    End Sub
End Class