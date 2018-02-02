<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="RegistroCalidadIngreso.aspx.vb" Inherits="Presentacion.Formulario_web16" %>
<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <link href="../../assets/stylesheets/DragAndDrop.css" rel="stylesheet" />
    <link href="../../CSS/animate.css" rel="stylesheet" />
<link href="../../assets/stylesheets/pace-theme-flash.css" rel="stylesheet" />
<script src="../../../assets/javascripts/pace.min.js"></script>

<script type="text/javascript">
    function onFileUploadComplete(s, e) {
        alert('Archivo(s) cargados correctamente');
        if (e.callbackData) {
            var fileData = e.callbackData.split('|');
            var fileName = fileData[0],
                fileUrl = fileData[1],
                fileSize = fileData[2];
            //DXUploadedFilesContainer.AddFile(fileName, fileUrl, fileSize);
        }
    }
    </script>

  <script type="text/javascript">
        function CategoriasCombo_SelectedIndexChanged(s, e) {
             grid.GetEditor("ID_TIP").PerformCallback(s.GetValue());
         }
	</script>

     <style>
        .modal-alert .modal-header .fa{
            font-size:40px;
        }
        .dropzone-box .fa.fa-cloud-upload{
            margin-left:130px;
        }
         .claseTest {
            background-color: #008c9e !important;
            font-weight: normal;
            font-size:10px;
            text-transform:uppercase;
        }

         .dxgvHeader, .dxgvHeader table{
             color:#F1F1F1;
         }

       .dxgvHeader{
           background-color:#008c9e;
           border: 1px solid #005F6B;
        }

       .nav-tabs > li > a{
           color:#ddd !important;
         }
       .nav-tabs li.active > a, .nav-tabs li.active > a:focus, .nav-tabs li.active > a:hover{
           color:#f1f1f1 !important;
           font-weight:700;
       }

       .tab-content.tab-content-bordered{
           background-color:#f2f2f2;
       }

       .panel-primary>.panel-heading{
           background-color:#17649A !important;
       }

      

    .form-horizontal .has-feedback .form-control-feedback{right:0px;}
    .dropzone-box .fa.fa-cloud-upload{margin-left:130px;}
    .claseTest {background-color: #008c9e !important;font-weight: normal;font-size:10px;text-transform:uppercase;}
    .dxgvHeader, .dxgvHeader table{color:#F1F1F1;}
    .dxgvHeader{background-color:#008c9e;border: 1px solid #005F6B;}
    .nav-tabs > li > a{color:#ddd !important;}
    .nav-tabs li.active > a, .nav-tabs li.active > a:focus, .nav-tabs li.active > a:hover{color:#f1f1f1 !important;font-weight:700;}
    .tab-content.tab-content-bordered{background-color:#f2f2f2;}
    .panel-primary>.panel-heading{background-color:#008c9e !important;}
    </style>

    
</asp:Content>


<asp:Content ID="MainBody" ContentPlaceHolderID="body" runat="server">
    <!-- .
    Bienvenido. 
    Configuración Inicial Foco en Obra
    File:initConfig.
-->


   
                <div class="panel">  
                    <!--                    -->
                    <!-- HEADING IMPORTADOR -->
                    <!--                    -->
                    <div class="panel-heading" id="c-tooltips-demo">
                        	<script>
                                init.push(function () {
                                    $('#c-tooltips-demo button').tooltip();
                                });
				            </script>
						<span class="panel-title" style="color:#17649A"><b>DEFINICIÓN PROCESO DE CALIDAD</b></span>
                        <div  class="panel-heading-controls" >
							 <span class="panel-heading-text">
                                 &nbsp;&nbsp;
                                <i class="fa fa-calendar" aria-hidden="true" style="color:#008080"></i>
                                Fecha:&nbsp;<b><asp:Label ID="lblFecha" runat="server" Text="Label"></asp:Label></b>
                   
                             </span> 

                            <p>
                                                                                                                   <%-- <dx:BootstrapButton CssClasses-Control="btn btn btn-primary rounded wizard-next-step-btn  " ID="btn_otropaso" runat="server" AutoPostBack="false"  Text="Guardar y Continuar el siguiente paso">
                                                                                                                        <CssClasses Icon="fas fa-angle-double-right" />

                                                                                                                    </dx:BootstrapButton>--%>
                                                                                                             <%--       
                                                                                                            
                                                                                                                </span> </p> --%>  
						</div>
			        </div>

					<div class="panel-body">
                             
                                                    <div class="wizard ui-wizard-example">
							                            <div class="wizard-wrapper">
								                            <ul class="wizard-steps">
									                            <li data-target="#wizard-example-step1">
										                            <span class="wizard-step-number">1</span>
										                            <span class="wizard-step-caption">
											                            INFORMACIÓN DE PLANTILLA
										                            </span>
									                            </li
									                            ><li data-target="#wizard-example-step2"> 
										                            <span class="wizard-step-number">2</span>
										                            <span class="wizard-step-caption">
											                            LISTA DE CHEQUEO
										                            </span>
									                            </li
									                            ><li data-target="#wizard-example-step3"> 
										                            <span class="wizard-step-number">3</span>
										                            <span class="wizard-step-caption">
											                            PARTICIPANTES
                            			                            </span>
									                            </li>
                            	                            </ul> 
							                            </div> 
                                                             <div class="wizard-content panel">
               				                                      <div class="wizard-pane" id="wizard-example-step1">
                                                                                                <div class="row"> 
                                                                                                    <div class="col-md-3">
                                                                                                            <div class="panel panel-transparent">
                                                                                                                    <div class="panel-heading">
                                                                                                                        <span class="panel-title "><i class="lnr lnr-apartment fa-2x"></i> <b>1.1)</b> Selecciona tu Proyecto</span>
                                                                                                                  
                                                                                                                    </div>
                                                                                                                    <div class="panel-body">
                                                                                                                        <span class="text-default "><em>Selecciona tu proyecto al cual le Asignarás un proceso </em></span>
                                                                                                                          <br />
                                                                                                                         <br />
                                                                                                                         <div class="row">
		                                                            	                                                        <div class="col-sm-12">
                                                                                                                                       <div class="form-group">
                                                                                                                                         
						                                                                                                                            <div class="col-sm-12">
                                                                                                                                            <dx:BootstrapComboBox Caption="Proyecto" ID="ddlProyectos" runat="server" NullText="seleciona un proyecto"  DataSourceID="sqlObra" AutoPostBack="True" TextField="NomAbr_Obr" ValueField="ID_OBR"></dx:BootstrapComboBox>
                                                                                                                                                      <asp:SqlDataSource ID="sqlObra" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SELECT [ID_OBR], [NomAbr_Obr] FROM [OBRAS] WHERE ([Vigente_Obr] = @Vigente_Obr)">
                                                                                                                                                      <SelectParameters>
                                                                                                                                                          <asp:Parameter DefaultValue="1" Name="Vigente_Obr" Type="String" />
                                                                                                                                                      </SelectParameters>
                                                                                                                                                  </asp:SqlDataSource>
                                                                                                                                                <asp:SqlDataSource ID="sqlEtapa" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SELECT [ID_ETA], [NOMBRE_ETA], [ID_OBR] FROM [ETAPAS_NIVELES] WHERE ([ID_OBR] = @ID_OBR)">
                                                                                                                                                         <SelectParameters>
                                                                                                                                                                   <asp:Parameter DefaultValue="68" Name="ID_OBR" Type="Int64"></asp:Parameter>
                                                                                                                                                                   </SelectParameters>
                                                                                                                                                         </asp:SqlDataSource>
                                                                                                                                                </div>
                                                                                                                                             
                                                                                                                                           </div>

                                                                                                                                    </div>
                                                                                                                             </div>
                                                                                                                        
                                                                                                            </div>
                                                                                                      </div>
                                                                                                  </div>
                                                                                                    <div class="col-md-4">
                                                                                                         <div class="panel widget-tasks  panel-transparent ">
                                                                                                                    <div class="panel-heading">
                                                                                                                        <span class="panel-title"><i class="lnr lnr-file-add fa-2x"></i>  <b>1.2)</b> Información del proceso</span>
                                                                                                                       
                                                                                                                    </div>
                                                                                                                    <div class="panel-body">
                                                                                                                               <span class="text-default "><em>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </em></span>
                                                                                                                          <br />
                                                                                                                          <br />
                                                                                                                         <div class="row">
		                                                            	                                                                   <div class="col-sm-12">
				                                                                                                                                <div class="form-group">
						                                                                                                                            <div class="col-sm-12">
							                                                                                                                             <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                                                                                                                            <ContentTemplate>
                                                                                                                                                        <dx:BootstrapTextBox  Enabled ="false"  RequiredField-IsRequired="true" ID="codigotexto" Caption="Código" runat="server" NullText="Código de plantilla"></dx:BootstrapTextBox>
                                                                                                                                                    </ContentTemplate>
                                                                                                                                                              <Triggers>
                                                                                                                                                                <asp:AsyncPostBackTrigger ControlID ="ddlProyectos"  />

                                                                                                                                                            </Triggers>
                                                                                                                                                         </asp:UpdatePanel>
                                                                                                                                                                </div>
					                                                                                                                            </div> 
					                                                                                                                            <div class="form-group">
						                                                                                                                            <div class="col-sm-12">
                                                                                                                                                   
							                                                                                                                             <dx:BootstrapTextBox  Enabled ="true"  RequiredField-IsRequired="true" ID="txtnombre" Caption="Nombre plantilla proceso" runat="server" NullText="Nombre proceso"></dx:BootstrapTextBox>
						                                                                                                                            </div>
                                                                                                                                                </div> <!-- / .form-group -->
					                                                                                                                           <div class="form-group">
                                                                                                                                                    <div class="col-sm-12">
                                                                                                                                                        <p><strong>Actividad:</strong></p>
                                                                                                                                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                                                                                                            <ContentTemplate>

                                                                                                                                                                    <div id="modalActividad" class="modal slideInRight animated ">
					                                                                            <div class="modal-dialog" >
						                                                                            <div class="modal-content">
							                                                                            <div class="modal-header dark">
								                                                                           <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
								                                                                            <h4 class="modal-title" id="myModalLabel"><i class="fas fa-plus-circle "></i>&nbsp;&nbsp;NUEVA ACTIVIDAD</h4>
							                                                                            </div>
							                                                                            <div class="modal-body">
                                                                                                        <div class="row padding-sm">
                                                                                                             <div class="col-sm-12">
				                                                                                                       <div class="form-group">
						                                                                                                               <%-- <label for="inputEmail2" class="col-sm-2 control-label">Proyecto </label>
						                                                                                                                <div class="col-sm-4">
							                                                                                                          <%--     <dx:ASPxLabel ID="lblProyecto" runat="server" Text=""></dx:ASPxLabel>
						                                                                                                                </div>--%>
					                                                                                                                </div> <!-- / .form-group -->
					                                                                                                                <div class="form-group">
						                                                                                                                <label for="inputEmail2" class="col-sm-2 control-label">Nombre</label>
						                                                                                                                <div class="col-sm-10">
							                                                                                                                <input type="text" runat="server" class="form-control" id="txtAct_Nombre" placeholder="Nombre Actividad">
						                                                                                                                </div>
                                                                                                                                    </div> <!-- / .form-group -->
					                                                                                                                  <div class="form-group">
						                                                                                                                <label for="inputEmail2" class="col-sm-2 control-label">Etapa</label>
						                                                                                                                <div class="col-sm-10">
                                                                                                                                            <dx:BootstrapComboBox ID="ddlEtapa" runat="server" DataSourceID="sqlEtapa" ValueField="ID_ETA" TextField="NOMBRE_ETA" ValueType="System.Int32" ForceDataBinding="True" ValidateRequestMode="Enabled">
                                                                                                                                                <ClearButton DisplayMode="Never"></ClearButton>
                                                                                                                                            </dx:BootstrapComboBox>
                                                                                                                                         
                                                                                                                                        </div>
                                                                                                                                    </div> <!-- / .form-group -->
					                                                                                                        </div> <!-- / .form-group -->
                                                                                                                </div>
							                                                                            </div>
                                                                                                        <div class="modal-footer">
                                                                                                           <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								                                                                            <dx:BootstrapButton ID="btnNuevaActividad" runat="server" data-dismiss="modal" AutoPostBack="false" Text="Guardar Actividad" class="btn btn-rounded btn-labeled btn-primary">
                                                                                                                <SettingsBootstrap RenderOption="Primary" />
								                                                                            </dx:BootstrapButton>
							                                                                            </div>
						                                                                            </div> <!-- / .modal-content -->
					                                                                            </div> <!-- / .modal-dialog -->
				                                                                            </div> <!-- / .modal -->
                                                                    



                                                                                                                                                            <div class="input-group col-sm-12">
                                                                                                                                                                    <dx:BootstrapComboBox   NullText="selecciona una actividad" ID="dllActividad" runat="server" DataSourceID="sqlActividad" TextField="NOMBRE_ACT" ValueField="ID_QA_ACT" AutoPostBack="True" Width ="100%" >
                                                                                                                                                                    </dx:BootstrapComboBox>
                                                                                                                                                                    <asp:SqlDataSource ID="sqlActividad" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SELECT [NOMBRE_ACT], [ID_QA_ACT], [ID_ETA] FROM [QA_ACTIVIDAD] WHERE ([ID_OBR] = @ID_OBR)">
                                                                                                                                                                        <SelectParameters>
                                                                                                                                                                            <asp:SessionParameter DefaultValue="69" Name="ID_OBR" SessionField="idObra" Type="Int64" />
                                                                                                                                                                        </SelectParameters>
                                                                                                                                                                    </asp:SqlDataSource>
                                                                                                                                                                <span class="input-group-btn">
								                                                                                                                                   <button data-toggle="modal" data-target="#modalActividad" data-original-title="Ingrese nueva actividad" class="btn btn-primary" type="button"> <i class="fas fa-plus-circle rounded"></i></button>
							                                                                                                                                    </span>
                                                                                                                                                            </div>  
                                                                                                                                                                </ContentTemplate>
                                                                                                                                                            <Triggers>
                                                                                                                                                                <asp:AsyncPostBackTrigger ControlID ="ddlProyectos"  />

                                                                                                                                                            </Triggers>
                                                                                                                                                            </asp:UpdatePanel>
                                                                                                                                                    </div>
                                                                                                                                                </div> <!-- / .form-group -->
                                                                                                                                                  <div class="form-group">
						                                                                                                                            <div class="col-sm-12">
                                                                                                                                                          <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                                                                                                                                            <ContentTemplate>
                                                                                                                                                        <dx:BootstrapTextBox Enabled ="false"  RequiredField-IsRequired="true" ID="txtEtapa" Caption="Etapa" runat="server" NullText="etapa de una actividad"></dx:BootstrapTextBox>
                                                                                                                                                        <p class="help-block">Esta es la etapa para actividad seleccionada.</p>
						                                                                                                                                  </ContentTemplate>
                                                                                                                                                            <Triggers>
                                                                                                                                                                <asp:AsyncPostBackTrigger ControlID ="ddlProyectos"  />

                                                                                                                                                            </Triggers>
                                                                                                                                                            </asp:UpdatePanel>
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                        </div>
					                                                                                                                            </div> <!-- / .form-group -->
					                                                                                                                            <div class="form-group">
						                                                                                                                            <label for="asdasdas" class="col-sm-6 control-label">Observaciones generales:</label>
						                                                                                                                            <div class="col-sm-12">
                                                                                                                                                       <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                                                                                                                                                            <ContentTemplate>
							                                                                                                                                     <dx:BootstrapMemo ID="txtMemPbservaciones" runat="server" Rows="2" EncodeHtml="False" AutoPostBack ="true" ></dx:BootstrapMemo>
                                                                                                                                                                    <p class="help-block">las observaciones que ingresas aparecen en el Pie de la plantilla de registro</p>
                                                                                                                                                        </ContentTemplate>
                                                                                                                                                            <Triggers>
                                                                                                                                                                <asp:AsyncPostBackTrigger ControlID ="ddlProyectos"  />
                                                                                                                                                            </Triggers>
                                                                                                                                                            </asp:UpdatePanel>
                                                                                                                                                        </div>
					                                                                                                                            </div> <!-- / .form-group -->
					                                                                                                                    </div> <!-- / .form-group -->
			                                                                                                              </div>
                                                                                                                    </div>
                                                                                                                </div> <!-- / .panel -->
				                                                                                   </div>
                                                                                                    <div class="col-md-5">
                                                                                                             <div class="panel panel-transparent ">
                                                                                                                    <div class="panel-heading">
                                                                                                                        <span class="panel-title"><i class="fas fa-map-marker-alt fa-2x"></i> <b>1.3) </b> Alcance </span>
                                                                                                                      
                                                                                                                    </div>
                                                                                                             <div class="panel-body">
                                                                                                              <span class="text-default "><em>Corresponde a los recintos donde aplica este proceso de calidad </em></span>
                                                                                                                 <br />
                                                                                                                 <br />
                                                                                                                 <div class="row">
		                                                            	                                                      <div class="col-sm-12">
                                                                                                                                  <div class="form-group">    
                                                                                                                                 <dx:ASPxGridView 	OnCellEditorInitialize="Grid_CellEditorInitialize" ClientInstanceName="grid" ID="Grid" runat="server" DataSourceID="sqlCat_Tip" AutoGenerateColumns="False" KeyFieldName="ID_ACC_SEC" Theme="MaterialCompact" EnableTheming="True" Width="100%">
                                                                                                                                      <Toolbars>
            <dx:GridViewToolbar EnableAdaptivity="true">
                <Items>
                    <dx:GridViewToolbarItem Command="New" Text ="Agregar" DisplayMode="Text" >
                   
                        <Image IconID="actions_addfile_32x32">
                        </Image>
                        <ItemStyle VerticalAlign="Middle" Width="20px">
                        <BackgroundImage HorizontalPosition="center" VerticalPosition="center" />
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                   
                </Items>
            </dx:GridViewToolbar>
        </Toolbars>
                <SettingsPager Visible="False"></SettingsPager>
                                                                                                                                      <SettingsEditing Mode="Inline">
                                                                                                                                      </SettingsEditing>
                        <Settings UseFixedTableLayout="True" />
                                                                                                                                     <SettingsDataSecurity AllowEdit="False" />
                                                                                                                                      <SettingsText CommandNew="Agregar" CommandUpdate="Guardar" CommandCancel="Cancelar" CommandDelete="Quitar" EmptyDataRow="No hay terrenos con recintos agregados" />
                        <Columns>

                                                                                                                                                    <%--   <dx:GridViewDataComboBoxColumn FieldName="ID_TIP" Width="40%" Caption="TIPOLOGIAS" VisibleIndex="4">
                                                                                                                                                           <PropertiesComboBox DataSourceID="sqlCategorias" TextField="NOMBRE_TIP" ValueField="ID_TIP"></PropertiesComboBox>
                                                                                                                                                       </dx:GridViewDataComboBoxColumn>--%>

                                                                                                                                                       <dx:GridViewCommandColumn VisibleIndex="5" Width="20%" ShowDeleteButton="True"></dx:GridViewCommandColumn>
                                                                                                                                                       <dx:GridViewDataTextColumn FieldName="ID_ACC_SEC" ReadOnly="True" VisibleIndex="1" Visible="False">
                                                                                                                                                           <EditFormSettings Visible="False"></EditFormSettings>
                                                                                                                                                       </dx:GridViewDataTextColumn>
                                                                                                                                                       <dx:GridViewDataComboBoxColumn Caption="Categorias" FieldName="ID_TUC" Width="40%" VisibleIndex="3">
                                                                                                                                                           <PropertiesComboBox DataSourceID="sqlCategorias" ValueField="ID_TUC" ValueType="System.Int32"
                                                                                                                                                               TextField="NOMBRE_TUC" EnableSynchronization="False" IncrementalFilteringMode="StartsWith">
                                                                                                                                                                                                                                                                                                                            <ValidationSettings RequiredField-IsRequired="true" Display="Dynamic" >
<RequiredField IsRequired="True"></RequiredField>
                                                                                                                                                                                                                                                                                                                            </ValidationSettings>
						                                                                                                                                        <ClientSideEvents SelectedIndexChanged="CategoriasCombo_SelectedIndexChanged" />
					                                                                                                                                        </PropertiesComboBox>
				                                                                                                                                        </dx:GridViewDataComboBoxColumn>
                                                                                                                                                       <dx:GridViewDataComboBoxColumn Caption="Tipologias" FieldName="ID_TIP" Width="40%" VisibleIndex="4">
					                                                                                                                                        <PropertiesComboBox DataSourceID="sqlTodasTipologias" ValueField="ID_TIP" ValueType="System.Int32"
						                                                                                                                                        TextField="NOMBRE_TIP" EnableSynchronization="False" IncrementalFilteringMode="StartsWith">
						                                                                                                                                        <ValidationSettings RequiredField-IsRequired="true" Display="Dynamic" >
<RequiredField IsRequired="True"></RequiredField>
                                                                                                                                                                </ValidationSettings>
					                                                                                                                                        </PropertiesComboBox>
				                                                                                                                                        </dx:GridViewDataComboBoxColumn>

                                                                                                                                                       <dx:GridViewDataTextColumn FieldName="ID_ACC_PLT" VisibleIndex="2" Visible="False">
                                                                                                                                                       </dx:GridViewDataTextColumn>

                                                                                                                                                   </Columns>

                                                                                                                                                   
                                                                                                                                      <Styles>
                                                                                                                                          <InlineEditRow BackColor="#F0F0F0">
                                                                                                                                          </InlineEditRow>
                                                                                                                                      </Styles>

                                                                                                                                                   
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
                                                                                                                                  </div>
                                                                                                                          </div>
                                                                                                                 </div> <!-- / .form-group -->
			                                                                                                        <p class="help-block">ejemplo: Departamento (Categoría) Tipo A (Tipologia).</p>     
                                                                                                            </div>

		                                                                                                        </div>
					                                                                                 </div>
			                                                                                    </div>
                                                                                                    <div class="col-md-12" style="text-align:right">
                                                                                                                <p>
                                                                                                                   <%-- <dx:BootstrapButton CssClasses-Control="btn btn    <a class="btn btn btn-primary  wizard-next-step-btn" id="A1" runat="server" style="cursor:pointer"><i class="fas fa-angle-double-right" aria-hidden="true" ></i>&nbsp;&nbsp;Guardar</a>
                             />

                                                                                                                    </dx:BootstrapButton>--%>
                                                                                                                <%--    <a class="btn btn btn-primary rounded wizard-next-step-btn" id="GuardarPaso_11" runat="server" style="cursor:pointer">Guardar y continuar&nbsp;&nbsp;<i class="fas fa-angle-double-right" aria-hidden="true" ></i></a> <span class="fa-stack fa-lg wizard-next-step-btn" style="cursor:pointer">
                                                                                                             --%>      <a class="btn btn btn-primary  wizard-next-step-btn" id="GuardarPaso_1" runat="server" style="cursor:pointer"><i class="fas fa-angle-double-right" aria-hidden="true" ></i>&nbsp;&nbsp;Guardar</a>
                            
                                                                                                                 </p>
                                                                                         </div>
						                                                     <%--   </contenttemplate>
                                                                             </asp:UpdatePanel>--%>
                                                                </div>
                                                                <div class="wizard-pane" id="wizard-example-step2" <%--style="display: none;"--%>>

                                                                       <div id="modalGrupo" class="modal  fadeIn  animated">
					                                                                            <div class="modal-dialog" >
						                                                                            <div class="modal-content">
							                                                                            <div class="modal-header dark">
								                                                                           <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
								                                                                            <h4 class="modal-title" id="myModalLabelGRUPO"><i class="fas fa-plus-circle "></i>&nbsp;&nbsp;NUEVO GRUPO</h4>
							                                                                            </div>
							                                                                            <div class="modal-body">
                                                                                                        <div class="row padding-sm">
                                                                                                             <div class="col-sm-12">
				                                                                                                       <div class="form-group">
						                                                                                                            <div class="form-group">
						                                                                                                                <label for="inputEmail2" class="col-sm-2 control-label">Nombre</label>
						                                                                                                                <div class="col-sm-10">
							                                                                                                                <input type="text" runat="server" class="form-control" id="txtNuevoGrupo" placeholder="Nombre grupo">
						                                                                                                                </div>
                                                                                                                                    </div> <!-- / .form-group -->
					                                                                                                                
					                                                                                                        </div> <!-- / .form-group -->
                                                                                                                    </div>
                                                                                                          </div>
							                                                                            </div>
                                                                                                        <div class="modal-footer">
                                                                                                           <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                                                                            <button id="OnMyButtonClick" type="button" class="btn btn-default" >Guardar</button>

                                                                                                            <dx:BootstrapButton ID="btnNuevoGrupo" runat="server" data-dismiss="modal" Text="Guardar Grupo" class="btn btn-rounded btn-labeled btn-primary">
                                                                                                                <SettingsBootstrap RenderOption="Primary" />
								                                                                            </dx:BootstrapButton>
							                                                                            </div>
						                                                                            </div> <!-- / .modal-content -->
					                                                                            </div> <!-- / .modal-dialog -->
				                                                                            </div> <!-- / .modal -->
                                                                 <div class="row">
                                                                   <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                                      <ContentTemplate>
                                                                        <div class="col-md-12" >
                                                                                     <div class="panel form-horizontal">
					                                                                   <div class="panel-body bg-panel">
                                                                                         <h4>Información de la plantilla del checklist</h4>
                                                                                           <p>
                                                                                               <i class="lnr lnr-apartment fa-2x"></i>&nbsp;:<b>&nbsp;<asp:Label ID="lblProyecto_nombre" runat="server" Text=""></asp:Label></b>
                                                                                               &nbsp;&nbsp;<i class="lnr lnr-file-add fa-2x"></i>&nbsp;:<b>&nbsp;<asp:Label ID="lblPLantillaCodigo" runat="server" Text=""></asp:Label></b>&nbsp;-&nbsp;<asp:Label ID="lblPlantillaNombre" runat="server" Text=""></asp:Label>
                                                                                               &nbsp;&nbsp;<i class="lnr lnr-indent-increase fa-2x"></i>&nbsp;:&nbsp;<b><asp:Label ID="lblActividad" runat="server" Text=""></asp:Label>
                                                                                            </p>
                                                                                          </div>
                                                                                         </div>
                                                                                </div>
                                                                          </b>
                                                                      </ContentTemplate>
                                                                        <Triggers>
                                                                               <asp:AsyncPostBackTrigger ControlID ="ddlProyectos"  />
                                                                        </Triggers>
                                                                       </asp:UpdatePanel>

                                                              
                                                                     <%-- <dx:BootstrapPopupControl runat="server" ClientInstanceName="popupControl" PopupElementCssSelector="#default-popup-control-10"
                                                                                        ShowFooter="true" ShowHeader="true" HeaderText="Header text" FooterText="Footer text"
                                                                                         PopupHorizontalAlign ="WindowCenter"   PopupVerticalAlign ="WindowCenter"  Modal ="true" Width="500px" CloseAction="CloseButton" >
                                                                        <HeaderTemplate>
                                                                                <h4 class="text-info">
                                                                                    <span class="fas fa-list-alt"></span>&nbsp;&nbsp;Nuevo grupo para la actividad
                                                                                </h4>
                                                                            </HeaderTemplate>
                                                                        <ContentCollection>
                                                                            <dx:ContentControl>
                                                                                <dx:BootstrapTextBox ID="txtNuevoGrupo" Caption ="Nombre grupo" CaptionSettings-Position ="Before"     runat="server"></dx:BootstrapTextBox>
                                                                            </dx:ContentControl>
                                                                        </ContentCollection>
                                                                            <FooterTemplate>
                                                                                <dx:BootstrapButton id="btnNuevoGrupo"  ClientInstanceName="btnNuevoGrupo"  runat="server" Text="Agregar"  >
                                                                                
                                                                                </dx:BootstrapButton>
                                                                            </FooterTemplate>

                                                                    </dx:BootstrapPopupControl>--%>
                                                                       <div class="col-ms-12">
                                                                      <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                                                        <ContentTemplate>
                                                                        <dx:ASPxGridView ID="grillaCheck" runat="server" AutoGenerateColumns="False" DataSourceID="sqlListaCheck" KeyFieldName="ID_PLT_CHK" EnableTheming="True" Theme="MaterialCompact" Width="100%">
                                                                            <SettingsEditing Mode="EditForm">
                                                                            </SettingsEditing>
                                                                            <SettingsBehavior AutoExpandAllGroups="True" />
                                                                            <SettingsPager Mode="ShowAllRecords">
                                                                            </SettingsPager>
                                                                            <SettingsDataSecurity AllowDelete="True" AllowEdit="True" AllowInsert="True" />
                                                                            <EditFormLayoutProperties AlignItemCaptionsInAllGroups="True" ColCount="2">
                                                                                <Items>
                                                                                    <dx:GridViewColumnLayoutItem ColumnName="ID_GRP_CHK" Caption="GRUPO" Name="comboGrupo" Width="50%">
                                                                                    </dx:GridViewColumnLayoutItem>
                                                                                    <dx:GridViewColumnLayoutItem ColumnName="Adj." Width="100%" Caption="SUBIR ARCHIVOS" HelpText="Adjunte 1 o varios archivos a la actividad" RowSpan="6" ShowCaption="True" VerticalAlign="Middle">
                                                                                        <Template>
                                                                                            <div class="uploadContainer">
                                                                                            

                                                                                                <dx:ASPxUploadControl ID="UploadControl" runat="server" ClientInstanceName="UploadControl" Width="320"
                                                                                                    NullText="Elije multiples Archivos...." UploadMode="Advanced" ShowUploadButton="True" ShowProgressPanel="True"  AdvancedModeSettings-TemporaryFolder="~/archivos"    FileSystemSettings-UploadFolder ="~/archivos"
                                                                                                    OnFileUploadComplete="UploadControl_FileUploadComplete" Theme="Material" UploadStorage="FileSystem" >
                                                                                                    <AdvancedModeSettings EnableMultiSelect="True" EnableFileList="True" EnableDragAndDrop="True" />
                                                                                                    <ValidationSettings MaxFileSize="4194304" AllowedFileExtensions=".jpg,.jpeg,.gif,.png">
                                                                                                    </ValidationSettings>
                                                                                                    <ClientSideEvents FilesUploadStart="function(s, e) {  }"
                                                                                                        FileUploadComplete="onFileUploadComplete" />
                                                                                                </dx:ASPxUploadControl>
                                                                                                <br />
                                                                                                <br />
                                                                                                <p class="note note-danger ">
                                                                                                    <dx:ASPxLabel ID="AllowedFileExtensionsLabel" runat="server" Text="las posibles extenciones son: .jpg, .jpeg, .gif, .png." Font-Size="8pt">
                                                                                                    </dx:ASPxLabel>
                                                                                                    <br />
                                                                                                    <dx:ASPxLabel ID="MaxFileSizeLabel" runat="server" Text="el maximo de tamaño de archivo: 4 MB." Font-Size="8pt">
                                                                                                    </dx:ASPxLabel>
                                                                                                </p>
                                                                                            </div>
                                                                                            <%--       <div>
                                                                                                <dx:UploadedFilesContainer ID="FileContainer" runat="server" Width="380" Height="180" 
                                                                                                    NameColumnWidth="240" SizeColumnWidth="70" HeaderText="Archivos Subidos" />
                                                                                            </div>
                                                                                            --%>
                                                                                        </Template>

                                                                                        <CaptionSettings Location="Top" HorizontalAlign="Left" VerticalAlign="Middle"></CaptionSettings>
                                                                                    </dx:GridViewColumnLayoutItem>
                                                                                    <dx:GridViewColumnLayoutItem ColumnName="NOMBRE_CHK" Width="50%">
                                                                                    </dx:GridViewColumnLayoutItem>
                                                                                    <dx:GridViewColumnLayoutItem Caption="ESPECIFICACION" ColumnName="ESPECIFICACION_CHK" Width="50%">
                                                                                        <Template>
                                                                                            <dx:BootstrapMemo ID="BootstrapMemo1" runat="server" Rows="4" Value='<%# Bind("ESPECIFICACION_CHK") %>'>
                                                                                            </dx:BootstrapMemo>
                                                                                        </Template>
                                                                                        <CaptionSettings Location="Left"></CaptionSettings>
                                                                                    </dx:GridViewColumnLayoutItem>
                                                                                    <dx:GridViewColumnLayoutItem  ColumnName="CRITERIO_CONTROL" Width="50%">
                                                                                    </dx:GridViewColumnLayoutItem>
                                                                                    <dx:GridViewColumnLayoutItem ColumnName="SOLICITA_ENT" Width="50%">
                                                                                    </dx:GridViewColumnLayoutItem>
                                                                                    <dx:GridViewColumnLayoutItem ColumnName="TIPO_DATO_ENT" Width="50%">
                                                                                    </dx:GridViewColumnLayoutItem>
                                                                                    <dx:EditModeCommandLayoutItem HorizontalAlign="Right" ColSpan="2">
                                                                                    </dx:EditModeCommandLayoutItem>
                                                                                </Items>
                                                                                <SettingsItemCaptions HorizontalAlign="Right" Location="Left" VerticalAlign="Middle" />
                                                                            </EditFormLayoutProperties>
                                                                            <Columns>
                                                                                <dx:BootstrapGridViewCommandColumn ButtonRenderMode="Link" ButtonType="Link" HorizontalAlign="Center" ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0" Width="10%">
                                                                                </dx:BootstrapGridViewCommandColumn>
                                                                                <dx:BootstrapGridViewTextColumn FieldName="ID_PLT_CHK" ReadOnly="True" Visible="False" VisibleIndex="1">
                                                                                    <SettingsEditForm Visible="False" />
                                                                                </dx:BootstrapGridViewTextColumn>
                                                                                <dx:BootstrapGridViewTextColumn FieldName="ID_ACC_PLT" Visible="False" VisibleIndex="2">
                                                                                </dx:BootstrapGridViewTextColumn>
                                                                                <dx:BootstrapGridViewTextColumn Caption="NOMBRE" FieldName="NOMBRE_CHK" VisibleIndex="4" Width="25%">
                                                                                </dx:BootstrapGridViewTextColumn>
                                                                                <dx:BootstrapGridViewTextColumn Caption="CRITERIO" FieldName="CRITERIO_CONTROL" VisibleIndex="6" Width="10%" HorizontalAlign="Center">
                                                                                </dx:BootstrapGridViewTextColumn>
                                                                                <dx:BootstrapGridViewTextColumn Caption="ESPECIFICACI&#211;N" FieldName="ESPECIFICACION_CHK" VisibleIndex="5" Width="25%">
                                                                                </dx:BootstrapGridViewTextColumn>
                                                                                <dx:BootstrapGridViewComboBoxColumn Caption="REQUERIDO" FieldName="SOLICITA_ENT" HorizontalAlign="Center" VisibleIndex="8" Width="10%">
                                                                                    <PropertiesComboBox>
                                                                                        <Items>
                                                                                            <dx:BootstrapListEditItem Text="NO" Value="0">
                                                                                            </dx:BootstrapListEditItem>
                                                                                            <dx:BootstrapListEditItem Text="SI" Value="1">
                                                                                            </dx:BootstrapListEditItem>
                                                                                        </Items>
                                                                                        <ClearButton DisplayMode="Never" />
                                                                                    </PropertiesComboBox>
                                                                                </dx:BootstrapGridViewComboBoxColumn>
                                                                                <dx:BootstrapGridViewComboBoxColumn Caption="TIPO DE DATO" FieldName="TIPO_DATO_ENT" HorizontalAlign="Center" VisibleIndex="9" Width="10%">
                                                                                    <PropertiesComboBox>
                                                                                        <Items>
                                                                                            <dx:BootstrapListEditItem Text="NUMERICO" Value="0">
                                                                                            </dx:BootstrapListEditItem>
                                                                                            <dx:BootstrapListEditItem Text="TEXTO" Value="1">
                                                                                            </dx:BootstrapListEditItem>
                                                                                        </Items>
                                                                                        <ClearButton DisplayMode="Never" />
                                                                                    </PropertiesComboBox>
                                                                                    <SettingsHeaderFilter Mode="List">
                                                                                    </SettingsHeaderFilter>
                                                                                </dx:BootstrapGridViewComboBoxColumn>
                                                                                <dx:BootstrapGridViewHyperLinkColumn Caption="Adj." HorizontalAlign="Center" VisibleIndex="10" Width="5%" Visible="False">
                                                                                    <PropertiesHyperLinkEdit IconCssClass="fas fa-paperclip" Text="Adjuntar...">
                                                                                    </PropertiesHyperLinkEdit>
                                                                                </dx:BootstrapGridViewHyperLinkColumn>
                                                                                <dx:GridViewDataTextColumn FieldName="NOMBRE_GRP_CHK" GroupIndex="0" SortIndex="0" SortOrder="Ascending" Width="10%" Caption="GRUPO" VisibleIndex="3">
                                                                                    <SettingsHeaderFilter>
                                                                                        <DateRangeCalendarSettings>
                                                                                            <FastNavProperties DisplayMode="Inline"></FastNavProperties>
                                                                                        </DateRangeCalendarSettings>

                                                                                        <DateRangePickerSettings>
                                                                                            <FastNavProperties DisplayMode="Inline"></FastNavProperties>
                                                                                        </DateRangePickerSettings>
                                                                                    </SettingsHeaderFilter>
                                                                                    <EditItemTemplate>
                                                                                         <div class="input-group col-sm-12">
                                                                                               
                                                                                           </div>  
                                                                                    </EditItemTemplate>
                                                                                </dx:GridViewDataTextColumn>
                                                                                <dx:GridViewDataComboBoxColumn  FieldName="ID_GRP_CHK" VisibleIndex="7" Name="ckGrupo">
                                                                                    <PropertiesComboBox  DataSourceID="sqlGrupos" TextField="NOMBRE_GRP_CHK" ValueField="ID_GRP_CHK">
                                                                                       <ClientSideEvents ButtonClick="function(s,e) { $('#modalGrupo').modal('show'); }" />
                                                                                        <Buttons>
                                                                                            <dx:BootstrapEditButton  IconCssClass="fas fa-plus-circle" Position="right" />
                                                                                             
                                                                                       </Buttons>
                                                                                     <%--   <button data-toggle="modal" data-target="#modalActividad" data-original-title="Ingrese nueva actividad" class="btn btn-primary" type="button"> <i class="fas fa-plus-circle rounded"></i></button>--%>
                                                                                    </PropertiesComboBox>

                                                                                   

                                                                                </dx:GridViewDataComboBoxColumn>
                                                                            </Columns>
                                                                            <Styles>
                                                                                <EditForm BackColor="#CCCCCC">
                                                                                </EditForm>
                                                                            </Styles>
                                                                            </dx:ASPxGridView>
                                                                           <asp:SqlDataSource ID="sqlGrupos" runat="server" ConnectionString='<%$ ConnectionStrings:cnxCalidad %>' SelectCommand="SELECT * FROM [QA_GRUPO_CHECKLIST]" DeleteCommand="DELETE FROM [QA_GRUPO_CHECKLIST] WHERE [ID_GRP_CHK] = @ID_GRP_CHK" InsertCommand="INSERT INTO [QA_GRUPO_CHECKLIST] ([NOMBRE_GRP_CHK]) VALUES (@NOMBRE_GRP_CHK)" UpdateCommand="UPDATE [QA_GRUPO_CHECKLIST] SET [NOMBRE_GRP_CHK] = @NOMBRE_GRP_CHK WHERE [ID_GRP_CHK] = @ID_GRP_CHK">
                                                                               <DeleteParameters>
                                                                                   <asp:Parameter Name="ID_GRP_CHK" Type="Int32"></asp:Parameter>
                                                                               </DeleteParameters>
                                                                               <InsertParameters>
                                                                                   <asp:Parameter Name="NOMBRE_GRP_CHK" Type="String"></asp:Parameter>
                                                                               </InsertParameters>
                                                                               <UpdateParameters>
                                                                                   <asp:Parameter Name="NOMBRE_GRP_CHK" Type="String"></asp:Parameter>
                                                                                   <asp:Parameter Name="ID_GRP_CHK" Type="Int32"></asp:Parameter>
                                                                               </UpdateParameters>
                                                                           </asp:SqlDataSource>
                                                                        <asp:SqlDataSource ID="sqlListaCheck" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" 
                                                                            SelectCommand="SP_WS_LISTA_CHECKLIST" DeleteCommand="DELETE FROM [QA_ACC_PLT_CHECKLIST] WHERE [ID_PLT_CHK] = @ID_PLT_CHK" 
                                                                            InsertCommand="INSERT INTO [QA_ACC_PLT_CHECKLIST] ([ID_ACC_PLT], [ID_GRP_CHK], [NOMBRE_CHK], [SOLICITA_ENT], [TIPO_DATO_ENT], [CRITERIO_CONTROL], [ESPECIFICACION_CHK]) VALUES (@ID_ACC_PLT,@ID_GRP_CHK, @NOMBRE_CHK,@SOLICITA_ENT, @TIPO_DATO_ENT, @CRITERIO_CONTROL, @ESPECIFICACION_CHK)" 
                                                                            UpdateCommand="UPDATE [QA_ACC_PLT_CHECKLIST] SET [ID_ACC_PLT] = @ID_ACC_PLT,[NOMBRE_CHK] = @NOMBRE_CHK, [ID_GRP_CHK] = @ID_GRP_CHK,[SOLICITA_ENT] = @SOLICITA_ENT, [TIPO_DATO_ENT] = @TIPO_DATO_ENT, [CRITERIO_CONTROL] = @CRITERIO_CONTROL, [ESPECIFICACION_CHK] = @ESPECIFICACION_CHK WHERE [ID_PLT_CHK] = @ID_PLT_CHK" 
                                                                            SelectCommandType="StoredProcedure">
                                                                            <DeleteParameters>
                                                                                <asp:Parameter Name="ID_PLT_CHK" Type="Int32"></asp:Parameter>
                                                                            </DeleteParameters>
                                                                            <InsertParameters>
                                                                                <asp:SessionParameter SessionField="ID_ACC_PLT" Name="ID_ACC_PLT" Type="Int16" DefaultValue="8"></asp:SessionParameter>
                                                                                <asp:Parameter Name="NOMBRE_CHK" Type="String"></asp:Parameter>
                                                                                <asp:Parameter Name="ID_GRP_CHK" Type="int16"></asp:Parameter>
                                                                                <asp:Parameter Name="SOLICITA_ENT" Type="Int16"></asp:Parameter>
                                                                                <asp:Parameter Name="TIPO_DATO_ENT" Type="Int16"></asp:Parameter>
                                                                                <asp:Parameter Name="CRITERIO_CONTROL" Type="String"></asp:Parameter>
                                                                                <asp:Parameter Name="ESPECIFICACION_CHK" Type="String"></asp:Parameter>
                                                                            </InsertParameters>
                                                                            <SelectParameters>
                                                                                <asp:SessionParameter DefaultValue="8" Name="ID_ACC_PLT" SessionField="ID_ACC_PLT" Type="Int32" />
                                                                            </SelectParameters>
                                                                            <UpdateParameters>
                                                                                <asp:Parameter Name="ID_ACC_PLT" Type="Int32"></asp:Parameter>
                                                                                <asp:Parameter Name="NOMBRE_CHK" Type="String"></asp:Parameter>
                                                                                <asp:Parameter Name="ID_GRP_CHK" Type="Int32"></asp:Parameter>
                                                                                <asp:Parameter Name="SOLICITA_ENT" Type="Int16"></asp:Parameter>
                                                                                <asp:Parameter Name="TIPO_DATO_ENT" Type="Int16"></asp:Parameter>
                                                                                <asp:Parameter Name="CRITERIO_CONTROL" Type="String"></asp:Parameter>
                                                                                <asp:Parameter Name="ESPECIFICACION_CHK" Type="String"></asp:Parameter>
                                                                                <asp:Parameter Name="ID_PLT_CHK" Type="Int32"></asp:Parameter>
                                                                            </UpdateParameters>

                                                                        </asp:SqlDataSource>                    
                                                                      <br />
                                                                        </ContentTemplate>
                                                                          <Triggers>
                                                                                <asp:AsyncPostBackTrigger ControlID ="btnNuevoGrupo" />
                                                                          </Triggers>
                                                                    </asp:UpdatePanel>

                                                                        <div class="col-md-5">
                                                                                    <p> <span class="fa-stack fa-lg wizard-prev-step-btn" style="cursor:pointer">
                                                                                    <i class="fa fa-arrow-circle-left fa-2x" aria-hidden="true" style="color:#008080"></i>
                                                                                    </span><a class="wizard-prev-step-btn" style="cursor:pointer">Volver al Paso Anterior</a></p>
                                                                        </div>

                                                                        <div class="col-md-5" style="text-align:right">
                                                                                    <p><a class="wizard-next-step-btn" style="cursor:pointer">Guardar y continuar el siguiente paso</a><span class="fa-stack fa-lg wizard-next-step-btn" style="cursor:pointer">
                                                                                    <i class="fa fa-arrow-circle-right fa-2x" aria-hidden="true" style="color:#008080"></i>
                                                                                    </span> </p>
                                                                        </div>


                                                                    </div>
                                                                       
                                                                    
                                                                  
                                                                  
									                            </div>			
                                                            </div>
								
								                        <div class="wizard-pane" id="wizard-example-step3" <%--style="display: none;"--%>>
									                         <div class="row">
                                                                 <div class="col-ms-12">
    <dx:ASPxGridView ID="gridMensajes" runat="server" DataSourceID="SqlDataSource2" EnableTheming="True" Theme="MaterialCompact" Width ="100%" AutoGenerateColumns ="False" KeyFieldName="ID_QA_MSG" >
        <Columns>
            <dx:GridViewBandColumn Caption="CRITERIOS DE AVISOS POR MAIL" VisibleIndex="8">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <Columns>
                    <dx:GridViewDataCheckColumn Caption="SOLICITAR" FieldName="CRITERIO_1" VisibleIndex="0" Width="5%">
                        <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                    </dx:GridViewDataCheckColumn>
                    <dx:GridViewDataCheckColumn Caption="VB" FieldName="CRITERIO_2" VisibleIndex="1" Width="5%">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                    </dx:GridViewDataCheckColumn>
                    <dx:GridViewDataCheckColumn Caption="RECHAZO" FieldName="CRITERIO_3" VisibleIndex="2" Width="5%">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </dx:GridViewDataCheckColumn>
                </Columns>
            </dx:GridViewBandColumn>
            <dx:GridViewCommandColumn VisibleIndex="0" Width="10%" ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True">
            </dx:GridViewCommandColumn>
            <dx:GridViewBandColumn Caption="MENSAJERIA - DEFINICIÓN DE DESTINATARIOS DE AVISOS" VisibleIndex="1">
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="ID_QA_MSG" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ID_ACC_PLT" ShowInCustomizationForm="True" Visible="False" VisibleIndex="0">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="NOMBRE" FieldName="NOMBRE_MSG" ShowInCustomizationForm="True" VisibleIndex="2" Width="30%">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="CARGO" FieldName="CARGO_MSG" ShowInCustomizationForm="True" VisibleIndex="3" Width="25%">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="MAIL" FieldName="MAIL_MSG" ShowInCustomizationForm="True" VisibleIndex="4" Width="10%">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="FONO" FieldName="FONO_MSG" ShowInCustomizationForm="True" VisibleIndex="5" Width="10%">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:GridViewBandColumn>
        </Columns>
        
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
                                                                             <asp:SessionParameter DefaultValue="8" Name="ID_ACC_PLT" SessionField="ID_ACC_PLT" Type="Int32" />
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
                                                                 </div>

									                         </div>
                                                                <div class="row">
			                                                        <div class="col-ms-12">
                                                                      <br/>
                                                                        <div class="col-md-5">
                                                                                    <p> <span class="fa-stack fa-lg wizard-prev-step-btn" style="cursor:pointer">
                                                                                    <i class="fa fa-arrow-circle-left fa-2x" aria-hidden="true" style="color:#008080"></i>
                                                                                    </span><a class="wizard-prev-step-btn" style="cursor:pointer">Volver al Paso Anterior</a></p>
                                                                        </div>

                                                                        <div class="col-md-5" style="text-align:right">
                                                                                    <p><a  id="paso11"class="wizard-next-step-btn"  style="cursor:pointer">Guardar y continuar el siguiente paso</a><span class="fa-stack fa-lg wizard-next-step-btn" style="cursor:pointer">
                                                                                    <i class="fa fa-arrow-circle-right fa-2x" aria-hidden="true" style="color:#008080"></i>
                                                                                    </span> </p>
                                                                        </div>


                                                                    </div>
									                            </div>			
							                            </div>
                                
                                		                    </div>

                               	                 </div>  
                                             
                      
                                
						                            </div>
				
					 
		                      
            </div>

                      
    
         <script type="text/javascript" charset="utf-8">
                             jQuery(document).ready(function ($) {
                                              /*boton siguiente paso 3 al 4 */
                                              $('#validaObservacion').click(function (e) {
                                                  $('#countdown2').hide();
                                                  $('#countdown').show();
                                                  e.preventDefault();
                                                  var countdown = $("#countdown").countdown360({
                                                      radius: 60,
                                                      seconds: 10,
                                                      fontColor: '#FFFFFF',
                                                      fillStyle: "#17649A",
                                                      strokeStyle: "#008080",
                                                      autostart: false,
                                                      onComplete: function () {

                                                          $('#nextAuto').click();
                                                          $('#countdown').hide();
                                                          $('#countdown2').show();

                                                      }
                                                  });

                                                  countdown.start();

                                              });

                                              jQuery(document).ready(function ($) {
                                                  /*boton siguiente paso 3 al 4 texto*/
                                                  $('#validaObservacion2').click(function (e) {
                                                      $('#countdown2').hide();
                                                      $('#countdown').show();
                                                      e.preventDefault();
                                                      var countdown = $("#countdown").countdown360({
                                                          radius: 60,
                                                          seconds: 10,
                                                          fontColor: '#FFFFFF',
                                                          fillStyle: "#17649A",
                                                          strokeStyle: "#008080",
                                                          autostart: false,
                                                          onComplete: function () {

                                                              $('#nextAuto').click();
                                                              $('#countdown').hide();
                                                              $('#countdown2').show();

                                                          }
                                                      });

                                                      countdown.start();

                                                  });
                                              });
                                          });

		  </script>
    <script>
         $("#modalOpen").on("click", function (e) {
                e.preventDefault();
        });
    </script>
        <script>
              $(document).ready(function () {
                  //alert('aaaa');
                  //$("#modal").iziModal();
                   $('.modal').each(function () {
                    var src = $(this).find('iframe').attr('src');
                    $(this).on('click', function () {
                        $(this).find('iframe').attr('src', '');
                        $(this).find('iframe').attr('src', src);
                    });
                  });
                   $("#body_GuardarPaso_1").click(function () {
                       $.ajax({
                           type: "POST",
                           url: "RegistroCalidadIngreso.aspx/guardaPaso1",
                           data: '{}',
                           contentType: "application/json; charset=utf-8",
                           dataType: "json",
                           success: function (response) {
                           },
                           failure: function (response) {
                               console.log(response.d);
                           }
                       });
                   });
                   $("#OnMyButtonClick").click(function () {
                      
                       var txtgrupo = $('#body_txtNuevoGrupo').val();

                      
                       var actionData = "{'nombreGrupo':'" + txtgrupo + "'}";
                       
                       $.ajax({
                           type: "POST",
                           url: "RegistroCalidadIngreso.aspx/guardaGrupo",
                           data: actionData,
                           contentType: "application/json; charset=utf-8",
                           dataType: "json",
                           success: function (response) {
                               $('#modalGrupo').modal('hide');
                               //document.getElementById("body_grillaCheck").submit();

                           },
                           failure: function (response) {
                               console.log(response.d);
                           }
                       });





                   });


               
              });







 </script>
    <script src="jquery.countdown.js"     type="text/javascript" charset="utf-8"></script>
    <script src="jquery.countdown.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="jquery.countdown360.js"  type="text/javascript" charset="utf-8"></script>


    <script>
            $("#paso1btn").click(function () {
                document.getElementById("datosTop").style.display = "block";
            });

            $("#paso2btn").click(function () {
                document.getElementById("datosTop").style.display = "block";
            });
    </script>


   

</asp:Content>
