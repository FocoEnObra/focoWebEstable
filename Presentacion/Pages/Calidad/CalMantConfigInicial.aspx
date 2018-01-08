<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="CalMantConfigInicial.aspx.vb" Inherits="Presentacion.Formulario_web14" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="../../../Scripts/jquery.qrcode.js"></script>
    <script src="../../../Scripts/qrcode.js"></script>
    <script>
        //jQuery('#qrcode').qrcode("this plugin is great");
      
        jQuery('#qrcodeCanvas').qrcode({
            text: "http://jetienne.com"
        });	
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

       
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
       <div class="row">
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
						<span class="panel-title" style="color:#17649A"><b>CONFIGURACIÒN INICIAL - CALIDAD DE OBRA</b></span>
                        <div id="datosTop" class="panel-heading-controls" style="display:none">
							 <span class="panel-heading-text">
                                <span><i class="fa fa-gear fa-spin" aria-hidden="true" style="color:#008080"></i></span>
                                Proyecto:<b>&nbsp;Nombre del proyecto</b>
                                &nbsp;
                                <%--<button class="btn btn-xs btn-info disabled"> 
                                <i class="fa fa-edit" aria-hidden="true" style="color:#f1f1f1"></i>
                                &nbsp;CAMBIAR</button>--%>&nbsp;&nbsp;
                                <i class="fa fa-calendar" aria-hidden="true" style="color:#008080"></i>
                                Período:&nbsp;<b>01/01/01</b>&nbsp;al&nbsp;<b>01/01/01</b>&nbsp;&nbsp;
                                <%--<button class="btn btn-xs btn-info disabled">
                                <i class="fa fa-edit" aria-hidden="true" style="color:#f1f1f1"></i>&nbsp;CAMBIAR</button>  --%>    
                                &nbsp;&nbsp; 
                                <%--<button class="btn btn-xs btn-danger disabled"><i class="fa fa-medkit fa-1x" aria-hidden="true" style="color:#f1f1f1"></i>&nbsp;AYUDA</button>--%>
							    <button id="modalOpen" class="btn btn-xs btn-info tooltip-info" data-toggle="modal" data-placement="left" title="" data-original-title="Aprende a usar el Importador de Asistencia" data-target="#uidemo-modals-alerts-success"> <i class="fa fa-medkit fa-1x" aria-hidden="true" style="color:#f1f1f1"></i>&nbsp;&nbsp ¿NECESITAS AYUDA?</button>
                             </span> 
						</div>
			        </div>

					<div class="panel-body">
                        <!--                    -->
                        <!--       WIZARD        -->
                        <!--                    -->
						<div class="wizard ui-wizard-example">
                            <!--                    -->
                            <!--       PASOS        -->
                            <!--                    -->
							<div class="wizard-wrapper">
								<ul class="wizard-steps">
                                    <li data-target="#wizard-example-step1">
										<span class="wizard-step-number">1</span>
										<span class="wizard-step-caption">
											Información de la Plantilla 
											<span class="wizard-step-description"></span>
										</span>
									</li>
                                    <li data-target="#wizard-example-step2"> 
										<span class="wizard-step-number">2</span>
										<span class="wizard-step-caption">
											Lista de Chequeo
											<span class="wizard-step-description"></span>
										</span>
									</li>
                                    <li data-target="#wizard-example-step3"> 
										<span class="wizard-step-number">3</span>
										<span class="wizard-step-caption">
											Participantes
                                            <span class="wizard-step-description"></span>
										</span>
									</li>
                                   
								</ul> 
							</div> 
                                <!--                    -->
                                <!--     CONTENIDO      -->
                                <!--                    -->
                                <div class="wizard-content panel">                                       
                                        <!--                    -->
                                        <!--     PASO 1         -->
                                        <!--                    -->
							    	<div class="wizard-pane" id="wizard-example-step1">
                                        <div class="row">                                      
                                        
                                                <div class="col-md-7">
                                            	  <script>
                                                      init.push(function () {
                                                          var options = {
                                                              todayBtn: "linked",
                                                              orientation: $('body').hasClass('right-to-left') ? "auto right" : 'auto auto'
                                                          }
                                                          $('#bs-datepicker-example').datepicker(options);

                                                          $('#bs-datepicker-component').datepicker();

                                                          var options2 = {
                                                              orientation: $('body').hasClass('right-to-left') ? "auto right" : 'auto auto'
                                                          }
                                                          $('#bs-datepicker-range').datepicker(options2);

                                                          $('#bs-datepicker-inline').datepicker();
                                                      });
				                                  </script>
                                                       
                                                                <div class="panel form-horizontal">
					                                                 <div class="panel-body bg-panel">
						                                                 <div class="row">
                                							                   <div class="col-md-12">
                                                                                   <div class="col-md-12">
                                                                                     <p><b>1.1)</b> Selecciona Proyecto</p>
								                                                    <div class="form-group no-margin-hr">
                                                                                        <dx:BootstrapComboBox ID="ddlProyectos" runat="server" DataSourceID="sqlObra" AutoPostBack="True" TextField="NomAbr_Obr" ValueField="ID_OBR"></dx:BootstrapComboBox>

                                                                                    
                                                      <asp:SqlDataSource ID="sqlObra" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SELECT [ID_OBR], [NomAbr_Obr] FROM [OBRAS] WHERE ([Vigente_Obr] = @Vigente_Obr)">
                                                          <SelectParameters>
                                                              <asp:Parameter DefaultValue="1" Name="Vigente_Obr" Type="String" />
                                                          </SelectParameters>
                                                      </asp:SqlDataSource>
                                        &nbsp;</div>
								                                                    </div>
						                                                        </div>
						                                                 </div>
						                                             </div>
                                                                </div>
                                                        
						                     
				                                
				                                <div class="panel">
					                                <div class="panel-body bg-panel">  
                                                          <p><b>1.3)</b> información de la actividad</p> 
						                            <div class="row">
		
		                                                            	<div class="col-sm-12">
				
                                                                             <div class="form-group">
						                                                        <label for="inputEmail2" class="col-sm-2 control-label">Codigo </label>
						                                                        <div class="col-sm-10">
							                                                        <input type="text" runat="server" class="form-control" id="Text1" placeholder="Nombre Actividad">
						                                                        </div>
					                                                        </div> <!-- / .form-group -->
					                                                        <div class="form-group">
						                                                        <label for="inputEmail2" class="col-sm-2 control-label">Nombre</label>
						                                                        <div class="col-sm-10">
							                                                        <input type="text" runat="server" class="form-control" id="txtActividad" placeholder="Nombre Actividad">
						                                                        </div>
					                                                        </div> <!-- / .form-group -->
					                                                      <%--  <div class="form-group">
						                                                        <label for="inputPassword" class="col-sm-2 control-label">Obra</label>
						                                                        <div class="col-sm-10">
                                                                                    <dx:BootstrapComboBox ID="ddlObra" runat="server" >
                                                                                        <Items>
                                                                                            <dx:BootstrapListEditItem Text="Obra 1 " Value="0"></dx:BootstrapListEditItem>
                                                                                            <dx:BootstrapListEditItem Text="obra 2" Value="1"></dx:BootstrapListEditItem>
                                                                                        </Items>
                                                                                    </dx:BootstrapComboBox>
                                                                                    <p class="help-block">seleccione la obra que desea asignar a la actividad .</p>
						                                                        </div>
					                                                        </div> <!-- / .form-group -->--%>
                                                                              <div class="form-group">
						                                                        <label for="inputPassword" class="col-sm-2 control-label">Etapa</label>
						                                                        <div class="col-sm-10">
                                                                                    <dx:BootstrapComboBox ID="dllEtapa" runat="server" >
                                                                                        <Items>
                                                                                            <dx:BootstrapListEditItem Text="etapa 1 " Value="0"></dx:BootstrapListEditItem>
                                                                                            <dx:BootstrapListEditItem Text="etapa 2" Value="1"></dx:BootstrapListEditItem>
                                                                                        </Items>
                                                                                    </dx:BootstrapComboBox>
                                                                                    <p class="help-block">seleccione una etapa en la actividad.</p>
						                                                        </div>
					                                                        </div> <!-- / .form-group -->
					                                                        <div class="form-group">
						                                                        <label for="asdasdas" class="col-sm-2 control-label">Descrip.</label>
						                                                        <div class="col-sm-10">
							                                                        <textarea class="form-control"></textarea>
							                                                        <p class="help-block">breve descripcion de la actividad que esta ingresando.</p>
						                                                        </div>
					                                                        </div> <!-- / .form-group -->
					                                                        <div class="form-group">
						                                                        <label class="col-sm-2 control-label">Avisos</label>
						                                                        <div class="col-sm-10">
							                                                        <div class="radio">
								                                                        <label>
									                                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
									                                                        deseo que me llegen notificaciones por actividad
								                                                        </label>
							                                                        </div> <!-- / .radio -->
							                                                        <div class="radio">
								                                                        <label>
									                                                        <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
									                                                       solo notificaciones de checklist 
								                                                        </label>
							                                                        </div> <!-- / .radio -->
							                                                        <div class="radio">
								                                                        <label>
									                                                        <input type="radio" name="optionsRadios" id="optionsRadios2-2" value="option2">
									                                                       notificaciones por evento ejecutado
								                                                        </label>
							                                                        </div> <!-- / .radio -->
						                                                        </div> <!-- / .col-sm-10 -->
					                                                        </div> <!-- / .form-group -->
					                                                      
					                                </div> <!-- / .form-group -->
				
			</div>
		                                                </div>



					                                </div>
				                                </div>
                                            <div class="col-md-5">
                                                <dx:ASPxGridView ID="xgridRecintos" runat="server" Theme="Moderno" AutoGenerateColumns="False" DataSourceID="sqlUcos" KeyFieldName="ID_UCO" Width="100%">
                                                    <SettingsDataSecurity AllowEdit="False" AllowInsert="False" AllowDelete="False"></SettingsDataSecurity>
                                                    <SettingsSearchPanel Visible="True"></SettingsSearchPanel>
                                                    <Columns>
                                                        <dx:GridViewCommandColumn SelectAllCheckboxMode="Page" ShowSelectCheckbox="True" VisibleIndex="0">
                                                        </dx:GridViewCommandColumn>
                                                        <dx:GridViewDataTextColumn Caption="ID" FieldName="ID_UCO" ReadOnly="True" VisibleIndex="1" Width="20px">
                                                            <EditFormSettings Visible="False" />
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="NIVEL_UCO" Visible="False" VisibleIndex="3">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn Caption="RECINTOS ASOCIADOS" FieldName="NOMBRE_UCO" VisibleIndex="2" Width="80%">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="ID_TIP" Visible="False" VisibleIndex="4">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="ID_OBR" Visible="False" VisibleIndex="5">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="ID_TUC" Visible="False" VisibleIndex="6">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="ESTADO_UCO" Visible="False" VisibleIndex="7">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="ORDEN_UCO" Visible="False" VisibleIndex="8">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="ORDEN_CONSTRU_UCO" Visible="False" VisibleIndex="9">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="NOMENCL_CONS" Visible="False" VisibleIndex="10">
                                                        </dx:GridViewDataTextColumn>
                                                    </Columns>
                                                </dx:ASPxGridView>


                                            
                                                <asp:SqlDataSource ID="sqlUcos" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SELECT * FROM [UCO_MAESTRO] WHERE ([ID_OBR] = @ID_OBR)">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="ddlProyectos" Name="ID_OBR" PropertyName="Value" Type="Int64" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>


                                            
                                            </div>
                                        </div>
                            
                                        

                                        </div>
                                        <div class="col-md-12" style="margin-top:15px"><p class="pull-right">
                                    <span id="paso1btn" class="fa-stack fa-lg wizard-next-step-btn" style="cursor:pointer">
                                    <i class="fa fa-arrow-circle-right fa-2x" aria-hidden="true" style="color:#008080"></i>
                                    </span><a id="paso2btn" class="wizard-next-step-btn" style="cursor:pointer"> Estoy Listo. Continuar al Siguiente Paso.</a></p>
                                    </div>
                                    </div>  

                                        <!--                    -->
                                        <!--     PASO 2         -->
                                        <!--                    -->

                                <div class="wizard-pane" id="wizard-example-step2">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            grilla

                                        </div>
                                        <div class="col-xs-9">
                                           grilla 2
                                        </div>                            
                                    </div>
                               <div class="row" style="margin-top:15px">
                                 <div class="col-md-5" >
                                              <p> <span class="fa-stack fa-lg wizard-prev-step-btn" style="cursor:pointer">
