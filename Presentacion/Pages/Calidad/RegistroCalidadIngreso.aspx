<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="RegistroCalidadIngreso.aspx.vb" Inherits="Presentacion.Formulario_web16" %>
<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <link href="../../assets/stylesheets/DragAndDrop.css" rel="stylesheet" />
    <link href="../../CSS/animate.css" rel="stylesheet" />
    	<%--   </contenttemplate>
                                                                             </asp:UpdatePanel>--%>
	<script type="text/javascript">
        function onUploadControlFileUploadComplete(s, e) {
            if (e.isValid)
                document.getElementById("uploadedImage").src = "UploadImages/" + e.callbackData;
            setElementVisible("uploadedImage", e.isValid);
        }
        function onImageLoad() {
            var externalDropZone = document.getElementById("externalDropZone");
            var uploadedImage = document.getElementById("uploadedImage");
            uploadedImage.style.left = (externalDropZone.clientWidth - uploadedImage.width) / 2 + "px";
            uploadedImage.style.top = (externalDropZone.clientHeight - uploadedImage.height) / 2 + "px";
            setElementVisible("dragZone", false);
        }
        function setElementVisible(elementId, visible) {
            document.getElementById(elementId).className = visible ? "" : "hidden";
        }
	</script>
	<%--   </contenttemplate>
                                                                             </asp:UpdatePanel>--%>

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


    </style>

    <style>
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
                        <div id="datosTop" class="panel-heading-controls"  style="display:none">>
							 <span class="panel-heading-text">
                            <%--   </contenttemplate>
                                                                             </asp:UpdatePanel>--%>
                                <%--<button class="btn btn-xs btn-info disabled"> 
                                <i class="fa fa-edit" aria-hidden="true" style="color:#f1f1f1"></i>
                                &nbsp;CAMBIAR</button>--%>&nbsp;&nbsp;
                                <i class="fa fa-calendar" aria-hidden="true" style="color:#008080"></i>
                                Fecha:&nbsp;<b>01/01/01</b>
                                <%--<button class="btn btn-xs btn-info disabled">
                                <i class="fa fa-edit" aria-hidden="true" style="color:#f1f1f1"></i>&nbsp;CAMBIAR</button>  --%>    
                                &nbsp;&nbsp; 
                                <%--<button class="btn btn-xs btn-danger disabled"><i class="fa fa-medkit fa-1x" aria-hidden="true" style="color:#f1f1f1"></i>&nbsp;AYUDA</button> <button id="modalOpen" class="btn btn-xs btn-info tooltip-info" data-toggle="modal" data-placement="left" title="" data-original-title="Aprende a usar el Importador de Asistencia" data-target="#uidemo-modals-alerts-success"> <i class="fa fa-medkit fa-1x" aria-hidden="true" style="color:#f1f1f1"></i>&nbsp;&nbsp ¿NECESITAS AYUDA?</button> --%>
							    
                             </span> 
						</div>
			        </div>

					<div class="panel-body">
                        
                                <script>
                                          init.push(function () {
                                              $('.ui-wizard-example').pixelWizard({
                                                  onChange: function () {
                                                      console.log('Current step: ' + this.currentStep());
                                                  },
                                                  onFinish: function () {

                                                      this.unfreeze();
                                                      console.log('Wizard is freezed');
                                                      console.log('Finished!');
                                                  }
                                              });

                                              $('.wizard-next-step-btn').click(function () {
                                                  $(this).parents('.ui-wizard-example').pixelWizard('nextStep');
                                              });

                                              $('.wizard-prev-step-btn').click(function () {
                                                  $(this).parents('.ui-wizard-example').pixelWizard('prevStep');
                                              });

                                              $('.wizard-go-to-step-btn').click(function () {
                                                  $(this).parents('.ui-wizard-example').pixelWizard('setCurrentStep', 2);
                                              });

                                              $('#ui-wizard-modal').on('show.bs.modal', function (e) {
                                                  var $modal = $(this),
                                                      $wizard = $modal.find('.ui-wizard-example'),
                                                      timer = null,
                                                      callback = function () {
                                                          if (timer) clearTimeout(timer);
                                                          if ($modal.hasClass('in')) {
                                                              $wizard.pixelWizard('resizeSteps');
                                                          } else {
                                                              timer = setTimeout(callback, 10);
                                                          }
                                                      };
                                                  callback();
                                              });
                                          });
				                            </script>
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
							                                                  <%-- <asp:ScriptManager ID="ScriptManager" runat="server" />
                                                                               <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                                 <contenttemplate>--%>
                                                                        
                                                                                <dx:BootstrapPopupControl ID="BootstrapPopupControl1" runat="server">




                                                                                </dx:BootstrapPopupControl>
                                                                                     <div id="uidemo-modals-alerts-success" class="modal modal-alert modal-info fade modal">
					                                                                            <div class="modal-dialog" style="width:500px;max-height:350px">
						                                                                            <div class="modal-content">
							                                                                            <div class="modal-header">
								                                                                            <i class="fa fa fa-thumb-tack"></i>
							                                                                            </div>
							                                                                            <div class="modal-title" style="margin-top:10px"><h4><strong>NUEVA ACTIVIDAD</strong></h4></div>
							                                                                            <div class="modal-body">
                                                                                                        <div class="row padding-sm">
                                                                                                             <div class="col-sm-12">
				                                                                                                                     <div class="form-group">
						                                                                                                                <label for="inputEmail2" class="col-sm-2 control-label">Proyecto </label>
						                                                                                                                <div class="col-sm-4">
							                                                                                                               <dx:ASPxLabel ID="lblProyecto" runat="server" Text=""></dx:ASPxLabel>
						                                                                                                                </div>
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
                                                                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit <a href="#"> <strong>Lorem ipsum.</strong></a></p>
                                                                                                            <dx:BootstrapButton ID="btnNuevaActividad" runat="server" data-dismiss="modal" AutoPostBack="false" Text="Guardar Actividad" class="btn btn-info"></dx:BootstrapButton>
                                                                                                           

							                                                                            </div>
						                                                                            </div> <!-- / .modal-content -->
					                                                                            </div> <!-- / .modal-dialog -->
				                                                                            </div> <!-- / .modal -->
                                                                                                   <h3>Configuración Inicial -  Nuevos procesos de calidad </h3>
                                                                                                    En esta sección se crearán los nuevos procesos de control de calidad (versión cero)
                                                                                                    <hr />
                                                                                                <div class="row"> 
                                                                                                    <div class="col-md-4">
                                                                                                            <div class="panel panel-transparent">
                                                                                                                    <div class="panel-heading">
                                                                                                                        <span class="panel-title"><i class="panel-title-icon fa fa-building-o"></i> <b>1.1)</b> Selecciona tu Proyecto</span>
                                                                                                                     
                                                                                                                        <div class="panel-heading-controls">
                                                                                                                            <div class="panel-heading-icon"><%--<i class="fa fa-inbox"></i>--%></div>
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                    <div class="panel-body">
                                                                                                                         
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
                                                                                                                        <p class="help-block">selecciona tu proyecto al cual le asignaras un proceso.</p>
                                                                                                               
                                                                                                            </div>
                                                                                                      </div>
                                                                                                  </div>
                                                                                                    <div class="col-md-4">
                                                                                                         <div class="panel widget-tasks  panel-transparent ">
                                                                                                                    <div class="panel-heading">
                                                                                                                        <span class="panel-title"><i class="panel-title-icon fa fa-gears"></i>  <b>1.2)</b> Información del proceso</span>
                                                                                                                        <div class="panel-heading-controls">
                                                                                                                            <div class="panel-heading-icon"><%--<i class="fa fa-inbox"></i>--%></div>
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                    <div class="panel-body">
                                                                                                                         <div class="row">
		                                                            	                                                                   <div class="col-sm-12">
				                                                                                                                                <div class="form-group">
						                                                                                                                            <div class="col-sm-12">
							                                                                                                                            <dx:BootstrapTextBox  Enabled ="false"  RequiredField-IsRequired="true" ID="codigotexto" Caption="Codigo" runat="server" NullText="Codigo de plantilla"></dx:BootstrapTextBox>
                                                                                                                                                    </div>
					                                                                                                                            </div> <!-- / .form-group -->
					                                                                                                                            <div class="form-group">
						                                                                                                                            <div class="col-sm-12">
							                                                                                                                             <dx:BootstrapTextBox  Enabled ="true"  RequiredField-IsRequired="true" ID="txtnombre" Caption="Nombre Plantilla Proceso" runat="server" NullText="Nombre proceso"></dx:BootstrapTextBox>
						                                                                                                                            </div>
                                                                                                                                                </div> <!-- / .form-group -->
					                                                                                                                           <div class="form-group">
						                                                                                                                            <div class="col-sm-12">
                                                                                                                                                        <dx:BootstrapComboBox Caption="Actividad" NullText="selecciona una actividad" ID="dllActividad" runat="server" DataSourceID="sqlActividad" TextField="NOMBRE_ACT" ValueField="ID_QA_ACT" AutoPostBack="True"></dx:BootstrapComboBox>
                                                                                                                                                        <asp:SqlDataSource ID="sqlActividad" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SELECT [NOMBRE_ACT], [ID_QA_ACT], [ID_ETA] FROM [QA_ACTIVIDAD] WHERE ([ID_OBR] = @ID_OBR)">
                                                                                                                                                            <SelectParameters>
                                                                                                                                                                <asp:SessionParameter DefaultValue="69" Name="ID_OBR" SessionField="idObra" Type="Int64" />
                                                                                                                                                            </SelectParameters>
                                                                                                                                                        </asp:SqlDataSource>
                                                                                                                                                        <br />
