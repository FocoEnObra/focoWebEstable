<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="RegistroCalidadTrabajo.aspx.vb" Inherits="Presentacion.Formulario_web112" %>
<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxTreeList" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxRichEdit.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRichEdit" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="../../assets/stylesheets/DragAndDrop.css" rel="stylesheet" />
    <link href="../../CSS/animate.css" rel="stylesheet" />
    <link href="../../assets/stylesheets/pace-theme-flash.css" rel="stylesheet" />
    <script src="../../assets/javascripts/pace.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script src="../../assets/javascripts/bootstrap-notify.min.js"></script>


    <style>
   .list-group-item
   {
    position: relative;
    display: block;
    padding: 10px 15px;
    margin-bottom: -1px;
    background-color: #f3f3f3;
    border: 1px solid #ddd;
   }
 .dropZoneExternal > div,
.dropZoneExternal > img
{
    position: absolute;
}
.dropZoneExternal
{
    position: relative;
    border: 1px dashed #f17f21!important;
    cursor: pointer;
}
.dropZoneExternal,
.dragZoneText
{
    width: 350px;
    height: 350px;
}
.dropZoneText
{
    width: 300px;
    height: 150px;
    color: #fff;
    background-color: #888;
}
#dropZone
{
    top: 0;
    padding: 100px 25px; 
}
.uploadControlDropZone,
.hidden
{
    display: none;
}
.dropZoneText,
.dragZoneText
{
    display: table-cell;
    vertical-align: middle;
    text-align: center;
    font-size: 20pt;
}
.dragZoneText
{
    color: #808080;
}
.dxucInlineDropZoneSys span
{
    color: #fff!important;
    font-size: 10pt;
    font-weight: normal!important;
}
.uploadControlProgressBar
{
    width: 350px!important;
}
.validationMessage
{
    padding: 0 20px;
    text-align: center;
}
.uploadControl
{
    margin-top: 10px;
}
.Note
{
    max-width: 500px;
}
   
        .dxpc-mainDiv.DetailsPopup
        {
            border-width: 4px; 
        }
        .dxpc-mainDiv.DetailsPopup .dxpc-content
        {
            padding: 0;
        }
        .dxpc-mainDiv.DetailsPopup .dxpc-content > div
        {
            margin: auto;
        }
        .dxpc-mainDiv.DetailsPopup .dxflGroupSys
        {
            padding-top: 12px;
            padding-bottom: 12px;
        }
        .dxpc-mainDiv.DetailsPopup .dxflCaptionCellSys label
        {
            color: #929292;
        }
    </style>
 <script>
     function OnCustomCommand(s, e) {
         switch (e.commandName) {
             case "ChangeView-Thumbnails":
                 manager.PerformCallback("Thumbnails");
                 break;
             case "ChangeView-Details":
                 manager.PerformCallback("Details");
                 break;
             case "Properties":
                 PopupControl.PerformCallback(manager.GetActiveAreaName());
                 break;
         }
     }
     function OnToolbarUpdating(s, e) {
         var enabled = ( manager.GetSelectedItems().length > 0 && e.activeAreaName != "None");
         //manager.GetToolbarItemByCommandName("Properties").SetEnabled(enabled);
         //manager.GetContextMenuItemByCommandName("Properties").SetEnabled(enabled);
     }
     function OnPopupEndCallback(s, e) {
         PopupControl.SetHeaderText(PopupControl.cpHeaderText);
         PopupControl.ShowAtElement(manager.GetMainElement());
     }
    </script>



  <%--  <script  type="text/javascript">
        function ChangeGridWidth(sel) {
            document.getElementById("gridContainer").style.width = 100%;
        }