<i class="fa fa-arrow-circle-left fa-2x" aria-hidden="true" style="color:#008080"></i>
</span><a class="wizard-prev-step-btn" style="cursor:pointer">Volver al Paso Anterior</a></p>
                                            </div>

                                            <div class="col-md-2">

                                            </div>

                                            <div class="col-md-5" style="text-align:right">
                                            <p><a class="wizard-next-step-btn" style="cursor:pointer">Guardar y Continuar</a><span class="fa-stack fa-lg wizard-next-step-btn" style="cursor:pointer">
<i class="fa fa-arrow-circle-right fa-2x" aria-hidden="true" style="color:#008080"></i>
</span> </p>
                                            </div>


                                          </div>                              
                                </div>

                                        <!--                    -->
                                        <!--     PASO 3         -->
                                        <!--                    -->
                                 <div class="wizard-pane" id="wizard-example-step3">
                                    <div class="row">

                                        <div class="col-xs-6">
                                            <div class="stat-panel">
					<div class="stat-cell valign-middle" style="background-color:#008c9e;color:#f1f1f1">
						<i class="fa fa-warning bg-icon"></i>
						<span class="text-xlg"><strong><i class="fa fa-warning"></i></strong></span><br>
						<span class="text-bg"><strong>Leyendas de Asistencia</strong></span><br>
						<span class="text-md">El archivo que importarás considera las siguientes leyendas de asistencia.</span>
                                               
				</div>
                                           
                                            </div>
                                            <div class="checkbox" style="margin: 5px;">
										<label>
											<input type="checkbox" value="" class="px">
											<span class="lbl">Considerar a todos los trabajadores presentes.</span>
										</label>
									</div>  
                                         </div>

                                        <div class="col-xs-4">
                                          otra grilla
                                        </div>
                                    </div>

                                      <div class="row" style="margin-top:15px">
                                 <div class="col-md-5" >
                                              <p> <span  id="validaPrev1" class="fa-stack fa-lg wizard-prev-step-btn" style="cursor:pointer">
