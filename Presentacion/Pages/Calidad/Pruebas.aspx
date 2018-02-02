<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="Pruebas.aspx.vb" Inherits="Presentacion.Formulario_web14" %>
<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <link href="../../assets/stylesheets/DragAndDrop.css" rel="stylesheet" />
    <link href="../../CSS/animate.css" rel="stylesheet" />
<link href="../../assets/stylesheets/pace-theme-flash.css" rel="stylesheet" />
<script src="../../../assets/javascripts/pace.min.js"></script>

    <script type="text/javascript">
        function CategoriasCombo_SelectedIndexChanged(s, e) {
             grid.GetEditor("ID_TIP").PerformCallback(s.GetValue());
         }
	</script>
   
    </asp:Content>


<asp:Content ID="MainBody" ContentPlaceHolderID="body" runat="server">
         
    <dx:ASPxGridView 	OnCellEditorInitialize="Grid_CellEditorInitialize" ClientInstanceName="grid" ID="Grid" runat="server" DataSourceID="sqlCat_Tip" AutoGenerateColumns="False" KeyFieldName="ID_ACC_SEC" Theme="Moderno" EnableTheming="True" Width="100%">
                <SettingsPager Visible="False"></SettingsPager>
                        <SettingsEditing Mode="Inline">
                </SettingsEditing>
                        <Settings UseFixedTableLayout="True" />
                        <Columns>
                                                                                                                                                       <dx:GridViewCommandColumn ShowDeleteButton="True" VisibleIndex="0" ShowNewButtonInHeader="True" ShowEditButton="True" Width="20%"></dx:GridViewCommandColumn>
                                                                                                                                                       <dx:GridViewDataTextColumn FieldName="ID_ACC_SEC" ReadOnly="True" VisibleIndex="1" Visible="False">
                                                                                                                                                           <EditFormSettings Visible="False"></EditFormSettings>
                                                                                                                                                       </dx:GridViewDataTextColumn>
                                                                                                                                                       <dx:GridViewDataComboBoxColumn Caption="Categorias" FieldName="ID_TUC" Width="200" VisibleIndex="3">
                                                                                                                                                           <PropertiesComboBox DataSourceID="sqlCategorias" ValueField="ID_TUC" ValueType="System.Int32"
                                                                                                                                                               TextField="NOMBRE_TUC" EnableSynchronization="False" IncrementalFilteringMode="StartsWith">
                                                                                                                                                                                                                                                                                                                            <ValidationSettings RequiredField-IsRequired="true" Display="Dynamic" >
<RequiredField IsRequired="True"></RequiredField>
                                                                                                                                                                                                                                                                                                                            </ValidationSettings>
						                                                                                                                                        <ClientSideEvents SelectedIndexChanged="CategoriasCombo_SelectedIndexChanged" />
					                                                                                                                                        </PropertiesComboBox>
				                                                                                                                                        </dx:GridViewDataComboBoxColumn>
                                                                                                                                                       <dx:GridViewDataComboBoxColumn Caption="Tipologias" FieldName="ID_TIP" Width="200" VisibleIndex="4">
					                                                                                                                                        <PropertiesComboBox DataSourceID="sqlTodasTipologias" ValueField="ID_TIP" ValueType="System.Int32"
						                                                                                                                                        TextField="NOMBRE_TIP" EnableSynchronization="False" IncrementalFilteringMode="StartsWith">
						                                                                                                                                        <ValidationSettings RequiredField-IsRequired="true" Display="Dynamic" >