</script>--%>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body"  runat="server">
    <div class ="page-profile">
    <div class="profile-full-name">
			<span class="text-semibold">
               <br />
              </span>
		</div>
	 	<div class="profile-row">
			<div class="left-col">
				<div class="profile-block">
					<div class="panel profile-photo">
						<img src="../../assets/images/logoBeltec2.png" />
					</div><br>
				
				</div>
				<div class="menu-content top" id="menu-content-demo">
				<div>
					<div class="text-bg ">
                     </div>  
					<div class="btn-group btn-group-lg">
						<a href="#" onclick="window.location.href='RegistrosCalidadListado.aspx'; return false;"class="btn btn-group-lg  btn-outline btn-warning"><i class="fas fa-angle-left"></i></a>
						<a href="#" class="btn btn-group-lg btn-outline btn-warning"><i class="fas fa-lock"></i></a>
						<a href="#" class="btn btn-group-lg btn-outline btn-warning"><i class="fas fa-print"></i></a>
					</div>
					
				</div>
			</div>
				<div class="panel panel-transparent">
					<div class="panel-heading">
						<span class="panel-title">INFO. DEL PROTOCOLO </span>
					</div>
                    <div class="list-group">
                        <a class="list-group-item">
                              <p class="list-group-item-heading text-left text-xs"><i class="far fa-calendar-check"></i>&nbsp;&nbsp;<b>Actividad:</b></p>
                              <p class="list-group-item-text text-left text-xs"><asp:Label ID="lblActividad" runat="server" Text=""></asp:Label></p>
                            </a>
                        <a class="list-group-item">
                               <p class="list-group-item-heading text-left text-xs"><i class="fas fa-angle-right"></i>&nbsp;&nbsp;<b>Etapa:</b></p>
                              <p class="list-group-item-text text-left text-xs"><asp:Label ID="lblEtapa" runat="server" Text=""></asp:Label></p>
                            </a>
                        <a class="list-group-item">
                               <p class="list-group-item-heading text-left text-xs"><i class="fab fa-buromobelexperte"></i>&nbsp;&nbsp;<b>Recinto:</b></p>
                              <p class="list-group-item-text text-left text-xs"><asp:Label ID="lblRecinto" runat="server" Text=""></asp:Label></p>
                         </a>
                         <a class="list-group-item">
                               <p class="list-group-item-heading text-left text-xs"><i class="fas fa-angle-double-right"></i>&nbsp;&nbsp;<b>Raiz:</b></p>
                              <p class="list-group-item-text text-left text-xs"><asp:Label ID="lblRaiz" runat="server" Text=""></asp:Label></p>
                         </a>
                            <a  class="list-group-item ">
                              <p class="list-group-item-heading text-left text-xs"><i class="far fa-calendar-alt"></i>&nbsp;&nbsp;<b>creación:</b></p>
                              <p class="list-group-item-text text-left text-xs"><asp:Label ID="lblFechaCrea" runat="server" Text=""></asp:Label></p>
                            </a>
                        <a  class="list-group-item ">
                              <p class="list-group-item-heading text-left text-xs"><i class="far fa-calendar-check"></i>&nbsp;&nbsp;<b>ultimo V°B°:</b></p>
                              <p class="list-group-item-text text-left text-xs"><asp:Label ID="lblvb" runat="server" Text=""></asp:Label></p>
                            </a>
                        <a  class="list-group-item ">
                              <p class="list-group-item-heading text-left text-xs"><i class="fas fa-ellipsis-v"></i>&nbsp;&nbsp;<b>Nivel V°B°:</b></p>
                              <p class="list-group-item-text text-left text-xs"><asp:Label ID="lblNivel" runat="server" Text=""></asp:Label></p>
                            </a>
                        <a  class="list-group-item ">
                              <p class="list-group-item-heading text-left text-xs"><i class="fas fa-bell animated pulse infinite "></i>&nbsp;&nbsp;<b>Días Dif.:</b></p>
                              <p class="list-group-item-text text-left text-xs"><asp:Label ID="lblDias" runat="server" Text=""></asp:Label></p>
                            </a>
                          
                          </div>
				</div>

			

			</div>
			<div class="right-col ">

				<hr class="profile-content-hr no-grid-gutter-h">
				
				<div class="profile-content">

					<ul id="profile-tabs" class="nav nav-tabs">
						<li class="active">
							<a href="#profile-tabs-board" data-toggle="tab"><i class ="fas fa-map-marker-alt"></i>&nbsp;&nbsp;Protocolo - lista de chequeo </a>
						</li>
					</ul>

					<div class="tab-content tab-content-bordered panel-padding">
						<div class="tab-pane panel no-padding no-border fade in active " id="profile-tabs-board">
                        <div class="panel widget-tasks  panel-transparent ">
                            <div class="panel-heading-controls">

                                  <div class="btn-group">
                                      <dx:ASPxButton ID="btnCerrarProtocolo"  Visible="false"   runat="server" Image-IconID="businessobjects_bopermission_16x16" Text="Finalizar Rev. de Protocolo"  ></dx:ASPxButton>
                                                 
                                  </div>

                            </div>
                            
                            <div class="panel-body">  
                                <br />
                                <br />

                               <script type="text/javascript">
                                                                        var rowIndex;
                                                                        var focusedColumn;
                                                                        function checkedChanged(s, e) {
                                                                            for (var i = 0; i < grid.GetColumnsCount() ; i++) {
                                                                                var column = grid.GetColumn(i);
                                                                                var editor = grid.GetEditor(i);
                                                                                if (column.fieldName == "ID_REG_CHK" || column.fieldName == "NOMBRE_GRP_CHK" || column.fieldName == "ESPECIFICACION_CHK" || column.fieldName == "CRITERIO_CONTROL" || column.fieldName =="OBSERVACION_CHK")
                                                                                continue;
                                                                             grid.batchEditApi.SetCellValue(rowIndex, column.fieldName,false);
                                                                            }
                                                                        }

                                                                        function onBatchEditStartEditing(s, e) {
                                                                            rowIndex = e.visibleIndex;
                                                                            focusedColumn = e.focusedColumn;
                                                                          
                                                                        }

                                                                   
                                                     </script>
                               <script type="text/javascript">
                                                                        function OnBatchEditStartEditing(s, e) {
                                                                            ToggleButtons(true);
                                                                        }
                                                                        function OnBatchEditEndEditing(s, e) {
                                                                            window.setTimeout(function () {
                                                                                if (!s.batchEditApi.HasChanges())
                                                                                    ToggleButtons(false);
                                                                            }, 0);
                                                                        }
                                                                        function ToggleButtons(enabled) {
                                                                            btnUpdate.SetEnabled(enabled);
                                                                            btnCancel.SetEnabled(enabled);
                                                                        }
                                                                        function OnUpdateClick(s, e) {
                                                                            gridView.UpdateEdit();
                                                                            ToggleButtons(false);
                                                                        }
                                                                        function OnCancelClick(s, e) {
                                                                            gridView.CancelEdit();
                                                                            ToggleButtons(false);
                                                                        }
                                                                        function OnCustomButtonClick(s, e) {
                                                                            if (e.buttonID == "deleteButton") {
                                                                                s.DeleteRow(e.visibleIndex);
                                                                                ToggleButtons(true);
                                                                            }
                                                                        }
                                                                        function OnEndCallback(s, e) {
                                                                            window.setTimeout(function () {
                                                                                if (!s.batchEditApi.HasChanges())
                                                                                    ToggleButtons(false);
                                                                            }, 0);
                                                                        }
    </script>

                               

                        
                                
                            <script type="text/javascript">
                                                                        function OnToolbarItemClick(s, e) {
                                                                            if (IsCustomExportToolbarCommand(e.item.name)) {
                                                                                e.processOnServer = true;
                                                                                e.usePostBack = true;
                                                                            }
                                                                        }
                                                                        function IsCustomExportToolbarCommand(command) {
                                                                            return command == "CustomExportToXLS" || command == "CustomExportToXLSX" 
                                                                        }
                                                                        function myFuncionAlerta(respuesta) {
                                                                            //var notify = $.notify('<strong>..</strong> guardando...', {
                                                                            //    allow_dismiss: false,
                                                                            ////    showProgressbar: true,
                                                                            //    allow_dismiss: false
                                                                                
                                                                            //});
                                                                            if (respuesta == 0)
                                                                            {
                                                                                $.notify({
                                                                                    title: '<strong>Cuidado</strong>',
                                                                                    message: 'Existen Items sin revisar, la revisión del protocolo no se puede finalizar.'
                                                                                }, {
                                                                                        type: 'warning'
                                                                                    });

                                                                            }
                                                                            if (respuesta == -1) {
                                                                                $.notify({
                                                                                    title: '<strong>Existe un problema</strong>',
                                                                                    message: 'Existen Items con fallas detectadas, la revisión del protocolo no se puede finalizar.'
                                                                                }, {
                                                                                        type: 'danger'
                                                                                    });

                                                                            }

                                                                            if (respuesta == -3) {
                                                                                $.notify({
                                                                                    title: '<strong>Cuidado</strong>',
                                                                                    message: ' No Existe ningun Item Aprobado, la revisión del protocolo no se puede finalizar.'
                                                                                }, {
                                                                                        type: 'warning'
                                                                                    });

                                                                            }

                                                                            if (respuesta == 1) {
                                                                                $.notify({
                                                                                    title: '<strong>O.K.!</strong>',
                                                                                    message: ' Revisión del Protocolo finalizado correctamente.'
                                                                                }, {
                                                                                        type: 'success'
                                                                                    });
                                                                                setTimeout(function () { window.open('RegistrosCalidadListado.aspx', '_self'); }, 3000);
                                                                            }
                                                                        }

    </script>     
                  
                                <dx:ASPxGridView ID="grilla_check"
                                    ClientInstanceName="grid"
                                    runat="server"
                                    AutoGenerateColumns="False"
                                    DataSourceID="sqlCheckList"
                                    EnableTheming="True"
                                    KeyFieldName="ID_REG_CHK"
                                    Theme="MaterialCompact"
                                    OnCellEditorInitialize="grilla_check_CellEditorInitialize"
                                    Width="100%"
                                     OnToolbarItemClick="grilla_check_ToolbarItemClick"
                                    >
                                   
                              <Toolbars>
            <dx:GridViewToolbar  ItemAlign="Right" EnableAdaptivity="true"   >
                <Items>
                    
                    <dx:GridViewToolbarItem Command="Update" name="Update" Image-IconID  ="save_save_16x16"  Text  ="Grabar"   >
                                                            <Image IconID="save_save_16x16"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Command="cancel"  Image-IconID="actions_cancel_16x16" Text="Cancelar"   >
                                                        <Image IconID="actions_cancel_16x16"></Image>
                    </dx:GridViewToolbarItem>
                 
                    <dx:GridViewToolbarItem name="Finalizar" Image-IconID  ="save_save_16x16"  Text ="Finalizar"   >
                          <Template>
                                <dx:ASPxButton ID="btn" runat="server"      Image-IconID ="businessobjects_bopermission_16x16" Text="Finalizar Rev. de Protocolo" OnClick ="btnCerrarProtocolo_Click" Theme="MaterialCompact" ></dx:ASPxButton>
                          </Template>
                                                         
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Text="Exportar a.." Image-IconID="actions_download_16x16office2013" BeginGroup="true">
                        <Items>
                           
                            <dx:GridViewToolbarItem Command="ExportToPdf" />
                            <dx:GridViewToolbarItem Command="ExportToDocx" />
                            <dx:GridViewToolbarItem Command="ExportToRtf" />
                            <dx:GridViewToolbarItem Command="ExportToCsv" />
                            <dx:GridViewToolbarItem Command="ExportToXls" Text="Export to XLS(DataAware)" />
                            <dx:GridViewToolbarItem Name="CustomExportToXLS" Text="Export to XLS(WYSIWYG)" Image-IconID="export_exporttoxls_16x16office2013" >
                                                                                    <Image IconID="export_exporttoxls_16x16office2013"></Image>
                            </dx:GridViewToolbarItem>
                            <dx:GridViewToolbarItem Command="ExportToXlsx" Text="Export to XLSX(DataAware)" />
                            <dx:GridViewToolbarItem Name="CustomExportToXLSX" Text="Export to XLSX(WYSIWYG)" Image-IconID="export_exporttoxlsx_16x16office2013" >
                                                                                  
                                
                                 
                              
                                <Image IconID="export_exporttoxlsx_16x16office2013"></Image>
                            </dx:GridViewToolbarItem>
                        </Items>

                      <Image IconID="actions_download_16x16office2013"></Image>
                    </dx:GridViewToolbarItem>
                   
                </Items>
            </dx:GridViewToolbar>
        </Toolbars>
                                                                        <SettingsPager PageSize="50" Position="Top" AlwaysShowPager="True" Mode="ShowAllRecords">
                                                                        </SettingsPager>
                                                                        <ClientSideEvents 
                                                                            BatchEditEndEditing="OnBatchEditEndEditing"
                                                                            BatchEditStartEditing="onBatchEditStartEditing" 
                                                                            CustomButtonClick="OnCustomButtonClick"
                                                                            EndCallback="OnEndCallback" />
                                                                        <SettingsEditing Mode="Batch">
                                                                            <BatchEditSettings StartEditAction="Click" ShowConfirmOnLosingChanges="False" />
                                                                        </SettingsEditing>
                                                                        <Settings GridLines="Horizontal" VerticalScrollableHeight="500" UseFixedTableLayout="True" />
                                                                        <SettingsBehavior AutoExpandAllGroups="True" />
                                                                            <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" AllowOnlyOneAdaptiveDetailExpanded="true"></SettingsAdaptivity>
                                                                            <SettingsBehavior AllowEllipsisInText="true"/>
                                                                        <Columns>
                                                                            <dx:GridViewCommandColumn VisibleIndex="0" Width="0%">
                                                                            </dx:GridViewCommandColumn>
                                                                            <dx:GridViewDataTextColumn Caption="Reg." FieldName="ID_REG_CHK" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="1" Width="5%" Visible="False">
                                                                                <EditFormSettings Visible="False" />
                                                                                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn Caption="DESCRIPCIÓN" FieldName="ITEM" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="3" Width="40%">
                                                                                <HeaderStyle HorizontalAlign="Justify" VerticalAlign="Middle" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn Caption="GRUPO" FieldName="NOMBRE_GRP_CHK" GroupIndex="0" ReadOnly="True" ShowInCustomizationForm="True" SortIndex="0" SortOrder="Descending" VisibleIndex="2" Width="0%">
                                                                                <PropertiesTextEdit EnableFocusedStyle="False">
                                                                                </PropertiesTextEdit>
                                                                                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn FieldName="NOMBRE_CHK" ShowInCustomizationForm="True" Visible="False" VisibleIndex="4">
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn FieldName="ESTADO_APROBACION" ShowInCustomizationForm="True" VisibleIndex="6" Visible="False">
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn FieldName="TIPO_DATO_ENT" ShowInCustomizationForm="True" VisibleIndex="7" Visible="False">
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn FieldName="DATO_ENT" ShowInCustomizationForm="True" Visible="False" VisibleIndex="8">
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewBandColumn ShowInCustomizationForm="True" Caption="ESTADOS DE REVISI&#211;N" VisibleIndex="9">
                                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                                                                                <Columns>
                                                                                    <dx:GridViewDataCheckColumn FieldName="ESTADO_APROBACION_APROBADO" ShowInCustomizationForm="True" Width="5%" ToolTip="Aprobaci&#243;n del registro" VisibleIndex="0">
                                                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>

                                                                                        <CellStyle HorizontalAlign="Center" VerticalAlign="Middle"></CellStyle>
                                                                                        <HeaderTemplate>
                                                                                            <dx:ASPxImage ID="ASPxImage2" runat="server" EmptyImage-IconID="support_issue_32x32" ShowLoadingImage="true"></dx:ASPxImage>

                                                                                        </HeaderTemplate>
                                                                                    </dx:GridViewDataCheckColumn>
                                                                                    <dx:GridViewDataCheckColumn FieldName="ESTADO_APROBACION_CONFALOS" ShowInCustomizationForm="True" Width="5%" ToolTip="El Registro presenta fallos" VisibleIndex="1">
                                                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>

                                                                                        <CellStyle HorizontalAlign="Center" VerticalAlign="Middle"></CellStyle>
                                                                                        <HeaderTemplate>
                                                                                            <dx:ASPxImage ID="ASPxImage2" runat="server" EmptyImage-IconID="actions_deletelist2_32x32" ShowLoadingImage="true"></dx:ASPxImage>

                                                                                        </HeaderTemplate>
                                                                                    </dx:GridViewDataCheckColumn>
                                                                                    <dx:GridViewDataCheckColumn FieldName="ESTADO_APROBACION_NOAPLICA" ShowInCustomizationForm="True" Width="5%" Caption="N/A" ToolTip="El Registro no aplica" VisibleIndex="2">
                                                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>

                                                                                        <CellStyle HorizontalAlign="Center" VerticalAlign="Middle"></CellStyle>
                                                                                    </dx:GridViewDataCheckColumn>
                                                                                </Columns>
                                                                            </dx:GridViewBandColumn>
                                                                            <dx:GridViewBandColumn Caption="COMENTARIOS" VisibleIndex="10">
                                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                                                                                <Columns>
                                                                                    <dx:GridViewDataTextColumn FieldName="OBSERVACION_CHK" VisibleIndex="1" Width="30%">
                                                                                         <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                                                                                        <CellStyle HorizontalAlign="Center" VerticalAlign="Middle"></CellStyle>
                                                                                        <HeaderTemplate>
                                                                                            <dx:ASPxImage ID="ASPxImage2" runat="server" EmptyImage-IconID="miscellaneous_comment_32x32office2013" ShowLoadingImage="true"></dx:ASPxImage>
                                                                                        </HeaderTemplate>

                                                                                    </dx:GridViewDataTextColumn>
                                                                                   
                                                                                </Columns>
                                                                            </dx:GridViewBandColumn>

                                                                            <dx:GridViewBandColumn Caption="INFORMACI&#211;N DEL PROTOCOLO" VisibleIndex="5">
                                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                                                                                <Columns>
                                                                                    <dx:GridViewDataTextColumn FieldName="ESPECIFICACION_CHK" ReadOnly="True" ShowInCustomizationForm="True" Width="45%" Caption="ESPECIFICACI&#211;N" VisibleIndex="0">
                                                                                        <Settings ShowEditorInBatchEditMode="False"></Settings>
                                                                                    </dx:GridViewDataTextColumn>
                                                                                    <dx:GridViewDataTextColumn FieldName="CRITERIO_CONTROL" ReadOnly="True" ShowInCustomizationForm="True" Width="10%" Caption="CRITERIOS" VisibleIndex="1">
                                                                                        <Settings ShowEditorInBatchEditMode="False"></Settings>

                                                                                        <HeaderStyle HorizontalAlign="Justify" VerticalAlign="Middle"></HeaderStyle>
                                                                                    </dx:GridViewDataTextColumn>

                                                                                </Columns>
                                                                            </dx:GridViewBandColumn>
                                                                        </Columns>
                                                                        <Styles>
                                                                            <SelectedRow BackColor="#FFFFCC">
                                                                            </SelectedRow>
                                                                          <%--  <BatchEditModifiedCell BackColor="White" >
                                                                            </BatchEditModifiedCell>--%>
                                                                        </Styles>
                                 <Settings ShowStatusBar="Hidden" />
                                    <SettingsExport EnableClientSideExportAPI="true" ExcelExportMode="DataAware" />
                              <ClientSideEvents ToolbarItemClick="OnToolbarItemClick" />
                                                                    </dx:ASPxGridView>
                               <asp:SqlDataSource ID="sqlCheckList" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SP_QA_ACC_REG_LISTA_CHEQUEO" SelectCommandType="StoredProcedure" UpdateCommand="SP_QA_WS_ACTUALIZA_CHECKLIST" UpdateCommandType="StoredProcedure">
                                                                        <SelectParameters>
                                                                            <asp:QueryStringParameter Name="ID_ACC_REG" QueryStringField="idRegistro" Type="Int32" />
                                                                        </SelectParameters>
                                                                        <UpdateParameters>
                                                                            <asp:Parameter Name="ID_REG_CHK" Type="Int64" />
                                                                            <asp:Parameter Name="ESTADO_APROBACION" Type="Int16" />
                                                                            <asp:Parameter Name="OBS" Type="String" />
                                                                        </UpdateParameters>
                                                                    </asp:SqlDataSource>
                               <br />
                            
                            </div>
                      </div>

  <div class="panel widget-tasks  ">
                            <div class="panel-heading">
                               <span class="panel-title"><i class="lnr lnr-file-add fa-2x"></i>&nbsp;&nbsp; Adjunta Información al protocolo </span>
                            </div>
                            <div class="panel-body"> 
                             
                                                                              <dx:ASPxFileManager ID="manejaArchivos" ClientInstanceName="manager" runat="server" Theme="Material" 
                                                                                  EnableTheming="True"
                                                                                  OnCustomCallback="manejaArchivos_CustomCallback"
                                                                                  OnItemDeleting="manejaArchivos_ItemDeleting"
                                                                                  Width="100%">
                                                                                        <Settings    AllowedFileExtensions=".jpg,.jpeg,.gif,.rtf,.txt,.avi,.png,.mp3,.xml,.doc,.pdf" />
                                                                                        <SettingsFileList>
                                                                                            <ThumbnailsViewSettings ThumbnailWidth="50px" ThumbnailHeight="50px" >
                                                                                            </ThumbnailsViewSettings>
                                                                                        </SettingsFileList>
                                                                                        <SettingsEditing AllowDownload="True" AllowDelete="True"></SettingsEditing>
                                                                                        <SettingsFolders HideAspNetFolders="False" ShowExpandButtons="False" ShowFolderIcons="False" ShowLockedFolderIcons="False" ShowTreeLines="False" Visible="False" />
                                                                                        <SettingsToolbar ShowPath="False" ShowPopOutImages="True">
                                                                                             <Items>
                                                                                                <dx:FileManagerToolbarCustomButton CommandName="Properties">
                                                                                                    <Image IconID="setup_properties_16x16" />
                                                                                                </dx:FileManagerToolbarCustomButton>
                                                                                                <dx:FileManagerToolbarRefreshButton BeginGroup="false" />
                                                                                                <dx:FileManagerToolbarCustomButton Text="Vista archivos" CommandName="ChangeView-Thumbnails" GroupName="ViewMode">
                                                                                                    <Image IconID="grid_cards_16x16" />
                                                                                                </dx:FileManagerToolbarCustomButton>
                                                                                                <dx:FileManagerToolbarCustomButton Text="vista detalle" CommandName="ChangeView-Details" GroupName="ViewMode">
                                                                                                    <Image IconID="grid_grid_16x16" />
                                                                                                </dx:FileManagerToolbarCustomButton> 
                                                                                            </Items>
                                                                                        </SettingsToolbar>
                                                                                        <SettingsUpload>
                                                                                        <AdvancedModeSettings EnableMultiSelect="True"></AdvancedModeSettings>
                                                                                    </SettingsUpload>
                                                                                    <ClientSideEvents CustomCommand="OnCustomCommand" ToolbarUpdating="OnToolbarUpdating" />
                                                                                </dx:ASPxFileManager>
                                                                         


                            </div>
      </div>
                      </div>
            </div>
                </div>

