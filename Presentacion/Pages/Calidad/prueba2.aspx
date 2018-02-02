<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="prueba2.aspx.vb" Inherits="Presentacion.Formulario_web15" %>
<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <link href="../../assets/stylesheets/DragAndDrop.css" rel="stylesheet" />
    <link href="../../CSS/animate.css" rel="stylesheet" />
    <link href="../../assets/stylesheets/pace-theme-flash.css" rel="stylesheet" />
    <script src="../../../assets/javascripts/pace.min.js"></script>
</asp:Content>


<asp:Content ID="MainBody" ContentPlaceHolderID="body" runat="server">
    <dx:ASPxGridView ID="gridMensajes" runat="server" DataSourceID="SqlDataSource2" EnableTheming="True" Theme="MaterialCompact" Width ="100%" AutoGenerateColumns ="False" KeyFieldName="ID_QA_MSG" >
        <Columns>
            <dx:GridViewDataTextColumn FieldName="ID_QA_MSG" ReadOnly="True" Visible="False" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="NOMBRE" FieldName="NOMBRE_MSG" VisibleIndex="3" Width="30%">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="CARGO" FieldName="CARGO_MSG" VisibleIndex="4" Width="25%">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="MAIL" FieldName="MAIL_MSG" VisibleIndex="5" Width="10%">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="FONO" FieldName="FONO_MSG" VisibleIndex="6" Width="10%">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ID_ACC_PLT" Visible="False" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewBandColumn VisibleIndex="7">
                <Columns>
                    <dx:GridViewDataCheckColumn Caption="SOLICITAR" FieldName="CRITERIO_1" VisibleIndex="0" Width="5%">
                    </dx:GridViewDataCheckColumn>
                    <dx:GridViewDataCheckColumn Caption="VB" FieldName="CRITERIO_2" VisibleIndex="1" Width="5%">
                    </dx:GridViewDataCheckColumn>
                    <dx:GridViewDataCheckColumn Caption="RECHAZO" FieldName="CRITERIO_3" VisibleIndex="2" Width="5%">
                    </dx:GridViewDataCheckColumn>
                </Columns>
            </dx:GridViewBandColumn>
            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0" Width="10%">
            </dx:GridViewCommandColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right" EnableAdaptivity="true" >
                <Items>
                    <dx:GridViewToolbarItem Command="New"  Text ="Nuevo"/>
                    <dx:GridViewToolbarItem Command="Edit" text="editar"/>
                    <dx:GridViewToolbarItem Command="Delete" Text="Eliminar" />
                    <dx:GridViewToolbarItem Command="Refresh" BeginGroup="true" Text="Actualizar" />
                </Items>
            </dx:GridViewToolbar>
        </Toolbars>
        <SettingsPager Visible="False">
        </SettingsPager>
        <SettingsEditing Mode="Inline">
        </SettingsEditing>
       
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" DeleteCommand="DELETE FROM [QA_MENSAJERIA] WHERE [ID_QA_MSG] = @ID_QA_MSG" InsertCommand="INSERT INTO [QA_MENSAJERIA] ([NOMBRE_MSG], [CARGO_MSG], [MAIL_MSG], [FONO_MSG], [ID_ACC_PLT], [CRITERIO_1], [CRITERIO_2], [CRITERIO_3]) VALUES (@NOMBRE_MSG, @CARGO_MSG, @MAIL_MSG, @FONO_MSG, @ID_ACC_PLT, @CRITERIO_1, @CRITERIO_2, @CRITERIO_3)" SelectCommand="SELECT * FROM [QA_MENSAJERIA] WHERE ([ID_ACC_PLT] = @ID_ACC_PLT)" UpdateCommand="UPDATE [QA_MENSAJERIA] SET [NOMBRE_MSG] = @NOMBRE_MSG, [CARGO_MSG] = @CARGO_MSG, [MAIL_MSG] = @MAIL_MSG, [FONO_MSG] = @FONO_MSG, [ID_ACC_PLT] = @ID_ACC_PLT, [CRITERIO_1] = @CRITERIO_1, [CRITERIO_2] = @CRITERIO_2, [CRITERIO_3] = @CRITERIO_3 WHERE [ID_QA_MSG] = @ID_QA_MSG">
        <DeleteParameters>
            <asp:Parameter Name="ID_QA_MSG" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NOMBRE_MSG" Type="String" />
            <asp:Parameter Name="CARGO_MSG" Type="String" />
            <asp:Parameter Name="MAIL_MSG" Type="String" />
            <asp:Parameter Name="FONO_MSG" Type="String" />
            <asp:Parameter Name="ID_ACC_PLT" Type="Int32" />
            <asp:Parameter Name="CRITERIO_1" Type="Int32" />
            <asp:Parameter Name="CRITERIO_2" Type="Int32" />
            <asp:Parameter Name="CRITERIO_3" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter DefaultValue="8" Name="ID_ACC_PLT" SessionField="ID_ACC_PLT" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="NOMBRE_MSG" Type="String" />
            <asp:Parameter Name="CARGO_MSG" Type="String" />
            <asp:Parameter Name="MAIL_MSG" Type="String" />
            <asp:Parameter Name="FONO_MSG" Type="String" />
            <asp:Parameter Name="ID_ACC_PLT" Type="Int32" />
            <asp:Parameter Name="CRITERIO_1" Type="Int32" />
            <asp:Parameter Name="CRITERIO_2" Type="Int32" />
            <asp:Parameter Name="CRITERIO_3" Type="Int32" />
            <asp:Parameter Name="ID_QA_MSG" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>"
        DeleteCommand="DELETE FROM [QA_MENSAJERIA] WHERE [ID_QA_MSG] = @ID_QA_MSG"
        InsertCommand="INSERT INTO [QA_MENSAJERIA] ([NOMBRE_MSG], [CARGO_MSG], [MAIL_MSG], [FONO_MSG], [ID_ACC_PLT]) VALUES (@NOMBRE_MSG, @CARGO_MSG, @MAIL_MSG, @FONO_MSG, @ID_ACC_PLT)"
        SelectCommand="SP_WS_TRAE_MENSAJES_CRITERIOS"
        UpdateCommand="UPDATE [QA_MENSAJERIA] SET [NOMBRE_MSG] = @NOMBRE_MSG, [CARGO_MSG] = @CARGO_MSG, [MAIL_MSG] = @MAIL_MSG, [FONO_MSG] = @FONO_MSG, [ID_ACC_PLT] = @ID_ACC_PLT WHERE [ID_QA_MSG] = @ID_QA_MSG" SelectCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="ID_QA_MSG" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NOMBRE_MSG" Type="String" />
            <asp:Parameter Name="CARGO_MSG" Type="String" />
            <asp:Parameter Name="MAIL_MSG" Type="String" />
            <asp:Parameter Name="FONO_MSG" Type="String" />
             <asp:SessionParameter SessionField="ID_ACC_PLT" DefaultValue="8" Name="ID_ACC_PLT" Type="Int32"></asp:SessionParameter>
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter SessionField="idObra" DefaultValue="68" Name="ID_OBR" Type="Int32"></asp:SessionParameter>


        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="NOMBRE_MSG" Type="String" />
            <asp:Parameter Name="CARGO_MSG" Type="String" />
            <asp:Parameter Name="MAIL_MSG" Type="String" />
            <asp:Parameter Name="FONO_MSG" Type="String" />
            <asp:Parameter Name="ID_ACC_PLT" Type="Int32" />
            <asp:Parameter Name="ID_QA_MSG" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:ObjectDataSource ID="objMensajeria" runat="server" DeleteMethod="eliminarMensajeria" InsertMethod="insertarMensajeria" SelectMethod="traerMensajesCriterios" TypeName="DAL.Calidad.Mensajeria" UpdateMethod="modificarMensajeria">
        <DeleteParameters>
            <asp:Parameter Name="usuario" Type="Object" />
            <asp:Parameter Name="idUsuario" Type="Int32" />
            <asp:Parameter Name="idObra" Type="Int32" />
            <asp:Parameter Name="ID_QA_MSG" Type="Int32" />
            <asp:Parameter Name="dsCriterios" Type="Object" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="usuario" Type="Object" />
            <asp:Parameter Name="idUsuario" Type="Int32" />
            <asp:Parameter Name="idObra" Type="Int32" />
            <asp:Parameter Name="NOMBRE_MSG" Type="String" />
            <asp:Parameter Name="CARGO_MSG" Type="String" />
            <asp:Parameter Name="FONO_MSG" Type="String" />
            <asp:Parameter Name="MAIL_MSG" Type="String" />
            <asp:Parameter Name="dsCriterios" Type="Object" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="usuario" SessionField="xSSN_USUARIO" Type="Object" />
            <asp:SessionParameter DefaultValue="68" Name="idObr" SessionField="idObra" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="usuario" Type="Object" />
            <asp:Parameter Name="idUsuario" Type="Int32" />
            <asp:Parameter Name="idObra" Type="Int32" />
            <asp:Parameter Name="NOMBRE_MSG" Type="String" />
            <asp:Parameter Name="CARGO_MSG" Type="String" />
            <asp:Parameter Name="FONO_MSG" Type="String" />
            <asp:Parameter Name="MAIL_MSG" Type="String" />
            <asp:Parameter Name="dsCriterios" Type="Object" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <asp:SqlDataSource ID="sqlMensajesCriterios" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SP_WS_TRAE_MENSAJES_CRITERIOS" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="68" Name="ID_OBR" SessionField="idObra" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlPrueba" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SP_WS_TRAE_MENSAJES_CRITERIOS" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="68" Name="ID_OBR" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