<i class="fa fa-arrow-circle-left fa-2x" aria-hidden="true" style="color:#008080"></i>
</span><a id="validaPrev" class="wizard-prev-step-btn" style="cursor:pointer">Volver al Paso Anterior</a></p>
                                            </div>

                                            <div class="col-md-2">

                                            </div>

                                            <div class="col-md-5" style="text-align:right">
                                            <p><a id="validaObservacion" class="wizard-next-step-btn" style="cursor:pointer">Guardar y Continuar</a><span id="validaObservacion2" class="fa-stack fa-lg wizard-next-step-btn" style="cursor:pointer">
            <i class="fa fa-arrow-circle-right fa-2x" aria-hidden="true" style="color:#008080"></i>
                    </span> </p>
                                            </div>


                                          </div>
                                </div>
                                

                                      <div class="wizard-pane" id="wizard-example-step4">

                                          <div class="row">
                                          <div class="col-md-5"></div>
                                           <div class="col-md-2" id="countdown2" style="text-align:center;margin-top:10px"> 
                                               <i class="fa fa-arrow-circle-right fa-3x" aria-hidden="true" style="color:#008080"></i>
                                            <h4 style="text-align:center"><strong>No hay observaciones</strong></h4><p style="text-align:center">Prosiga al siguiente paso para completar su resumen.</p></div>
                                          <div class="col-md-2" id="countdown"><h4 style="text-align:center"><strong>No hay observaciones</strong></h4><p style="text-align:center">Prosiga al siguiente paso para completar su resumen.</p></div>
                                          <div class="col-md-5"></div>
                                        </div>
                                          <div class="row" style="margin-top:15px">
                                 <div class="col-md-5" >
                                              <p> <span class="fa-stack fa-lg wizard-prev-step-btn" style="cursor:pointer">
