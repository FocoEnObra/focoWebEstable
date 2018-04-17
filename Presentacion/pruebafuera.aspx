<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="pruebafuera.aspx.vb" Inherits="Presentacion.pruebafuera" %>
<%@ register assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxGridView ID="grillaMensajes" runat="server" AutoGenerateColumns="false"
            KeyFieldName="ID"  Width="100%" Theme="MaterialCompact" >
         </dx:ASPxGridView>
        </div>
    </form>
</body>
</html>