<%--                                                                                                                                                          <button class="btn btn-outline btn-labeled btn-primary"><span class="btn-label icon fa fa-camera-retro"></span>Default</button>&nbsp;&nbsp;--%>                                                                                                                                                      <%--  <button id="modalOpen"  data-toggle="modal" data-target="#uidemo-modals-alerts-success" class="col-md-3 col-md-offset-9 btn btn-rounded btn-sm btn-labeled btn-success"><span class="btn-label icon fa fa-plus-circle"></span>Nueva actividad</button>&nbsp;&nbsp;--%>                                                                                                                                                  <%--      <button id="modalOpen1" class=" col-md-offset-10 btn btn-rounded btn-sm btn-labeled btn-light-green" data-toggle="modal" data-placement="left" title="" data-original-title="Ingrese nueva actividad" data-target="#uidemo-modals-alerts-success"> <span class="btn-label icon fa fa-plus-circle"></span>Actividad</button>
                                                                                                                                                 --%>       &nbsp;&nbsp;&nbsp;&nbsp;<button id="modalOpen"  class="col-md-offset-8 btn btn-rounded btn-labeled btn-primary"><span class="btn-label icon fa fa-plus-circle"  data-toggle="modal" data-placement="left" title="" data-original-title="Ingrese nueva actividad" data-target="#uidemo-modals-alerts-success"></span>Crear Actividad</button>


                                                                                                                                                      <%--<button id="modalOpen "class="col-md-3 col-md-offset-9 btn btn-rounded btn-sm btn-labeled btn-success"   data-toggle="modal" data-placement="left" title="" data-original-title="Ingrese nueva actividad" data-target="#uidemo-modals-alerts-success"> <i class="fa fa-plus-circle" aria-hidden="true" style="color:#f1f1f1"></i>nueva actividad</button>--%>
                                                                                                                                                    </div>
                                                                                                                                                </div> <!-- / .form-group -->
                                                                                                                                                  <div class="form-group">
						                                                                                                                            <div class="col-sm-12">
                                                                                                                                                       
                                                                                                                                                        <dx:BootstrapTextBox Enabled ="false"  RequiredField-IsRequired="true" ID="txtEtapa" Caption="Etapa" runat="server" NullText="etapa de una actividad"></dx:BootstrapTextBox>
                                                                                                                                                        
                                                                                                                                                        <p class="help-block">esta es la etapa para actividad seleccionada.</p>
						                                                                                                                            </div>
					                                                                                                                            </div> <!-- / .form-group -->
					                                                                                                                            <div class="form-group">
						                                                                                                                            <label for="asdasdas" class="col-sm-6 control-label">Observaciones generales</label>
						                                                                                                                            <div class="col-sm-12">
							                                                                                                                            <dx:BootstrapMemo ID="txtMemPbservaciones" runat="server" Rows="5"></dx:BootstrapMemo>
                                                                                                                                                        <p class="help-block">las observaciones que ingresas aparecen en el Pie de la plantilla de registro</p>
                                                                                                                                                    </div>
					                                                                                                                            </div> <!-- / .form-group -->
					                                                                                                                    </div> <!-- / .form-group -->
			                                                                                                              </div>
                                                                                                                    </div>
                                                                                                                </div> <!-- / .panel -->

                                                                                                           
				                                                                                   </div>
                                                                                                    <div class="col-md-4">
                                                                                                             <div class="panel panel-transparent ">
                                                                                                                    <div class="panel-heading">
                                                                                                                        <span class="panel-title"><i class="panel-title-icon fa fa-rss"></i> <b>1.3) </b> Alcance </span>
                                                                                                                        <div class="panel-heading-controls">
                                                                                                                            <span class="panel-heading-text text-default "><em>Corresponde a los recintos donde aplica este proceso de calidad </em></span>
                                                                                                                           
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                             <div class="panel-body">
                                                                                                                 <div class="row">
		                                                            	                                                      <div class="col-sm-12">
                                                                                                                                     <dx:BootstrapComboBox  Caption="Selecciona Categoria" ID="dllCategorias" runat="server" DataSourceID="sqlCategorias" AutoPostBack="True" TextField="NOMBRE_TUC" ValueField="ID_TUC"></dx:BootstrapComboBox>
                                                                                                                                                      <asp:SqlDataSource ID="sqlCategorias" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SELECT TU.ID_TUC,TU.NOMBRE_TUC
