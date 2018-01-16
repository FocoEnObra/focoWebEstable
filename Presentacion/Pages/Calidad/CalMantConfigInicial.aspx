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
                                <div class="wizard-content panel" >                                       
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
                                  
                                    <!--                    -->
                                        <!--     PASO 2         -->
                                        <!--                    -->

                                <div class="wizard-pane" id="wizard-example-step2">
                                    <div class="row">
                                       <dx:ASPxGridView ID="ASPxGridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableTheming="True" KeyFieldName="ID_PLT_CHK" Theme="MetropolisBlue" Width="100%">
                                                                <SettingsAdaptivity>
                                                                    <AdaptiveDetailLayoutProperties>
                                                                        <Items>
                                                                            <dx:GridViewColumnLayoutItem ColumnName="ITEM">
                                                                            </dx:GridViewColumnLayoutItem>
                                                                            <dx:GridViewColumnLayoutItem ColumnName="NOMBRE_CHK">
                                                                            </dx:GridViewColumnLayoutItem>
                                                                            <dx:GridViewColumnLayoutItem ColumnName="CRITERIO_CONTROL">
                                                                            </dx:GridViewColumnLayoutItem>
                                                                            <dx:GridViewColumnLayoutItem ColumnName="ESPECIFICACION_CHK">
                                                                            </dx:GridViewColumnLayoutItem>
                                                                        </Items>
                                                                    </AdaptiveDetailLayoutProperties>
                                                                </SettingsAdaptivity>
                                                                <SettingsPager Mode="ShowAllRecords">
                                                                </SettingsPager>
                                                                <SettingsEditing Mode="Inline">
                                                                </SettingsEditing>
                                                                <Settings ShowFooter="True" ShowGroupButtons="False" />
                                                                <SettingsBehavior AllowFixedGroups="True" AutoExpandAllGroups="True" />
                                                                <SettingsPopup>
                                                                                <EditForm Width="600" Modal="true" >
                                                                                        <SettingsAdaptivity Mode="OnWindowInnerWidth" SwitchAtWindowInnerWidth="768" />
                                                                                    </EditForm>
                                                                            </SettingsPopup>
                                                                <Columns>
                                                                    <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0" ShowNewButtonInHeader="True"></dx:GridViewCommandColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="ID_PLT_CHK" ReadOnly="True" VisibleIndex="4" Visible="False">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="ITEM" ReadOnly="True" VisibleIndex="1">
                                                                        <EditFormSettings Visible="False" />
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="NOMBRE_GRP_CHK" VisibleIndex="5" Caption="GRUPO" FixedStyle="Left" GroupIndex="0" SortIndex="0" SortOrder="Ascending" Visible="False">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="NOMBRE_CHK" VisibleIndex="2" Caption="ELEMENTO DE VERIFICACIÓN">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="ESPECIFICACION_CHK" VisibleIndex="6" Caption="OBSERVACIÓN">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="CRITERIO_CONTROL" VisibleIndex="3" Caption="CRITERIO CONTROL">
                                                                    </dx:GridViewDataTextColumn>
                                                                </Columns>
                                                                <Styles>
                                                                    <GroupRow Font-Bold="True">
                                                                    </GroupRow>
                                                                    <GroupPanel BackColor="#0066FF" Font-Bold="True" ForeColor="White">
                                                                    </GroupPanel>
                                                                </Styles>
                                                            </dx:ASPxGridView>
                                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SP_QA_ACC_PLT_LISTA_CHEQUEO" SelectCommandType="StoredProcedure">
                                                                <SelectParameters>
                                                                    <asp:SessionParameter Name="ID_ACC_PLT" SessionField="ID_ACC_PLT" Type="Int64" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>                   
                                    </div>
                                <div class="row" style="margin-top:15px">
                                       <div class="col-md-5" >
                                              <p> <span class="fa-stack fa-lg wizard-prev-step-btn" style="cursor:pointer">
                                                        <i class="fa fa-arrow-circle-left fa-2x" aria-hidden="true" style="color:#008080"></i>
                                                        </span><a class="wizard-prev-step-btn" style="cursor:pointer">Volver al Paso Anterior</a></p>
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

                                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sqlUsuarios" EnableTheming="True" Theme="MaterialCompact" Width="100%">
                                            <Columns>
                                                <dx:GridViewDataTextColumn Caption="USUARIO" FieldName="nombre_Usu" VisibleIndex="0">
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="DEPTO." FieldName="Depto_Usu" VisibleIndex="1">
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="EMAIL" FieldName="email_usu" VisibleIndex="2">
                                                </dx:GridViewDataTextColumn>
                                            </Columns>
                                        </dx:ASPxGridView>

                                      
                                        <asp:SqlDataSource ID="sqlUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SELECT [nombre_Usu], [Depto_Usu], [email_usu] FROM [USUARIOS]"></asp:SqlDataSource>

                                      
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
