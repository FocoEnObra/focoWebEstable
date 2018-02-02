
Imports SUL
Namespace Calidad
    Public Class Plantilla
        Public Shared Function insertarPlantilla(usuario As EL.Seguridad.Usuario, idUsuario As Integer, codPlantilla As String, ByVal idObra As Integer, ByVal idActividad As Integer, ByVal estAct As Integer, ByVal nombrePlantilla As String, ByVal obsPlantilla As String) As Boolean
            Dim vCon As New Conexion(usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim vParam As New Dictionary(Of String, Object)
            Dim paramOut As New Dictionary(Of String, SqlDbType)
            vParam.Add("@CODIGO_ACC", codPlantilla)
            vParam.Add("@NOMBRE_ACC", nombrePlantilla)
            vParam.Add("@ID_OBR", idObra)
            vParam.Add("@ID_QA_ACT", idActividad)
            vParam.Add("@OBS_ACC", obsPlantilla)
            vParam.Add("@ESTADO_ACC", estAct)
            vParam.Add("@ID_USU_CREA", idUsuario)
            Try
                vCon.Exec("SP_WS_INS_QA", vParam)
                Return True
            Catch ex As Exception
                Throw New Exception("No se pudo insertar la Plantilla.", ex)
            End Try
            Return False
        End Function
    End Class
End Namespace