</div>
    </div>
    </div>
      <dx:ASPxPopupControl ID="PopupControl" runat="server" ClientInstanceName="PopupControl" OnWindowCallback="PopupControl_WindowCallback" Width="430" 
        ShowHeader="true" ShowFooter="false" PopupHorizontalAlign="Center" PopupVerticalAlign="Middle" AllowDragging="true" DragElement="Header" CssClass="DetailsPopup" CloseOnEscape="true">
        <ClientSideEvents EndCallback="OnPopupEndCallback" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <dx:ASPxFormLayout ID="FormLayout" runat="server" AlignItemCaptionsInAllGroups="True">
                    <Items>
                        <dx:LayoutGroup Caption=" " GroupBoxDecoration="None">
                            <Items>
                                <dx:LayoutItem Caption="Name">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxLabel ID="Name" runat="server" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="Type">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxLabel ID="Type" runat="server" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                            </Items>
                        </dx:LayoutGroup>
                        <dx:LayoutGroup Caption=" " GroupBoxDecoration="None">
                            <Items>
                                <dx:LayoutItem Caption="Location">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxLabel ID="Location" runat="server" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="Relative Location">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxLabel ID="RelativeLocation" runat="server" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="Size">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxLabel ID="Size" runat="server" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="Contains" Name="Contains">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxLabel ID="Contains" runat="server" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                            </Items>
                        </dx:LayoutGroup>
                        <dx:LayoutGroup Caption=" " GroupBoxDecoration="None">
                            <Items>
                                <dx:LayoutItem Caption="Created">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxLabel ID="Created" runat="server" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="Modified" Name="Modified">
                                    <LayoutItemNestedControlCollection >
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxLabel ID="Modified" runat="server" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="Accessed" Name="Accessed">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxLabel ID="Accessed" runat="server" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                            </Items>
                        </dx:LayoutGroup>
                    </Items>
                </dx:ASPxFormLayout>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
</asp:Content>