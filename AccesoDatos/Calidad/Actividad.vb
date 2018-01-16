
Imports SUL

Namespace Calidad
    Public Class Actividad
        Public Shared Function insertarActividades(usuario As EL.Seguridad.Usuario, idUsuario As Integer, ByVal idObra As Integer, idEta As Integer, estAct As Integer, nombreActividad As String) As Boolean
            Dim vCon As New Conexion(usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim vParam As New Dictionary(Of String, Object)
            Dim paramOut As New Dictionary(Of String, SqlDbType)
            vParam.Add("@ID_OBR", idObra)
            vParam.Add("@NOMBRE_ACT", nombreActividad)
            vParam.Add("@ID_ETA", idEta)
            vParam.Add("@ESTADO_ACT", estAct)
            vParam.Add("@ID_USU_CREA", idUsuario)
            Try
                vCon.Exec("SP_WS_INS_ACT", vParam)
                Return True
            Catch ex As Exception
                Throw New Exception("No se pudo insertar la actividad.", ex)
            End Try
            Return False

        End Function

        Public Shared Function buscarEtapa(usuario As EL.Seguridad.Usuario, ByVal idActividad As Integer) As String
            Dim vCon As New Conexion(usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim vParam As New Dictionary(Of String, Object)
            Dim vTablas As DataSet = Nothing
            vParam.Add("@ID_QA_ACT", idActividad)
            Try
                vTablas = vCon.ExecSP_DS("SP_WS_BUSCA_ETAPA", vParam)
                Return vTablas.Tables(0).Rows(0).Item("ETAPA").ToString
            Catch ex As Exception
                Throw New Exception("No se pudo insertar la actividad.", ex)
            End Try
            Return False
        End Function


        Public Shared Function GeneraCodigoActividad(usuario As EL.Seguridad.Usuario, ByVal idObra As Integer) As String
            Dim vCon As New Conexion(usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim vParam As New Dictionary(Of String, Object)
            Dim vTablas As DataSet = Nothing
            vParam.Add("@ID_OBR", idObra)
            Try
                vTablas = vCon.ExecSP_DS("SP_WS_GEN_COD_ACTIVIDAD", vParam)
                Return vTablas.Tables(0).Rows(0).Item("CODIGO").ToString
            Catch ex As Exception
                Throw New Exception("No se pudo insertar la actividad.", ex)
            End Try
            Return False
        End Function
    End Class
End Namespace
