<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="RegistrosCalidadListado.aspx.vb" Inherits="Presentacion.Formulario_web110" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>

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
     .<script type="text/javascript">
        function OnToolbarItemClick(s, e) {
            if(IsCustomExportToolbarCommand(e.item.name)) {
                e.processOnServer=true;
                e.usePostBack=true;
            }
        }
        function IsCustomExportToolbarCommand(command) {
            return command == "CustomExportToXLS" || command == "CustomExportToXLSX";
        }
    </script><!-- Javascript --><script>
                                init.push(function () {
                                    $('#collapseExample').collapse('show');
                                    $('#switcher-example-2').switcher({
                                        theme: 'square',
                                        on_state_content: '<span class="fa fa-check"></span>',
                                        off_state_content: '<span class="fa fa-times"></span>'
                                        
                                    });

                                    $('#switcher-example-2').click(function () {
                                       //$('#switchers-disabled input').switcher('enable');

                                        $('#collapseExample').collapse('toggle');

                                    });

                                    //$('#switcher-disable-all').click(function () {
                                    //    $('#switchers-disabled input').switcher('disable');
                                    //});
                                });

                            </script><!-- / Javascript --><div class="collapse navbar multi-collapse " id="collapseExample">
                 <div class="col-sm-3">
                            <div class="input-group input-group-sm ">
                                    <div class="input-group">
									    <span class="label label-success"><i class="fas fa-clone"></i>&nbsp;&nbsp;Etapa&nbsp;&nbsp;</span>
                                    </div>
                                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                   <ContentTemplate>
                                
                                                        <dx:ASPxTokenBox ID="tknEtapa" runat="server"  AutoPostBack ="true"
                                                        AllowMouseWheel="True" DataSourceID="sqlEtapa"
                                                        Tokens="" Theme="MetropolisBlue" ValueSeparator=";"
                                                        TextField="Nombre" ValueField="Id" Width="100%"
                                                        AnimationType="Auto" AutoResizeWithContainer="True"
                                                        ShowShadow="False" HorizontalAlign="Justify"
                                                        ListBoxStyle-HorizontalAlign="Justify" ListBoxStyle-VerticalAlign="Middle"
                                                        ListBoxStyle-Wrap="True" LoadingPanelStyle-HorizontalAlign="Center"
                                                        RightToLeft="Default" BorderLeft-BorderStyle="None" BorderRight-BorderStyle="None"
                                                        BorderTop-BorderStyle="None" BorderBottom-BorderStyle="Solid" BackColor="#F3F3F3" NullText="seleciona una o varias etapas">
                                                    </dx:ASPxTokenBox>
                                                                <asp:SqlDataSource runat="server" ID="sqlEtapa" ConnectionString='<%$ ConnectionStrings:cnxCalidad %>' SelectCommand="SP_WS_TRAER_ETAPA" SelectCommandType="StoredProcedure" >
                                                                <SelectParameters>
                                                                           <asp:SessionParameter Name="ID_OBR" SessionField="idObra" Type="Int64" DefaultValue ="68" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                       </ContentTemplate>

                                <%--    <Triggers>
                                           <asp:AsyncPostBackTrigger ControlID ="btn_Filtrar" /> 

                                    </Triggers>--%>

                                    </asp:UpdatePanel>


                            </div>
                        </div>

                 <div class="col-sm-3">
                            <div class="input-group input-group-sm ">
                                    <div class="input-group">
									    <span class="label label-success"><i class="fas  fa-tasks"></i>&nbsp;&nbsp;Actividad&nbsp;&nbsp;</span>
                                    </div>
                                       <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                   <ContentTemplate>
                                
                                                <dx:ASPxTokenBox ID="tknActividad" runat="server" AutoPostBack ="true"
                                                                 AllowMouseWheel="True" DataSourceID="sqlActividad"
                                                                 Tokens="" Theme="MetropolisBlue" ValueSeparator=";" 
                                                                 textField="NOMBRE_ACT" ValueField="ID_QA_ACT" Width="100%" 
                                                                 AnimationType="Auto" AutoResizeWithContainer="True"
                                                                 ShowShadow="False" HorizontalAlign="Justify"
                                                                 ListBoxStyle-HorizontalAlign="Justify" ListBoxStyle-VerticalAlign="Middle"
                                                                 ListBoxStyle-Wrap="True" LoadingPanelStyle-HorizontalAlign="Center"
                                                                 RightToLeft="Default" BorderLeft-BorderStyle="None" BorderRight-BorderStyle="None"
                                                                 BorderTop-BorderStyle="None" BorderBottom-BorderStyle="Solid" BackColor="#F3F3F3" NullText="seleciona uno varias actividades">
                                                       </dx:ASPxTokenBox>
                                                <asp:SqlDataSource runat="server" ID="sqlActividad" ConnectionString='<%$ ConnectionStrings:cnxCalidad %>' 
                                                    SelectCommand="SELECT [ID_QA_ACT] ,[ID_OBR],[NOMBRE_ACT],[ID_ETA] FROM [QA_ACTIVIDAD] WHERE ID_OBR=@ID_OBR" >
                                                    <SelectParameters>
                                                      <%--  <asp:Parameter  Name="ID_ETA" Type="String" />--%>
                                                        <asp:SessionParameter Name="ID_OBR" SessionField="idObra" Type="Int64" DefaultValue ="68" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                        </ContentTemplate>

                               <%--     <Triggers>
                                           <asp:AsyncPostBackTrigger ControlID ="btn_Filtrar" /> 

                                    </Triggers>--%>

                                    </asp:UpdatePanel>


                            </div>
                        </div>
           

             <div class="col-sm-2">
                            <div class="input-group input-group-sm ">
                                    <div class="input-group">
									    <span class="label label-success"><i class="fas  fa-tasks"></i>&nbsp;&nbsp;Estado&nbsp;&nbsp;</span>
                                    </div>
                                             
                                       <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                   <ContentTemplate>
                                
                                

                                       <dx:ASPxTokenBox ID="tknEstado" runat="server" AutoPostBack="true"
                                           AllowMouseWheel="True" Width="100%"
                                           Tokens="" Theme="MetropolisBlue" ValueSeparator=";"
                                           TextField="Nombre" ValueField="Id" AutoResizeWithContainer="True"
                                           ShowShadow="False" HorizontalAlign="Justify"
                                           ListBoxStyle-HorizontalAlign="Justify" ListBoxStyle-VerticalAlign="Middle"
                                           ListBoxStyle-Wrap="True" LoadingPanelStyle-HorizontalAlign="Center" BorderLeft-BorderStyle="None" BorderRight-BorderStyle="None"
                                           BorderTop-BorderStyle="None" BorderBottom-BorderStyle="Solid" BackColor="#F3F3F3" NullText="seleciona uno o varios estados">
                                           <Items>
                                               <dx:ListEditItem Text="PENDIENTES" Value="0"></dx:ListEditItem>
                                               <dx:ListEditItem Text="APROBADO" Value="1"></dx:ListEditItem>
                                               <dx:ListEditItem Text="CON FALLAS" Value="2"></dx:ListEditItem>
                                           </Items>

                                       </dx:ASPxTokenBox>
                                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:cnxCalidad %>' SelectCommand="SP_WS_TRAER_ETAPA" SelectCommandType="StoredProcedure" >
                                                            <SelectParameters>
                                                                       <asp:SessionParameter Name="ID_OBR" SessionField="idObra" Type="Int64" DefaultValue ="68" />
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>

                                              </ContentTemplate>

                                <%--    <Triggers>
                                           <asp:AsyncPostBackTrigger ControlID ="btn_Filtrar" /> 

                                    </Triggers>--%>

                                    </asp:UpdatePanel>



                            </div>
                        </div>
              
                             <div class="input-group input-group-sm ">
                            <%--<button class="btn btn-info" runat="server"  id="btnFiltros"  ><span class="btn-label  fas fa-filter"></span>&nbsp;&nbsp;Filtar los Registros...&nbsp;&nbsp;</button>--%>
                                <dx:BootstrapButton ID="btn_Filtrar"  CssClasses-Control ="btn-info" CssClasses-Icon ="fas fa-filter"   runat="server" AutoPostBack="false" Text="filtrar registros" ></dx:BootstrapButton>

                            </div>
                    </div>
     <div class="panel">  
           

                <div class="panel-heading">
					<span class="panel-title" style="color:#17649A"><b>LISTADO DE PROTOCOLOS ACTIVADOS.</b></span>
                     <div class="panel-heading-controls">
                         <%--<button class="btn btn-xs btn-warning btn-outline" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample" ><span class="fa fa-refresh"></span>&nbsp;&nbsp;Refresh</button>--%>                        <%--    <button class="btn btn-xs btn-info btn-outline" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="true" aria-controls="collapseExample">
                            <span class="fas fa-filter"></span></button>--%>                         
                         <%--<Styles>
                                                                        <Style CssClass="fas fa-angle-double-right fa-2x"></Style>
                                                               </Styles>--%>
                        <span class="panel-heading-text"><em>Activar Filtros de Busqueda </em>&nbsp;&nbsp;<span style="color: #ccc">|</span>&nbsp;&nbsp;</span>
                        <input type="checkbox" id="switcher-example-2"  checked="checked" data-toggle="collapse" data-target="#collapseExample" aria-expanded="true" aria-controls="collapseExample" >&nbsp;&nbsp;
                         <%-- <asp:Parameter  Name="ETAPAS" Type="String" />--%>
                     </div> <!-- / .panel-heading-controls -->
                </div>
				<div class="stat-panel">
					<div class="stat-row">
						<div class="stat-cell col-sm-12 padding-sm ">
                                      <div class="col-md-12">
                                          <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                            <ContentTemplate>
                                                            <dx:ASPxGridView ID="gridActividades"  ClientInstanceName="grid" runat="server" AutoGenerateColumns="False" DataSourceID="sqlCalidad" 
                                                                EnableTheming="True" KeyFieldName="ID_ACC_REG" Theme="MaterialCompact" Width="100%">
                                                                <Settings GridLines="Horizontal" VerticalScrollableHeight="500" ShowColumnHeaders="False" />
                                                                <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
                                                                <SettingsPager EnableAdaptivity="true" Position="Top" AlwaysShowPager="True" NumericButtonCount="25" />
                                                
                                                                <SettingsBehavior />
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
                                                                    <dx:GridViewDataTextColumn FieldName="ID_ACC_REG" ReadOnly="True" Visible="False" VisibleIndex="5">
                                                                        <EditFormSettings Visible="False" />
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="ESTADO_VB" Visible="False" VisibleIndex="8">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataDateColumn FieldName="FECHA_CREA" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                                    </dx:GridViewDataDateColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="NOMBRE_ETA" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn Caption="UCO / FECHA" FieldName="NOMBRE_UCO" ShowInCustomizationForm="True" VisibleIndex="7" Width="30%">
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
                                                                    <dx:GridViewDataTextColumn FieldName="NOMBRE_ACT" ShowInCustomizationForm="True" Visible="False" VisibleIndex="3">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn Caption="ETAPA / ACTIVIDAD" FieldName="ETAPA" ShowInCustomizationForm="True" VisibleIndex="6" Width="30%">
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
                                                                </Columns>
                                                                <Styles Header-Wrap="True">
                                                                    <Header Wrap="True">
                                                                    </Header>
                                                                     <AlternatingRow Enabled="true" />
                                                                    <SelectedRow BackColor="#FFFFCC">
                                                                    </SelectedRow>
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
                                                                    <asp:SessionParameter SessionField="idObra" Name="ID_OBR" Type="string"  ></asp:SessionParameter>
                                                                     <asp:ControlParameter ControlID="tknEtapa" Name="ETAPAS" PropertyName="Value" Type="String" DefaultValue=" " />
                                                                    <asp:ControlParameter ControlID="tknActividad" Name="PARTIDAS" PropertyName="Value"  Type="String" DefaultValue=" " />
                                                                    <asp:ControlParameter ControlID="tknEstado" Name="ESTADOS" PropertyName="Value" Type="String" DefaultValue=" " />
                                                  
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                </ContentTemplate>

                                              <Triggers>
                                                     <asp:AsyncPostBackTrigger ControlID ="btn_Filtrar" /> 
                                              </Triggers>
                                          </asp:UpdatePanel>
                                        </div>
				    </div>
			    </div>
		    </div> 
	</div> 
    <asp:HiddenField ID="hEtapa" runat="server" />

 </asp:Content>
