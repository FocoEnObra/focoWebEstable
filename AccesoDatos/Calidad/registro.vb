Imports SUL

Namespace registro

    Public Class registro
        Public Shared Function insertarRegistrosCalidad(usuario As EL.Seguridad.Usuario, idPlantilla As Integer, recintos As String, usuarios As String) As Boolean
            Dim vCon As New Conexion(usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim vParam As New Dictionary(Of String, Object)
            Dim paramOut As New Dictionary(Of String, SqlDbType)
            vParam.Add("@ID_ACC_PLT", idPlantilla)
            vParam.Add("@UCOS", recintos)
            vParam.Add("@NIVEL", usuarios)
            vParam.Add("@ID_USU", usuario.ID_MAESTRO)

            Try
                vCon.Exec("SP_QA_ACC_REG_GENERA_REGISTROS_SEGUN_PLANTILLA", vParam)
                Return True
            Catch ex As Exception
                Throw New Exception("No se pudo insertar LOS REGISTROS.", ex)
            End Try
            Return False

        End Function



    End Class
End Namespace
