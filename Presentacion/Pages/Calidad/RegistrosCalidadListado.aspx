<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="RegistrosCalidadListado.aspx.vb" Inherits="Presentacion.Formulario_web110" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
      <style>
        /*.dropzone-box .fa.fa-cloud-upload{margin-left:350px;}
        .form-horizontal .has-feedback .form-control-feedback{right:0px;}
        .has-feedback:not(.form-group) .form-control-feedback {top: 5px;}
        .claseTest {background-color: #008c9e !important;font-weight: normal;font-size:10px;text-transform:uppercase;}
        .dxgvHeader, .dxgvHeader table{color:#F1F1F1;}
          .auto-style1 {
              height: 10px;
          }*/
      </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
     <script type="text/javascript">
        function OnToolbarItemClick(s, e) {
            if(IsCustomExportToolbarCommand(e.item.name)) {
                e.processOnServer=true;
                e.usePostBack=true;
            }
        }
        function IsCustomExportToolbarCommand(command) {
            return command == "CustomExportToXLS" || command == "CustomExportToXLSX";
        }
    </script>
     <div class="panel">  
                <div class="panel-heading">
						<span class="panel-title" style="color:#17649A"><b>LISTADO DE REGISTROS DE CONTROL DE CALIDAD.</b></span>
                </div>
				<div class="stat-panel">
					<div class="stat-row">
						<div class="stat-cell col-sm-12 padding-sm ">
                        
                              
                                      <div class="col-md-12">
                                            <label class="control-label">Listado de Actividades Controladas</label>
                                            <br />
                                
                                            <dx:ASPxGridView ID="gridActividades"  ClientInstanceName="grid" runat="server" AutoGenerateColumns="False" DataSourceID="sqlCalidad" 
                                                EnableTheming="True" KeyFieldName="ID_ACC_REG" Theme="MaterialCompact" Width="100%">
                                                <Settings GridLines="Horizontal" VerticalScrollableHeight="400" VerticalScrollBarStyle="VirtualSmooth" />
                                                <SettingsBehavior AllowFocusedRow="True" />
                                                <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
                                                <SettingsSearchPanel Visible="True" />
                                                <SettingsPager EnableAdaptivity="true" Mode="EndlessPaging" Position="Top" />
                                                <Settings ShowFooter="true" />
                                                <SettingsBehavior AllowFocusedRow="true" />
                                                 <ClientSideEvents CustomButtonClick="function(s, e) {
	                                                            if(e.buttonID == 'ver'){
                                                                                var rowVisibleIndex = e.visibleIndex;
                                                                                var rowKeyValue = s.GetRowKey(rowVisibleIndex);
                                                                               window.open('verPlantilla.aspx?idPLantilla='+ rowKeyValue , '_self');
                                                                   }
                                                                if(e.buttonID == 'calidad'){
                                                                                var rowVisibleIndex = e.visibleIndex;
                                                                                var rowKeyValue = s.GetRowKey(rowVisibleIndex);
                                                                               window.open('consultarplantilla.aspx?idPLantilla='+ rowKeyValue , '_self');
                                                                   }
                                                                    


                                                                    }"
                                                     



                                                     />
                                                <Columns>
                                                    <dx:GridViewCommandColumn VisibleIndex="0" Width="12%">
                                                            <CustomButtons>
                                                                <dx:GridViewCommandColumnCustomButton ID="ver" Text =" ">
                                                                             <Image  ToolTip="Consultar"  IconID ="zoom_zoomin_16x16gray"/>
                                                                </dx:GridViewCommandColumnCustomButton>
                                                                <dx:GridViewCommandColumnCustomButton ID="version" Text =" ">
                                                                    <Image  ToolTip="nueva versión"  IconID ="edit_copy_16x16gray"   />
                                                                </dx:GridViewCommandColumnCustomButton>
                                                                   <dx:GridViewCommandColumnCustomButton ID="calidad" Text =" ">
                                                                    <Image  ToolTip="nuevo registro calidad"  IconID ="miscellaneous_newwizard_16x16gray"/>
                                                                </dx:GridViewCommandColumnCustomButton>
                                                                
                                                            </CustomButtons>
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewBandColumn Caption="REGISTROS DE CONTROL DE CALIDAD" VisibleIndex="1">
                                                        <HeaderStyle  HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
                                                        <Columns>
                                                             <dx:GridViewDataTextColumn FieldName="NOMBRE_UCO" VisibleIndex="2" Caption="UCO / FECHA" Width="30%">
                                                                <DataItemTemplate>
                                                                    <table class="nav-justified">
                                                                        <tr>
                                                                            <td>
                                                                                <asp:Label ID="lblEtapa" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text='<%# Eval("NOMBRE_UCO") %>'></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style1">
                                                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("FECHA_CREA") %>'></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </DataItemTemplate>
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="NOMBRE_ACT" VisibleIndex="1" Visible="False">
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="ETAPA" VisibleIndex="0" Caption="ETAPA / ACTIVIDAD" Width="30%">
                                                                <DataItemTemplate>
                                                                    <table class="nav-justified">
                                                                        <tr>
                                                                            <td>
                                                                                <asp:Label ID="lblEtapa" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text='<%# Eval("NOMBRE_ETA") %>'></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style1">
                                                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("NOMBRE_ACT") %>'></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </DataItemTemplate>
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                            </dx:GridViewDataTextColumn>
                                                             <dx:GridViewDataDateColumn FieldName="FECHA_CREA" Visible="False" VisibleIndex="4">
                                                             </dx:GridViewDataDateColumn>
                                                             <dx:GridViewDataTextColumn FieldName="NOMBRE_ETA" Visible="False" VisibleIndex="3">
                                                             </dx:GridViewDataTextColumn>
                                                        </Columns>
                                                    </dx:GridViewBandColumn>
                                                   
                                                    <dx:GridViewDataTextColumn FieldName="ID_ACC_REG" ReadOnly="True" Visible="False" VisibleIndex="2">
                                                        <EditFormSettings Visible="False" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="ESTADO_VB" Visible="False" VisibleIndex="3">
                                                    </dx:GridViewDataTextColumn>
                                                   
                                                </Columns>

        
       
                                                <Styles Header-Wrap="True">
                                                    <Header Wrap="True">
                                                    </Header>
                                                     <AlternatingRow Enabled="true" />
                                                </Styles>
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
                                            </dx:ASPxGridView>
                                            <asp:SqlDataSource ID="sqlCalidad" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" 
                                                         SelectCommand="SP_WS_BUSCA_REGISTRO" 
                                                SelectCommandType="StoredProcedure">
                                                
                                                <SelectParameters>
                                                     <asp:Parameter DefaultValue="68" Name="ID_OBR" Type="Int32" />
                                                </SelectParameters>
                                                
                                            </asp:SqlDataSource>

                                        </div>
					          
                          
                     
				    </div>
			    </div>
		    </div> 
	</div> 
 </asp:Content>