FROM UCO_TIPOS TU

WHERE TU.ID_OBR = @ID_OBR">
                                                                                                                                                          <SelectParameters>
                                                                                                                                                              <asp:ControlParameter ControlID="ddlProyectos" Name="ID_OBR" PropertyName="Value" />
                                                                                                                                                          </SelectParameters>
                                                                                                                                     </asp:SqlDataSource>
                                                                                                                                                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SELECT [ID_OBR], [NomAbr_Obr] FROM [OBRAS] WHERE ([Vigente_Obr] = @Vigente_Obr)">
                                                                                                                                                      <SelectParameters>
                                                                                                                                                          <asp:Parameter DefaultValue="1" Name="Vigente_Obr" Type="String" />
                                                                                                                                                      </SelectParameters>
                                                                                                                                                  </asp:SqlDataSource>
                                                                                                                              
                                                                                                                       
                                                                                                                                  <br />
                                                                                                                                   
                                                                                                                      
                                                                                                                                  <dx:BootstrapComboBox ID="dllTipologia" Caption="Selecciona Tipología" runat="server" DataSourceID="sqlTipologias" AutoPostBack="True" TextField="NOMBRE_TIP" ValueField="ID_TIP"></dx:BootstrapComboBox>
                                                                                                                     
                                                                                                                                                      <asp:SqlDataSource ID="sqlTipologias" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SELECT tp.ID_TIP,tp.NOMBRE_TIP