<i class="fa fa-arrow-circle-left fa-2x" aria-hidden="true" style="color:#008080"></i>
</span><a class="wizard-prev-step-btn" style="cursor:pointer">Volver al Paso Anterior</a></p>
                                            </div>

                                            <div class="col-md-2">

                                            </div>

                                            <div class="col-md-5" style="text-align:right">
                                            <p><a id="nextAuto" class="wizard-next-step-btn" style="cursor:pointer">Guardar y Continuar</a><span class="fa-stack fa-lg wizard-next-step-btn" style="cursor:pointer">
<i class="fa fa-arrow-circle-right fa-2x" aria-hidden="true" style="color:#008080"></i>
</span> </p>
                                            </div>


                                          </div>
                                </div>
                                        <!--                    -->
                                        <!--     PASO 4         -->
                                        <!--                    -->
                                 <div class="wizard-pane" id="wizard-example-step5">
                                    
                                <div class="col-md-3">

                                </div>

                                     <div class="col-md-6" style="margin-bottom:10px">
                         <div class="panel panel-primary panel-dark widget-profile">
					<div class="panel-heading">
						<div class="widget-profile-bg-icon"><i class="fa fa-check-circle"></i></div>
                        <i class="fa fa-check-circle fa-3x"></i>
						<div class="widget-profile-header">
							<span><strong>PROCESO COMPLETADO!</strong></span><br>
						El proceso de importación de asistencia ha finalizado exitosamente.
						</div>
					</div>
					<div class="list-group">
						<a href="#" class="list-group-item"><i class="fa fa-arrow-right list-group-icon"></i>Costo Finiquitos<span class="label label-primary pull-right text-left-md">14123</span></a>
						<a href="#" class="list-group-item"><i class="fa fa-arrow-right list-group-icon"></i>Total Registros Importados<span class="label label-primary pull-right text-left-md">123455</span></a>
					</div>
				</div> 
                                     </div>
                                     <div class="col-md-3">
                                     </div>
                                </div>
						    </div>            
					    </div> 
				    </div>
		        </div>
        <div id="uidemo-modals-alerts-success" class="modal modal-alert modal-info fade modal">
					<div class="modal-dialog" style="width:500px;max-height:350px">
						<div class="modal-content">
							<div class="modal-header">
								<i class="fa fa-caret-square-o-right"></i>
							</div>
							<div class="modal-title" style="margin-top:10px"><h4><strong>AYUDA IMPORTADOR DE ASISTENCIA</strong></h4></div>
							<div class="modal-body">
                            <div class="row padding-sm">
                            <div style="position:relative;height:0;padding-bottom:75.0%"><iframe src="https://www.youtube.com/embed/pOAXkeIVK90?ecver=2" width="480" height="360" frameborder="0" style="position:absolute;width:100%;height:100%;left:0" allowfullscreen></iframe></div></div></div>
							
                            <div class="modal-footer">
                                <p>Revisa este breve video explicativo para aprender a usar esta sección. Si tienes más dudas, accede a nuestro <a href="#"> <strong>Panel de Ayuda.</strong></a></p>
								<button type="button" class="btn btn-info" data-dismiss="modal">ESTOY LISTO. CERRAR.</button>
							</div>
						</div> <!-- / .modal-content -->
					</div> <!-- / .modal-dialog -->
				</div> <!-- / .modal -->
				<!-- / Success -->
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
