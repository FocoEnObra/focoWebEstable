Public Class Formulario_web112
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Page.IsPostBack = False Then
            Dim idRegistro As String = Request.Params("idRegistro")
            Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
            Dim dsRegistro As DataSet = DAL.registro.registro.traerRegistro(ssUsuario, idRegistro)
            'lblNombreObra.Text = dsRegistro.Tables(0).Rows(0).Item("NOM_PROYECTO").ToString
            lblActividad.Text = dsRegistro.Tables(0).Rows(0).Item("NOMBRE_ACT").ToString
            lblEtapa.Text = dsRegistro.Tables(0).Rows(0).Item("NOMBRE_ETA").ToString
            lblRecinto.Text = dsRegistro.Tables(0).Rows(0).Item("NOMBRE_UCO").ToString
            lblRaiz.Text = dsRegistro.Tables(0).Rows(0).Item("RAIZ").ToString
            lblFechaCrea.Text = dsRegistro.Tables(0).Rows(0).Item("FECHA_CREA").ToString
            lblvb.Text = dsRegistro.Tables(0).Rows(0).Item("FECHA_ULT_VB").ToString
            lblNivel.Text = dsRegistro.Tables(0).Rows(0).Item("NIVEL_VB").ToString
            lblDias.Text = dsRegistro.Tables(0).Rows(0).Item("DIAS_DIF").ToString
        End If



    End Sub

End Class