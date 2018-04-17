Imports System.IO
Imports DevExpress.XtraReports.UI

Public Class reporte
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim idRegistro As String = Request.Params("idRegistro")
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Dim dsregistro As DataSet = DAL.registro.registro.traerRegistro(ssUsuario, idRegistro)
        Dim dsProtocolo As New Protocolo()
        Dim dsConvenioTA As New ProtocoloTableAdapters.SP_WS_BUSCA_REGISTROTableAdapter
        Dim detalleTA As New ProtocoloTableAdapters.SP_QA_ACC_REG_LISTA_CHEQUEOTableAdapter
        dsConvenioTA.FillProtocolo(dsProtocolo.SP_WS_BUSCA_REGISTRO, idRegistro)
        detalleTA.Filldetalle(dsProtocolo.SP_QA_ACC_REG_LISTA_CHEQUEO, idRegistro)
        Dim report As New RegistroCalidad
        report.DataSource = dsProtocolo
        If report IsNot Nothing Then
            ExportReport(report, "protocolo", "pdf", False)
        Else
        End If
    End Sub



    Public Sub ExportReport(ByVal report As XtraReport, ByVal fileName As String, ByVal fileType As String, ByVal inline As Boolean)
        Dim stream As New MemoryStream()
        Response.Clear()
        If fileType = "xls" Then
            report.ExportToXls(stream)
        End If
        If fileType = "pdf" Then
            report.ExportToPdf(stream)
        End If
        If fileType = "rtf" Then
            report.ExportToRtf(stream)
        End If
        If fileType = "csv" Then
            report.ExportToCsv(stream)
        End If
        Response.ContentType = "application/" & fileType
        Response.AddHeader("Accept-Header", stream.Length.ToString())
        If inline Then
            Response.AddHeader("Content-Disposition", ("Inline") & "; filename=" & fileName & "." & fileType)
        Else
            Response.AddHeader("Content-Disposition", ("Attachment") & "; filename=" & fileName & "." & fileType)
        End If
        Response.AddHeader("Content-Length", stream.Length.ToString())
        Response.BinaryWrite(stream.ToArray())
        Response.End()
    End Sub

End Class