FROM CM_MAESTRO_TIPOLOGIAS TP

WHERE TP.ID_TUC = @ID_TUC">
                                                                                                                                                          <SelectParameters>
                                                                                                                                                              <asp:ControlParameter ControlID="dllCategorias" Name="ID_TUC" PropertyName="Value" />
                                                                                                                                                          </SelectParameters>
                                                                                                                                     </asp:SqlDataSource>
                                                                                                                     
                                                                                                                                                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SELECT [ID_OBR], [NomAbr_Obr] FROM [OBRAS] WHERE ([Vigente_Obr] = @Vigente_Obr)">
                                                                                                                                                      <SelectParameters>
                                                                                                                                                          <asp:Parameter DefaultValue="1" Name="Vigente_Obr" Type="String" />
                                                                                                                                                      </SelectParameters>
                                                                                                                                                  </asp:SqlDataSource>
                                                                                                                                    </div>
                                                                                                                 </div> <!-- / .form-group -->
			                                                                                                        <p class="help-block">ejemplo: Departamento (Categoría) Tipo A (Tipologia).</p>      
                                                                                                            </div>

		                                                                                                        </div>
					                                                                                 </div>
			                                                                                    </div>
                                                                                                    <div class="col-md-12" style="text-align:right">
                                                                                                                <p><a class="wizard-next-step-btn" style="cursor:pointer">Guardar y continuar el siguiente paso</a><span class="fa-stack fa-lg wizard-next-step-btn" style="cursor:pointer">
                                                                                                                <i class="fa fa-arrow-circle-right fa-2x" aria-hidden="true" style="color:#008080"></i>
                                                                                                                </span> </p>
                                                                                         </div>
						                                                     <%--   </contenttemplate>
                                                                             </asp:UpdatePanel>--%>
                                                                </div>
                                                    
								                                        <div class="wizard-pane" id="wizard-example-step2" style="display: none;">
                                                                 <h3>Lorem ipsum dolor sit amet</h3>
                                                                       Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vehicula, ex vestibulum semper pellentesque, sem diam pellentesque sem, 
                                                                        <hr />
                                                                <div class="row">
			                                                        <div class="col-ms-12">
                                                                        <dx:ASPxGridView ID="gridListaChekeo" runat="server" Theme="MaterialCompact" AutoGenerateColumns="False" DataSourceID="sqlListaCheck" Width="100%" KeyFieldName="ID_PLT_CHK" EnableTheming="True">

                                                                            <Settings ShowFilterRow="True" VerticalScrollableHeight="500" VerticalScrollBarMode="Visible" VerticalScrollBarStyle="Virtual"></Settings>
                                                                            <SettingsPager Mode="ShowAllRecords" Position="TopAndBottom" EnableAdaptivity="True"></SettingsPager>

                                                                            <SettingsEditing Mode="PopupEditForm">
                                                                            </SettingsEditing>

                                                                            <Settings ShowFilterRow="True" VerticalScrollBarStyle="Virtual" VerticalScrollableHeight="300" VerticalScrollBarMode="Visible"></Settings>

                                                                            <SettingsBehavior AllowFocusedRow="True" AllowSelectByRowClick="True" AllowSelectSingleRowOnly="True" AllowFixedGroups="True"></SettingsBehavior>


                                                                           <SettingsPopup>
                                                                                    <EditForm Modal="True" PopupAnimationType="Slide" ShowMaximizeButton="True" Width="100%">
                                                                                        <SettingsAdaptivity MinHeight="30%" MinWidth="30%" Mode="Always" VerticalAlign="WindowCenter" />
                                                                                    </EditForm>
                                                                                    <CustomizationWindow ShowShadow="True" AllowResize="False" CloseOnEscape="True" ResizingMode="Postponed" ShowFooter="True" />
                                                                                    <CustomizationDialog>
                                                                                        <SettingsAdaptivity MinWidth="400px" />
                                                                                    </CustomizationDialog>
                                                                                </SettingsPopup>

                                                                            <EditFormLayoutProperties ColCount="2">
                                                                                <Items>
                                                                                    <dx:GridViewColumnLayoutItem ColumnName="ID_GRP_CHK" Visible="False"></dx:GridViewColumnLayoutItem>
                                                                                    <dx:GridViewColumnLayoutItem ColumnName="SOLICITA_ENT" Caption="Requiere dato de entrada" ColSpan="2">
                                                                                        <CaptionSettings Location="Left" HorizontalAlign="Center" VerticalAlign="Middle"></CaptionSettings>
                                                                                    </dx:GridViewColumnLayoutItem>
                                                                                    <dx:GridViewColumnLayoutItem ColumnName="TIPO_DATO_ENT" Caption="Tipo de dato" ColSpan="2">
                                                                                        <CaptionSettings Location="Top"></CaptionSettings>
                                                                                    </dx:GridViewColumnLayoutItem>
                                                                                    <dx:GridViewColumnLayoutItem ColumnName="CRITERIO" ColSpan="2" Caption="Criterio de control"></dx:GridViewColumnLayoutItem>
                                                                                    <dx:GridViewColumnLayoutItem ColumnName="NOMBRE_CHK" ColSpan="2" Caption="Especificaci&#243;n">
                                                                                    </dx:GridViewColumnLayoutItem>

                                                                                    <dx:GridViewColumnLayoutItem ColumnName="ESPECIFICACION_CHK" ColSpan="2" Caption="Observaci&#243;n">
                                                                                    </dx:GridViewColumnLayoutItem>
                                                                                    <dx:EditModeCommandLayoutItem ColSpan="2" HorizontalAlign="Right">

                                                                                    </dx:EditModeCommandLayoutItem>
                                                                                </Items>
                                                                                <SettingsItemCaptions Location="Top" HorizontalAlign="Left" VerticalAlign="Middle"></SettingsItemCaptions>
                                                                            </EditFormLayoutProperties>


                                                                            <Columns>
                                                                                <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0" ShowDeleteButton="True" ShowNewButtonInHeader="True"></dx:GridViewCommandColumn>
                                                                                <dx:GridViewDataTextColumn FieldName="ID_PLT_CHK" ReadOnly="True" VisibleIndex="1" Visible="False">
                                                                                    <EditFormSettings Visible="False"></EditFormSettings>
                                                                                </dx:GridViewDataTextColumn>
                                                                                <dx:GridViewDataTextColumn FieldName="ID_ACC_PLT" VisibleIndex="2" Visible="False"></dx:GridViewDataTextColumn>

                                                                                <dx:GridViewDataTextColumn FieldName="ID_GRP_CHK" VisibleIndex="3" GroupIndex="0" SortIndex="0" SortOrder="Ascending">
                                                                                    <Settings GroupInterval="DisplayText" SortMode="DisplayText"></Settings>
                                                                                </dx:GridViewDataTextColumn>
                                                                                <dx:GridViewDataTextColumn FieldName="CRITERIO_CONTROL" VisibleIndex="8" Caption="CRITERIO" CellRowSpan="3">
                                                                                </dx:GridViewDataTextColumn>
                                                                                <dx:GridViewDataMemoColumn Caption="OBSERVACION" FieldName="ESPECIFICACION_CHK" VisibleIndex="5">
                                                                                    <PropertiesMemoEdit DisplayFormatInEditMode="True" Height="200px" Width="400px">
                                                                                    </PropertiesMemoEdit>
                                                                                </dx:GridViewDataMemoColumn>
                                                                                <dx:GridViewDataCheckColumn Caption="SOLICITA DATO DE ENTRADA" FieldName="SOLICITA_ENT" VisibleIndex="6">
                                                                                </dx:GridViewDataCheckColumn>
                                                                                <dx:GridViewDataMemoColumn FieldName="NOMBRE_CHK" Caption="ESPECIFICACION" VisibleIndex="4">
                                                                                    <PropertiesMemoEdit Width="400px" Height="200px"></PropertiesMemoEdit>
                                                                                </dx:GridViewDataMemoColumn>
                                                                                <dx:GridViewDataComboBoxColumn FieldName="TIPO_DATO_ENT" Caption="TIPO DE DATO" VisibleIndex="7">
                                                                                    <PropertiesComboBox>
                                                                                        <Items>
                                                                                            <dx:ListEditItem Text="NUMERICO" Value="NUMERICO"></dx:ListEditItem>
                                                                                            <dx:ListEditItem Text="PROCENTAJE (%)" Value="PROCENTAJE (%)"></dx:ListEditItem>
                                                                                        </Items>
                                                                                    </PropertiesComboBox>
                                                                                </dx:GridViewDataComboBoxColumn>
                                                                                <dx:GridViewDataTextColumn VisibleIndex="9"></dx:GridViewDataTextColumn>
                                                                            </Columns>
                                                                            <Styles>
                                                                                <FixedColumn HorizontalAlign="Center" VerticalAlign="Middle"></FixedColumn>
                                                                            </Styles>
                                                                        </dx:ASPxGridView>
                                                                        <asp:SqlDataSource ID="sqlListaCheck" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SELECT * FROM [QA_ACC_PLT_CHECKLIST]" DeleteCommand="DELETE FROM [QA_ACC_PLT_CHECKLIST] WHERE [ID_PLT_CHK] = @ID_PLT_CHK" InsertCommand="INSERT INTO [QA_ACC_PLT_CHECKLIST] ([ID_ACC_PLT], [ID_GRP_CHK], [NOMBRE_CHK], [SOLICITA_ENT], [TIPO_DATO_ENT], [CRITERIO_CONTROL], [ESPECIFICACION_CHK]) VALUES (@ID_ACC_PLT, @ID_GRP_CHK, @NOMBRE_CHK, @SOLICITA_ENT, @TIPO_DATO_ENT, @CRITERIO_CONTROL, @ESPECIFICACION_CHK)" UpdateCommand="UPDATE [QA_ACC_PLT_CHECKLIST] SET [ID_ACC_PLT] = @ID_ACC_PLT, [ID_GRP_CHK] = @ID_GRP_CHK, [NOMBRE_CHK] = @NOMBRE_CHK, [SOLICITA_ENT] = @SOLICITA_ENT, [TIPO_DATO_ENT] = @TIPO_DATO_ENT, [CRITERIO_CONTROL] = @CRITERIO_CONTROL, [ESPECIFICACION_CHK] = @ESPECIFICACION_CHK WHERE [ID_PLT_CHK] = @ID_PLT_CHK">
                                                                            <DeleteParameters>
                                                                                <asp:Parameter Name="ID_PLT_CHK" Type="Int32"></asp:Parameter>
                                                                            </DeleteParameters>
                                                                            <InsertParameters>
                                                                                <asp:Parameter Name="ID_ACC_PLT" Type="Int32"></asp:Parameter>
                                                                                <asp:Parameter Name="ID_GRP_CHK" Type="Int32"></asp:Parameter>
                                                                                <asp:Parameter Name="NOMBRE_CHK" Type="String"></asp:Parameter>
                                                                                <asp:Parameter Name="SOLICITA_ENT" Type="Int16"></asp:Parameter>
                                                                                <asp:Parameter Name="TIPO_DATO_ENT" Type="Int16"></asp:Parameter>
                                                                                <asp:Parameter Name="CRITERIO_CONTROL" Type="String"></asp:Parameter>
                                                                                <asp:Parameter Name="ESPECIFICACION_CHK" Type="String"></asp:Parameter>
                                                                            </InsertParameters>
                                                                            <UpdateParameters>
                                                                                <asp:Parameter Name="ID_ACC_PLT" Type="Int32"></asp:Parameter>
                                                                                <asp:Parameter Name="ID_GRP_CHK" Type="Int32"></asp:Parameter>
                                                                                <asp:Parameter Name="NOMBRE_CHK" Type="String"></asp:Parameter>
                                                                                <asp:Parameter Name="SOLICITA_ENT" Type="Int16"></asp:Parameter>
                                                                                <asp:Parameter Name="TIPO_DATO_ENT" Type="Int16"></asp:Parameter>
                                                                                <asp:Parameter Name="CRITERIO_CONTROL" Type="String"></asp:Parameter>
                                                                                <asp:Parameter Name="ESPECIFICACION_CHK" Type="String"></asp:Parameter>
                                                                                <asp:Parameter Name="ID_PLT_CHK" Type="Int32"></asp:Parameter>
                                                                            </UpdateParameters>

                                                                        </asp:SqlDataSource>                    
                                                                      <br />

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
								
								                                        <div class="wizard-pane" id="wizard-example-step3" style="display: none;">
									                             <h3>Lorem ipsum dolor sit amet</h3>
                                                                       Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vehicula, ex vestibulum semper pellentesque, sem diam pellentesque sem, 
                                                                        <hr />
                                                                <div class="row">
			                                                        <div class="col-ms-12">
                                                                    
                                                                      <br />

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
                $('.modal').each(function () {
                    var src = $(this).find('iframe').attr('src');

                    $(this).on('click', function () {

                        $(this).find('iframe').attr('src', '');
                        $(this).find('iframe').attr('src', src);

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
