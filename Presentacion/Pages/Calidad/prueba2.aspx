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
     

                                                                     <dx:ASPxGridView ID="GridVb" runat="server" AutoGenerateColumns="False" DataSourceID="sql_vb" KeyFieldName="ID_PLT_VB" Theme="MaterialCompact" Width="30%">
                                                                         <SettingsEditing EditFormColumnCount="1" Mode="EditForm">
                                                                         </SettingsEditing>
                                                                         <EditFormLayoutProperties ColCount="4">
                                                                             <Items>
                                                                                 <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="CARGO_VB">
                                                                                 </dx:GridViewColumnLayoutItem>
                                                                                 <dx:GridViewLayoutGroup Caption="VB" ColCount="2" ColSpan="2" RowSpan="2">
                                                                                     <Items>
                                                                                         <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="VB_PAPEL" RowSpan="2">
                                                                                         </dx:GridViewColumnLayoutItem>
                                                                                         <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="VB_DIGITAL" RowSpan="2">
                                                                                         </dx:GridViewColumnLayoutItem>
                                                                                     </Items>
                                                                                 </dx:GridViewLayoutGroup>
                                                                                 <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="USUARIO">
                                                                                 </dx:GridViewColumnLayoutItem>
                                                                                 <dx:EditModeCommandLayoutItem ColSpan="4" HorizontalAlign="Right">
                                                                                 </dx:EditModeCommandLayoutItem>
                                                                             </Items>
                                                                         </EditFormLayoutProperties>
                                                                         <Columns>
                                                                             <dx:GridViewCommandColumn ShowNewButtonInHeader="True" VisibleIndex="0" ShowEditButton="True">
                                                                             </dx:GridViewCommandColumn>
                                                                             <dx:GridViewDataTextColumn FieldName="ID_PLT_VB" ReadOnly="True" VisibleIndex="4" Visible="False">
                                                                                 <EditFormSettings Visible="False"></EditFormSettings>
                                                                             </dx:GridViewDataTextColumn>

                                                                             <dx:GridViewDataTextColumn FieldName="ID_ACC_PLT" VisibleIndex="5" Visible="False">
                                                                             </dx:GridViewDataTextColumn>
                                                                             <dx:GridViewDataTextColumn FieldName="CARGO_VB" VisibleIndex="2" Caption="CARGO">
                                                                             </dx:GridViewDataTextColumn>
                                                                             <dx:GridViewDataTextColumn FieldName="ESTADO_VB" Visible="false" VisibleIndex="7" Caption="ESTADO">
                                                                             </dx:GridViewDataTextColumn>
                                                                             <dx:GridViewDataTokenBoxColumn FieldName="USUARIO" VisibleIndex="1">
                                                                                 <PropertiesTokenBox AllowMouseWheel="True" DataSourceID="SqlUsuarios" TextField="nombre_Usu" Tokens="" ValueField="nombre_Usu" 
                                                                                     ValueSeparator =";">
                                                                                 </PropertiesTokenBox>
                                                                             </dx:GridViewDataTokenBoxColumn>
                                                                             <dx:GridViewBandColumn Caption="V.B." VisibleIndex="3">
                                                                                 <Columns>
                                                                                     <dx:GridViewDataCheckColumn FieldName="VB_DIGITAL" Caption="DIGITAL" VisibleIndex="4"></dx:GridViewDataCheckColumn>
                                                                                     <dx:GridViewDataCheckColumn FieldName="VB_PAPEL" Caption="PAPEL" VisibleIndex="0"></dx:GridViewDataCheckColumn>
                                                                                 </Columns>
                                                                             </dx:GridViewBandColumn>
                                                                             <dx:GridViewDataTextColumn FieldName="ORDEN_VB" Visible="False" VisibleIndex="6"></dx:GridViewDataTextColumn>
                                                                         </Columns>
                                                                     </dx:ASPxGridView>
                                                                     <asp:SqlDataSource ID="sql_vb" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" 
                                                                         SelectCommand="SP_WS_TRAER_VB"
                                                                         InsertCommand ="SP_WS_INS_VB"
                                                                         UpdateCommand  ="SP_WS_ACTUALIZA_VB"
                                                                         SelectCommandType="StoredProcedure" InsertCommandType="StoredProcedure" UpdateCommandType="StoredProcedure">
                                                                         <SelectParameters>
                                                                             <asp:SessionParameter DefaultValue="10" Name="ID_ACC_PLT" SessionField="ID_ACC_PLT" Type="Int32" />
                                                                         </SelectParameters>
                                                                         <InsertParameters>
                                                                             <asp:SessionParameter DefaultValue="10" Name="ID_ACC_PLT" SessionField="ID_ACC_PLT" Type="Int32" />
                                                                             <asp:Parameter Name="CARGO_VB" Type="String" />
                                                                             <asp:Parameter Name="VB_DIGITAL" Type="Int32" DefaultValue ="0" />
                                                                             <asp:Parameter Name="VB_PAPEL" Type="Int32" DefaultValue ="0"/>
                                                                             <asp:Parameter Name="ORDEN_VB" Type="Int32" DefaultValue ="0" />
                                                                             <asp:Parameter Name="ESTADO_VB" Type="Int32"  DefaultValue ="0" />
                                                                             <asp:Parameter Name="USUARIO"  Type="String" />
                                                                         </InsertParameters>
                                                                         <UpdateParameters>
                                                                              <asp:SessionParameter DefaultValue="10" Name="ID_ACC_PLT" SessionField="ID_ACC_PLT" Type="Int32" />
                                                                             <asp:Parameter Name="CARGO_VB" Type="String" />
                                                                             <asp:Parameter Name="VB_DIGITAL" Type="Int32" DefaultValue ="0" />
                                                                             <asp:Parameter Name="VB_PAPEL" Type="Int32"  DefaultValue ="0"/>
                                                                             <asp:Parameter Name="ORDEN_VB" Type="Int32"  DefaultValue ="0"/>
                                                                             <asp:Parameter Name="ESTADO_VB" Type="Int32" DefaultValue ="0" />
                                                                             <asp:Parameter Name="USUARIO" Type="String" />
                                                                         </UpdateParameters>
                                                                     </asp:SqlDataSource>
                                                                     <asp:SqlDataSource ID="SqlUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad_Prod %>" 
                                                                         SelectCommand="SELECT [id_Usu], [nombre_Usu] FROM [USUARIOS]">

                                                                     </asp:SqlDataSource>


</asp:Content>
