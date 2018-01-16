Public Class Formulario_web16
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub



    Protected Sub ddlProyectos_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlProyectos.SelectedIndexChanged
        Session.Add("idObra", ddlProyectos.SelectedItem.Value)
        lblProyecto.Text = ddlProyectos.SelectedItem.Text
        Dim codigo As String
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        codigo = DAL.Calidad.Actividad.GeneraCodigoActividad(ssUsuario, ddlProyectos.SelectedItem.Value)
        codigotexto.Value = codigo




    End Sub

    Protected Sub btnNuevaActividad_Click(sender As Object, e As EventArgs) Handles btnNuevaActividad.Click
        Dim newAct As Boolean
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        newAct = DAL.Calidad.Actividad.insertarActividades(ssUsuario, ssUsuario.ID_MAESTRO, Session.Contents("idObra"), ddlEtapa.SelectedItem.Value, "1", txtAct_Nombre.Value)
        If newAct = True Then
            'mensaje
            dllActividad.DataBind()
            dllActividad.Text = txtAct_Nombre.Value
            txtEtapa.Text = ddlEtapa.Text
        Else
            'mensaje 
        End If





    End Sub

    Protected Sub dllActividad_SelectedIndexChanged(sender As Object, e As EventArgs) Handles dllActividad.SelectedIndexChanged
        Dim nombreEtapa As String
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        nombreEtapa = DAL.Calidad.Actividad.buscarEtapa(ssUsuario, dllActividad.Value)
        txtEtapa.Text = nombreEtapa
    End Sub
End Class