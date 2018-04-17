﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="checklist.aspx.vb" Inherits="Presentacion.Formulario_web12" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
      <style>
        .dropzone-box .fa.fa-cloud-upload{margin-left:350px;}
        .form-horizontal .has-feedback .form-control-feedback{right:0px;}
        .has-feedback:not(.form-group) .form-control-feedback {top: 5px;}
        .claseTest {background-color: #008c9e !important;font-weight: normal;font-size:10px;text-transform:uppercase;}
        .dxgvHeader, .dxgvHeader table{color:#F1F1F1;}
      </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
              <div class="row">                                      
                                            <div class="col-md-12" >
                                                 <div class="panel form-horizontal">
					                               <div class="panel-body bg-panel">
                                                     <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Comencemos!</h4>
                                                       <p>Bienvenido al <b>Generador de checklist </b>. Sigue con atención las instruciones para crear su información de forma correcta. <br /><br />Presiona "Ayuda" en la parte superior si necesitas asistencia o no sabes usar esta sección.</p>
                                                      </div>
                                                     </div>
                                                </div>
                                                <div class="col-md-12">
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
                                                                                     <p><b>1.1)</b> Ingrese codigo de Listado</p>
								                                                    <div class="form-group no-margin-hr">
									                                                                 <div class="col-md-12" style="margin-top:15px"><p class="pull-right">
                                                                                                         <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="170px"></dx:ASPxTextBox>
                                                                                                         <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Generar..."></dx:ASPxButton>
                                                                                                         
                                                                                                         </div> 
                                                                                         </div>
								                                                    </div>
						                                                        </div>
						                                                 </div>
						                                             </div>
                                                                </div>
                                                        
                                                               
						                         </div>                              
				                      <div class="col-md-6"> 
                                         
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SP_QA_ACC_REG_LISTA_CHEQUEO" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE [QA_ACC_REG_CHECKLIST] SET
 [OBSERVACION_CHK] = ISNULL( @OBSERVACION_CHK,''),
 [ESTADO_APROBACION] = @ESTADO_APROBACION 
WHERE [ID_REG_CHK] = @ID_REG_CHK">
                                                <SelectParameters>
                                                    <asp:SessionParameter Name="ID_ACC_REG" SessionField="ID_ACC_REG_1" Type="Int32" />
                                                </SelectParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="OBSERVACION_CHK" />
                                                    <asp:Parameter Name="ESTADO_APROBACION" />
                                                    <asp:Parameter Name="ID_REG_CHK" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>




                                                        <dx:ASPxGridView runat="server" AutoGenerateColumns="False" KeyFieldName="ID_REG_CHK" ClientInstanceName="detailGridView" DataSourceID="SqlDataSource2" Theme="MetropolisBlue" Width="100%" EnableTheming="True" ID="grillaLista" >
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties><Items>
<dx:GridViewColumnLayoutItem ColumnName="ITEM"></dx:GridViewColumnLayoutItem>
<dx:GridViewColumnLayoutItem ColumnName="NOMBRE_CHK"></dx:GridViewColumnLayoutItem>
<dx:GridViewColumnLayoutItem ColumnName="CRITERIO_CONTROL"></dx:GridViewColumnLayoutItem>
<dx:GridViewColumnLayoutItem ColumnName="ESPECIFICACION_CHK"></dx:GridViewColumnLayoutItem>
</Items>
</AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

<SettingsPager Mode="ShowAllRecords"></SettingsPager>

<SettingsEditing Mode="Batch">
<BatchEditSettings AllowRegularDataItemTemplate="True"></BatchEditSettings>
</SettingsEditing>

<Settings ShowGroupButtons="False" ShowFooter="True"></Settings>

<SettingsBehavior AllowFixedGroups="True" AutoExpandAllGroups="True"></SettingsBehavior>

<SettingsDataSecurity AllowInsert="False" AllowDelete="False"></SettingsDataSecurity>

<SettingsPopup>
<EditForm Width="100%" HorizontalAlign="Center" Modal="True"></EditForm>

<CustomizationWindow Width="100%" MinWidth="100%" MinHeight="100%"></CustomizationWindow>
</SettingsPopup>
<Columns>
<dx:GridViewCommandColumn ButtonRenderMode="Button" ButtonType="Button" ShowInCustomizationForm="True" Width="2%" VisibleIndex="0"></dx:GridViewCommandColumn>
<dx:GridViewBandColumn ShowInCustomizationForm="True" Caption="EDICI&#211;N" VisibleIndex="7"><Columns>
<dx:GridViewDataTextColumn FieldName="TIPO_DATO_ENT" ShowInCustomizationForm="True" Visible="False" VisibleIndex="4"></dx:GridViewDataTextColumn>
<dx:GridViewDataTextColumn FieldName="DATO_ENT" ShowInCustomizationForm="True" Width="2%" Caption="DATO ENTRADA" VisibleIndex="0">
<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>

<CellStyle HorizontalAlign="Center" VerticalAlign="Middle"></CellStyle>
</dx:GridViewDataTextColumn>
<dx:GridViewDataComboBoxColumn FieldName="ESTADO_APROBACION" ShowInCustomizationForm="True" Width="10%" Caption="ESTADO" VisibleIndex="1">
<PropertiesComboBox DropDownStyle="DropDown" TextField="ESTADO_APROBACION" ValueField="ESTADO_APROBACION"><Items>
<dx:ListEditItem Text="APROBADO" Value="0"></dx:ListEditItem>
<dx:ListEditItem Text="RECHAZADO" Value="1"></dx:ListEditItem>
<dx:ListEditItem Text="OBSERVACI&#211;N" Value="2"></dx:ListEditItem>
</Items>
</PropertiesComboBox>

<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>

<CellStyle HorizontalAlign="Center" VerticalAlign="Middle"></CellStyle>
</dx:GridViewDataComboBoxColumn>
<dx:GridViewDataMemoColumn FieldName="OBSERVACION_CHK" ShowInCustomizationForm="True" Width="28%" Caption="OBSERVACI&#211;N" VisibleIndex="2">
<PropertiesMemoEdit MaxLength="500" Height="200px"></PropertiesMemoEdit>

<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>

<CellStyle HorizontalAlign="Left" VerticalAlign="Middle"></CellStyle>
</dx:GridViewDataMemoColumn>
<dx:GridViewDataTextColumn ShowInCustomizationForm="True" Width="10%" Caption="documento" Visible="False" VisibleIndex="3"><EditItemTemplate>
                                                                               
                                                                            
</EditItemTemplate>
</dx:GridViewDataTextColumn>
</Columns>
</dx:GridViewBandColumn>
<dx:GridViewBandColumn ShowInCustomizationForm="True" Caption="INFORMACI&#211;N" VisibleIndex="1"><Columns>
<dx:GridViewDataTextColumn FieldName="ID_REG_CHK" ShowInCustomizationForm="True" Width="5%" Caption="ID" Visible="False" VisibleIndex="0">
<EditFormSettings Visible="False"></EditFormSettings>

<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
</dx:GridViewDataTextColumn>
<dx:GridViewDataTextColumn FieldName="ITEM" ShowInCustomizationForm="True" Width="3%" VisibleIndex="1">
<EditCellStyle HorizontalAlign="Center" VerticalAlign="Middle"></EditCellStyle>

<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>

<CellStyle HorizontalAlign="Center" VerticalAlign="Middle"></CellStyle>
</dx:GridViewDataTextColumn>
<dx:GridViewDataTextColumn FieldName="NOMBRE_CHK" ShowInCustomizationForm="True" Width="35%" Caption="ESPECIFICACI&#211;N" VisibleIndex="2">
<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
</dx:GridViewDataTextColumn>
<dx:GridViewDataTextColumn FieldName="NOMBRE_GRP_CHK" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="3"></dx:GridViewDataTextColumn>
<dx:GridViewDataTextColumn FieldName="CRITERIO_CONTROL" ReadOnly="True" ShowInCustomizationForm="True" Width="15%" Caption="CRITERIO DE CONTROL" VisibleIndex="4">
<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>

<CellStyle HorizontalAlign="Center" VerticalAlign="Middle"></CellStyle>
</dx:GridViewDataTextColumn>
<dx:GridViewDataTextColumn FieldName="ESPECIFICACION_CHK" ShowInCustomizationForm="True" Width="15%" Caption="ESPECIFICACI&#211;N" Visible="False" VisibleIndex="5">
<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
</dx:GridViewDataTextColumn>
</Columns>
</dx:GridViewBandColumn>
</Columns>

<Styles>
<GroupRow Font-Bold="True"></GroupRow>

<GroupPanel BackColor="#0066FF" Font-Bold="True" ForeColor="White"></GroupPanel>

<BatchEditCell BackColor="#FFCC00"></BatchEditCell>
</Styles>
</dx:ASPxGridView>

                                         <asp:SqlDataSource ID="sqlListacheck" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SP_QA_ACC_PLT_LISTA_CHEQUEO" SelectCommandType="StoredProcedure">
                                             <SelectParameters>
                                                 <asp:ControlParameter ControlID="ASPxTextBox1" Name="ID_ACC_PLT" PropertyName="Text" Type="Int64" />
                                             </SelectParameters>
                                         </asp:SqlDataSource>
                                     </div>
                                          
                                                  <div class="col-md-6"> 
                                                         
				                                    <script>
                                                        init.push(function () {
                                                            $("#dropzonejs-example").dropzone({
                                                                url: "//dummy.html",
                                                                paramName: "file",
                                                                maxFilesize: 0.5,

                                                                addRemoveLinks: true,
                                                                dictResponseError: "Can't upload file!",
                                                                autoProcessQueue: false,
                                                                thumbnailWidth: 138,
                                                                thumbnailHeight: 120,

                                                                previewTemplate: '<div class="dz-preview dz-file-preview"><div class="dz-details"><div class="dz-filename"><span data-dz-name></span></div><div class="dz-size">File size: <span data-dz-size></span></div><div class="dz-thumbnail-wrapper"><div class="dz-thumbnail"><img data-dz-thumbnail><span class="dz-nopreview">No preview</span><div class="dz-success-mark"><i class="fa fa-check-circle-o"></i></div><div class="dz-error-mark"><i class="fa fa-times-circle-o"></i></div><div class="dz-error-message"><span data-dz-errormessage></span></div></div></div></div><div class="progress progress-striped active"><div class="progress-bar progress-bar-success" data-dz-uploadprogress></div></div></div>',

                                                                resize: function (file) {
                                                                    var info = { srcX: 0, srcY: 0, srcWidth: file.width, srcHeight: file.height },
                                                                        srcRatio = file.width / file.height;
                                                                    if (file.height > this.options.thumbnailHeight || file.width > this.options.thumbnailWidth) {
                                                                        info.trgHeight = this.options.thumbnailHeight;
                                                                        info.trgWidth = info.trgHeight * srcRatio;
                                                                        if (info.trgWidth > this.options.thumbnailWidth) {
                                                                            info.trgWidth = this.options.thumbnailWidth;
                                                                            info.trgHeight = info.trgWidth / srcRatio;
                                                                        }
                                                                    } else {
                                                                        info.trgHeight = file.height;
                                                                        info.trgWidth = file.width;
                                                                    }
                                                                    return info;
                                                                }
                                                            });
                                                        });
				</script>
				                                <div class="panel">
					                                <div class="panel-body bg-panel">  
                                                          <p><b>1.3)</b> Sube tu archivo</p> 
                                                        <dx:ASPxFileManager ID="ASPxFileManager1" runat="server" EnableTheming="True" Theme="MetropolisBlue">
                                                            <Settings RootFolder="~/" ThumbnailFolder="~/Thumb/" InitialFolder="~/Presentacion/archivos/" />
                                                            <SettingsEditing AllowDownload="True" />
                                                        </dx:ASPxFileManager>
					                                </div>
				                                </div>
                                        </div>
                            
                            

                                        </div>
                                        <div class="col-md-12" style="margin-top:15px"><p class="pull-right">
                                    <span id="paso1btn" class="fa-stack fa-lg wizard-next-step-btn" style="cursor:pointer">
                                    <i class="fa fa-arrow-circle-right fa-2x" aria-hidden="true" style="color:#008080"></i>
                                    </span><a id="paso2btn" class="wizard-next-step-btn" style="cursor:pointer"> Estoy Listo. Continuar al Siguiente Paso.</a></p>
                                    </div>


</asp:Content>
