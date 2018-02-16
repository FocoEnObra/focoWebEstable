<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="prueba2.aspx.vb" Inherits="Presentacion.Formulario_web15" %>
<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <link href="../../assets/stylesheets/DragAndDrop.css" rel="stylesheet" />
    <link href="../../CSS/animate.css" rel="stylesheet" />
    <link href="../../assets/stylesheets/pace-theme-flash.css" rel="stylesheet" />
    <script src="../../../assets/javascripts/pace.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</asp:Content>


<asp:Content ID="MainBody" ContentPlaceHolderID="body" runat="server">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" ButtonRenderMode="Image" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableTheming="True" KeyFieldName="ID_ROL" Theme="MaterialCompact" Width="100%" >



        <SettingsPager Visible="False">
        </SettingsPager>



  <SettingsCommandButton>
        <NewButton Text=" " Image-IconID="actions_add_16x16gray"  >
            <%--<Styles>
                        <Style CssClass="fas fa-angle-double-right fa-2x"></Style>
               </Styles>--%>

             <Image  ToolTip="nuevo" ></Image>
       </NewButton>
         <EditButton    Text =" " Image-IconID ="edit_edit_16x16gray">   
                <Image  ToolTip="Editar" ></Image>
         </EditButton>
      <UpdateButton  Text =" " Image-IconID ="save_save_16x16gray"  >
                <Image  ToolTip="Guardar" ></Image>
      </UpdateButton>
      <CancelButton Text =" " Image-IconID ="actions_cancel_16x16gray"   >
              <Image  ToolTip="cancelar" ></Image>
      </CancelButton>
       <DeleteButton Text =" " Image-IconID ="actions_delete_16x16gray"  >
            <Image  ToolTip="eliminar" ></Image>
       </DeleteButton>
  </SettingsCommandButton>
        <Columns>
            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ID_ROL" ReadOnly="True" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NOMBRE_ROL" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ID_OBR" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SELECT * FROM [QA_ROL] WHERE ([ID_OBR] = @ID_OBR)">
        <SelectParameters>
            <asp:Parameter DefaultValue="68" Name="ID_OBR" Type="Int64" />
        </SelectParameters>
    </asp:SqlDataSource>


</asp:Content>