<RequiredField IsRequired="True"></RequiredField>
                                                                                                                                                                </ValidationSettings>
					                                                                                                                                        </PropertiesComboBox>
				                                                                                                                                        </dx:GridViewDataComboBoxColumn>

                                                                                                                                                    <%--   <dx:GridViewDataComboBoxColumn FieldName="ID_TIP" Width="40%" Caption="TIPOLOGIAS" VisibleIndex="4">
                                                                                                                                                           <PropertiesComboBox DataSourceID="sqlCategorias" TextField="NOMBRE_TIP" ValueField="ID_TIP"></PropertiesComboBox>
                                                                                                                                                       </dx:GridViewDataComboBoxColumn>--%>

                                                                                                                                                       <dx:GridViewDataTextColumn FieldName="ID_ACC_PLT" VisibleIndex="2" Visible="False">
                                                                                                                                                       </dx:GridViewDataTextColumn>

                                                                                                                                                   </Columns>

                                                                                                                                                   
          </dx:ASPxGridView>




        <asp:SqlDataSource runat="server" ID="sqlCat_Tip" ConnectionString='<%$ ConnectionStrings:cnxCalidad_Prod %>' SelectCommand="SELECT * FROM [QA_ACC_PLT_SECTOR] WHERE ([ID_ACC_PLT] = @ID_ACC_PLT)" DeleteCommand="DELETE FROM [QA_ACC_PLT_SECTOR] WHERE [ID_ACC_SEC] = @ID_ACC_SEC" InsertCommand="INSERT INTO [QA_ACC_PLT_SECTOR] ([ID_ACC_PLT], [ID_TUC], [ID_TIP]) VALUES (@ID_ACC_PLT, @ID_TUC, @ID_TIP)" UpdateCommand="UPDATE [QA_ACC_PLT_SECTOR] SET [ID_ACC_PLT] = @ID_ACC_PLT, [ID_TUC] = @ID_TUC, [ID_TIP] = @ID_TIP WHERE [ID_ACC_SEC] = @ID_ACC_SEC">
                                                                                                                                                   <deleteparameters>
                                                                                                                                                            <asp:Parameter Name="ID_ACC_SEC" Type="Int32"></asp:Parameter>
                                                                                                                                                            </deleteparameters>
                                                                                                                                                   <insertparameters>
                                                                                                                                                        <asp:Parameter Name="ID_ACC_PLT" Type="Int32" DefaultValue="8" ></asp:Parameter>
                                                                                                                                                        <asp:Parameter Name="ID_TUC" Type="Int64"></asp:Parameter>
                                                                                                                                                        <asp:Parameter Name="ID_TIP" Type="Int64"></asp:Parameter>
                                                                                                                                                        </insertparameters>
                                                                                                                                                   <updateparameters>
                                                                                                                                                        <asp:Parameter Name="ID_ACC_PLT" Type="Int32"></asp:Parameter>
                                                                                                                                                        <asp:Parameter Name="ID_TUC" Type="Int64"></asp:Parameter>
                                                                                                                                                        <asp:Parameter Name="ID_TIP" Type="Int64"></asp:Parameter>
                                                                                                                                                        <asp:Parameter Name="ID_ACC_SEC" Type="Int32"></asp:Parameter>
                                                                                                                                                        </updateparameters>
                                                                                                                                                   <selectparameters>
                                                                                                                                                            <asp:SessionParameter SessionField="ID_ACC_PLT" Name="ID_ACC_PLT" Type="Int32" DefaultValue="8"></asp:SessionParameter>
                                                                                                                                                            </selectparameters>
                                                                                                                                               </asp:SqlDataSource>
                                                                                                                                            

             <asp:SqlDataSource ID="sqlCategorias" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad_Prod %>" SelectCommand="SELECT [ID_TUC], [ID_OBR], [NOMBRE_TUC] FROM [UCO_TIPOS] WHERE ([ID_OBR] = @ID_OBR)">
                 <SelectParameters>
                     <asp:Parameter DefaultValue="68" Name="ID_OBR" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
             <asp:SqlDataSource ID="sqlTodasTipologias" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad_Prod %>" SelectCommand="SELECT [ID_TIP], [ID_UNIUCO], [NOMBRE_TIP], [ID_OBR], [ID_TUC] FROM [CM_MAESTRO_TIPOLOGIAS] WHERE ([ID_OBR] = @ID_OBR)">
                 <SelectParameters>
                     <asp:Parameter DefaultValue="68" Name="ID_OBR" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
             <asp:SqlDataSource ID="sqlTipologias" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad_Prod %>" SelectCommand="SELECT [ID_TIP], [NOMBRE_TIP], [ID_OBR], [ID_TUC] FROM [CM_MAESTRO_TIPOLOGIAS] WHERE (([ID_OBR] = @ID_OBR) AND ([ID_TUC] = @ID_TUC))">
                 <SelectParameters>
                     <asp:Parameter DefaultValue="68" Name="ID_OBR" Type="Int32" />
                     <asp:Parameter Name="ID_TUC" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
             <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
             <br />
                                                                                                                                            

</asp:Content>
