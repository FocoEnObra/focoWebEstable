<%@ Page Language="VB" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeBehind="Default.aspx.vb" Inherits="dxReportesCalidad.Default" %>
<%@ Register Assembly="DevExpress.XtraReports.v17.2.Web, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraReports.Web" TagPrefix="dx" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <ul>
        <li/><a href="Designer.aspx">Report Designer</a>
        <li/><a href="Viewer.aspx">Document Viewer</a>
    </ul>
</asp:Content>