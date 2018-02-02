﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="ListaPendientes.aspx.vb" Inherits="Presentacion.Formulario_web13" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>
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
     <script type="text/javascript">
         function OnToolbarItemClick(s, e) {
             if (IsCustomExportToolbarCommand(e.item.name)) {
                 e.processOnServer = true;
                 e.usePostBack = true;
             }
         }
         function IsCustomExportToolbarCommand(command) {
             return command == "CustomExportToXLS" || command == "CustomExportToXLSX";
         }

      
         function UpdateDetailGrid(s, e) {
             detailGridView.PerformCallback(s.GetRowKey(s.GetFocusedRowIndex()));
        }



         function OnBatchStartEditing(s, e) {
             browseClicked = false;
             hf.Set("visibleIndex", e.visibleIndex);
             var fileNameColumn = s.GetColumnByField("FileName");
             if (!e.rowValues.hasOwnProperty(fileNameColumn.index))
                 return;
             var cellInfo = e.rowValues[fileNameColumn.index];

             setTimeout(function () {
                 SetUCText(cellInfo.value);
             }, 0);
         }
         function OnBatchConfirm(s, e) {
             e.cancel = browseClicked;
         }


         function OnFileUploadComplete(s, e) {
             grid.batchEditApi.SetCellValue(hf.Get("visibleIndex"), "FileName", e.callbackData);
             grid.batchEditApi.EndEdit();
         }
         function OnTextChanged(s, e) {
             if (s.GetText()) {
                 browseClicked = true;
                 s.Upload();
             }
         }

         function OnMoreInfoClick(contentUrl) {
             clientPopupControl.SetContentUrl(contentUrl);
             clientPopupControl.Show();
         }
    </script>
     <div class="panel">  
                    <div class="panel-heading">
						<span class="panel-title" style="color:#17649A"><b>LISTADO DE ACTIVIDADES DE CONTROL DE CALIDAD</b></span></div>
				<div class="stat-panel">
					<div class="stat-row">
					
						<div class="stat-cell col-sm-12 padding-sm ">
                            <%--<div class="alert alert-dark alert-info">
							<button type="button" class="close" data-dismiss="alert">×</button>
							<strong>Nota:</strong> Recuerda guardar los cambios que vayas realizando!
						    </div>--%>
                            <p>En esta sección puedes editar la información relacionada con las etapas constructivas de tus proyectos en Foco.</p><hr />
						
                          
                                     <div class="panel-body bg-panel">
                                      <div class="col-sm-12">
                                        <label class="control-label">Selecciona Proyecto</label>
								        <div class="form-group no-margin-hr">
									                  &nbsp;<asp:SqlDataSource ID="SqlDataSource5" runat="server"></asp:SqlDataSource>
                                                      <dx:ASPxComboBox ID="ddlObra" runat="server" AutoPostBack="True" DataSourceID="sqlObra" TextField="NomAbr_Obr" Theme="MetropolisBlue" ValueField="ID_OBR" ValueType="System.Int32">
                                                      </dx:ASPxComboBox>
                                                      <asp:SqlDataSource ID="sqlObra" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SELECT [ID_OBR], [NomAbr_Obr] FROM [OBRAS]"></asp:SqlDataSource>
                                        </div>
							         </div>  
   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                 <contenttemplate>
                                      <div class="col-md-6">
                                            <label class="control-label">Listado de Actividades Controladas</label>
                                            <br />
                                        

                                            <dx:ASPxGridView ID="gridActividades"  ClientInstanceName="grid" runat="server" AutoGenerateColumns="False" DataSourceID="sqlCalidad" EnableTheming="True" KeyFieldName="ID_ACC_PLT" Theme="DevEx" Width="100%">
         
                                
      
                                                   <Settings UseFixedTableLayout="True" />
                                                <SettingsBehavior AllowFixedGroups="True" AllowSelectSingleRowOnly="True" AllowSelectByRowClick="True" />
      
                                                <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
      
                                                <SettingsSearchPanel ShowClearButton="True" Visible="True" />

        <ClientSideEvents ToolbarItemClick="OnToolbarItemClick" />

                                                <SettingsDetail ExportMode="Expanded" ShowDetailRow="True" AllowOnlyOneMasterRowExpanded="True" />
                                                <Templates>
                                                    <DetailRow>
                                                         <div style="padding: 3px 3px 2px 3px">
                            <dx:ASPxPageControl runat="server" ID="pageControl" Width="100%" EnableCallBacks="True" ActiveTabIndex="0" EnableTheming="True"  Theme="MetropolisBlue" OnActiveTabChanged="pageControl_ActiveTabChanged">
                                <TabPages>
                                    <dx:TabPage Text="RECINTO" Visible="true">
                                        <ContentCollection>
                                            <dx:ContentControl runat="server">
                                                <dx:ASPxGridView ID="gridRecinto" runat="server" Theme="MetropolisBlue" DataSourceID="sqlRecinto" AutoGenerateColumns="False" KeyFieldName="ID_UCO" OnBeforePerformDataSelect="gridRecinto_BeforePerformDataSelect" Width="100%">
                                                
                                                    
                                                    <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailRow="True" ExportMode="All" />
                                                    <Templates>
                                                        <DetailRow>
                                                            <asp:SqlDataSource ID="sqlRegistrosDetalle" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SP_QA_ACC_PLT_BUSCAR_REGISTROS" SelectCommandType="StoredProcedure">
                                                                <SelectParameters>
                                                                    <asp:SessionParameter DefaultValue="" Name="ID_ACC_PLT" SessionField="ID_ACC_PLT" Type="Int32" />
                                                                    <asp:SessionParameter DefaultValue="" Name="ID_UCO" SessionField="ID_UCO" Type="Int64" />
                                                                    <asp:Parameter DefaultValue="1" Name="SOLO_PEND" Type="Int32" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                            <dx:ASPxGridView ID="grilla_ActividadControl" runat="server" AutoGenerateColumns="False" DataSourceID="sqlRegistrosDetalle" KeyFieldName="ID_ACC_REG" OnBeforePerformDataSelect="grilla_ActividadControl_BeforePerformDataSelect" Theme="MetropolisBlue" Width="100%" OnDetailRowExpandedChanged="grilla_ActividadControl_DetailRowExpandedChanged" OnFocusedRowChanged="grilla_ActividadControl_FocusedRowChanged" OnSelectionChanged="grilla_ActividadControl_SelectionChanged">
                                                                <SettingsDetail AllowOnlyOneMasterRowExpanded="True" />
                                                                <SettingsEditing Mode="PopupEditForm" EditFormColumnCount="5">
                                                                </SettingsEditing>
                                                                <SettingsPopup>
                                                                    <EditForm Modal="True" Width="100%">
                                                                        <SettingsAdaptivity VerticalAlign="WindowCenter" />
                                                                    </EditForm>
                                                                    <CustomizationWindow ShowShadow="True" />
                                                                    <CustomizationDialog>
                                                                        <SettingsAdaptivity MinWidth="1200px" />
                                                                    </CustomizationDialog>
                                                                </SettingsPopup>
                                                                <EditFormLayoutProperties AlignItemCaptionsInAllGroups="True" ColCount="2" RequiredMarkDisplayMode="None">
                                                                    <Items>
                                                                        <dx:GridViewColumnLayoutItem ColumnName="NOMBRE_ACC">
                                                                        </dx:GridViewColumnLayoutItem>
                                                                      <%--  <dx:GridViewColumnLayoutItem ColumnName="ETAPA">
                                                                        </dx:GridViewColumnLayoutItem>--%>
                                                                        <dx:GridViewColumnLayoutItem ColumnName="ESTADO">
                                                                        </dx:GridViewColumnLayoutItem>
                                                                        <dx:GridViewColumnLayoutItem ColumnName="ULTIMO_REG">
                                                                        </dx:GridViewColumnLayoutItem>
                                                                        <dx:GridViewColumnLayoutItem ColumnName="FECHA_CREA">
                                                                        </dx:GridViewColumnLayoutItem>
                                                                        <dx:EditModeCommandLayoutItem ColSpan="2" HorizontalAlign="Right" Width="100%">
                                                                        </dx:EditModeCommandLayoutItem>
                                                                    </Items>
                                                                    <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" />
                                                                    <SettingsItemCaptions HorizontalAlign="Left" Location="Top" VerticalAlign="Middle" />
                                                                    <SettingsItems Width="100%" />
                                                                </EditFormLayoutProperties>
                                                                 <SettingsBehavior AllowClientEventsOnLoad="False" SelectionStoringMode="PerformanceOptimized" AllowSelectByRowClick="True" AllowSelectSingleRowOnly="True" />
                                                                <ClientSideEvents  SelectionChanged ="UpdateDetailGrid" />

                                                                <Columns>
                                                                    <dx:GridViewCommandColumn VisibleIndex="0">
                                                                    </dx:GridViewCommandColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="ID_ACC_REG" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                                                        <EditFormSettings Visible="False" />
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn Caption="ACTIVIDAD CONTROL DE CALIDAD" FieldName="NOMBRE_ACC" ShowInCustomizationForm="True" VisibleIndex="3">
                                                                    </dx:GridViewDataTextColumn>
                                                                  <%--  <dx:GridViewDataTextColumn Caption="ETAPA CONSTRUCTIVA" FieldName="ETAPA" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="4">
                                                                    </dx:GridViewDataTextColumn>--%>
                                                                    <dx:GridViewDataTextColumn FieldName="NOMBRE_UCO" ShowInCustomizationForm="True" Visible="False" VisibleIndex="5">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="TIPOLOGIA" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="6">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn Caption="ESTADO" FieldName="ESTADO" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="7">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn Caption="ULTIMO" FieldName="ULTIMO_REG" ShowInCustomizationForm="True" VisibleIndex="8">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataDateColumn Caption="CREACIÓN" FieldName="FECHA_CREA" ShowInCustomizationForm="True" VisibleIndex="9">
                                                                    </dx:GridViewDataDateColumn>
                                                                    <dx:GridViewCommandColumn VisibleIndex="1">
                                                                    <CustomButtons>
                                                                        <dx:GridViewCommandColumnCustomButton ID="btnDetails" Text="Details" />
                                                                    </CustomButtons>
                                                                </dx:GridViewCommandColumn>
                                                                </Columns>
                                                                   <SettingsSearchPanel CustomEditorID="tbToolbarSearch" />
                                                                        <SettingsBehavior AllowFocusedRow="true" />
                                                                        <SettingsExport EnableClientSideExportAPI="true" ExcelExportMode="DataAware" />
                                                                        <Styles Header-Wrap="True">
                                                                            <Header Wrap="True">
                                                                            </Header>
                                                                            <SelectedRow Wrap="False">
                                                                            </SelectedRow>
                                                                </Styles>
                                                                        <ClientSideEvents ToolbarItemClick="OnToolbarItemClick" />
                                                            </dx:ASPxGridView>
                                                        </DetailRow>
                                                        <EditForm>
                                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="Infomación ACC" ShowCollapseButton="true" Theme="MetropolisBlue" View="GroupBox" Width="100%">
                                                                <PanelCollection>
                                                                    <dx:PanelContent runat="server">
                                                                        seleccione Recinto<dx:ASPxComboBox ID="dll_uco" runat="server" DataSourceID="sqlRecinto" OnSelectedIndexChanged="dll_uco_SelectedIndexChanged" TextField="NOMBRE_UCO" Theme="MetropolisBlue" ValueField="ID_UCO" ValueType="System.Int16">
                                                                        </dx:ASPxComboBox>
                                                                        <dx:ASPxButton ID="ASPxButton1" runat="server" OnClick="ASPxButton1_Click" Text="btnGuardar" Theme="MetropolisBlue">
                                                                        </dx:ASPxButton>
                                                                    </dx:PanelContent>
                                                                </PanelCollection>
                                                            </dx:ASPxRoundPanel>
                                                            <br />
                                                            <br />
                                                            <br />
                                                            listado de chekeo<br />
                                                            <dx:ASPxGridView ID="ASPxGridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableTheming="True" KeyFieldName="ID_PLT_CHK" Theme="DevEx" Width="100%">
                                                                <SettingsPager Mode="ShowAllRecords">
                                                                </SettingsPager>
                                                                <SettingsEditing Mode="PopupEditForm">
                                                                </SettingsEditing>
                                                                <Settings ShowFooter="True" ShowGroupedColumns="True" />
                                                                <SettingsBehavior AllowFixedGroups="True" AutoExpandAllGroups="True" />
                                                                <SettingsDataSecurity AllowDelete="False" AllowEdit="False" />
                                                                <SettingsPopup>
                                                                    <EditForm HorizontalAlign="Center" Modal="True" Width="100%">
                                                                    </EditForm>
                                                                    <CustomizationWindow MinHeight="100%" MinWidth="100%" Width="100%" />
                                                                </SettingsPopup>
                                                                <Columns>
                                                                    <dx:GridViewCommandColumn VisibleIndex="0">
                                                                    </dx:GridViewCommandColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="ID_PLT_CHK" ReadOnly="True" VisibleIndex="1" Visible="False">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="ITEM" ReadOnly="True" VisibleIndex="2">
                                                                        <EditFormSettings Visible="False" />
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="NOMBRE_GRP_CHK" GroupIndex="1" SortIndex="0" SortOrder="Ascending" Visible="False" VisibleIndex="3">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="NOMBRE_CHK" SortIndex="1" SortOrder="Ascending" VisibleIndex="4">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="CRITERIO_CONTROL" VisibleIndex="5">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="ESPECIFICACION_CHK" VisibleIndex="6">
                                                                    </dx:GridViewDataTextColumn>
                                                                </Columns>
                                                                <Styles>
                                                                    <GroupPanel BackColor="#0066FF" Font-Bold="True" ForeColor="White">
                                                                    </GroupPanel>
                                                                </Styles>
                                                            </dx:ASPxGridView>
                                                            <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server">
                                                            </dx:ASPxGridViewExporter>
                                                            <br />
                                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SP_QA_ACC_PLT_LISTA_CHEQUEO" SelectCommandType="StoredProcedure">
                                                                <SelectParameters>
                                                                    <asp:SessionParameter Name="ID_ACC_PLT" SessionField="ID_ACC_PLT" Type="Int64" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        </EditForm>
                                                    </Templates>
                                                    <SettingsEditing Mode="PopupEditForm">
                                                    </SettingsEditing>
                                                    <SettingsDataSecurity AllowDelete="False" AllowEdit="False" />
                                                    <SettingsPopup>
                                                        <EditForm AllowResize="True" ShowMaximizeButton="True">
                                                        </EditForm>
                                                        <CustomizationWindow ShowShadow="True" ShowCollapseButton="True" ShowFooter="True" ShowPinButton="True" VerticalAlign="NotSet" />
                                                        <CustomizationDialog>
                                                            <SettingsAdaptivity MinWidth="700px" />
                                                        </CustomizationDialog>
                                                    </SettingsPopup>
                                                    <Columns>
                                                        <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0">
                                                        </dx:GridViewCommandColumn>
                                                        <dx:GridViewBandColumn Caption="REGISTROS" ShowInCustomizationForm="True" VisibleIndex="3">
                                                            <Columns>
                                                                <dx:GridViewDataTextColumn Caption="APRO." FieldName="APROBADO_REG" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="1" Width="5%">
                                                                    <EditCellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                    </EditCellStyle>
                                                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                    <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                    </CellStyle>
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="RECH." FieldName="RECHAZA_REG" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="2" Width="5%">
                                                                    <EditCellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                    </EditCellStyle>
                                                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                    <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                    </CellStyle>
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="PEND." FieldName="PEND_REG" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="3" Width="5%">
                                                                    <EditCellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                    </EditCellStyle>
                                                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                    <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                    </CellStyle>
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="TOT." FieldName="TOT_REG" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="0" Width="5%">
                                                                    <EditCellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                    </EditCellStyle>
                                                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                    <BackgroundImage HorizontalPosition="center" ImageUrl="data_summary_16x16office2013" VerticalPosition="center" />
                                                                    </HeaderStyle>
                                                                    <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                    </CellStyle>
                                                                </dx:GridViewDataTextColumn>
                                                            </Columns>
                                                        </dx:GridViewBandColumn>
                                                        <dx:GridViewBandColumn Caption="RECINTOS" ShowInCustomizationForm="True" VisibleIndex="2">
                                                            <Columns>
                                                                <dx:GridViewDataTextColumn Caption="NOMBRE" FieldName="NOMBRE_UCO" ShowInCustomizationForm="True" VisibleIndex="0" Width="35%">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="TIPOLOGIA" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="2" Width="45%">
                                                                </dx:GridViewDataTextColumn>
                                                            </Columns>
                                                        </dx:GridViewBandColumn>
                                                        <dx:GridViewDataTextColumn FieldName="ID_UCO" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn Caption="CERRADO" FieldName="RECINTO_CERRADO" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="4">
                                                            <PropertiesTextEdit EnableFocusedStyle="False">
                                                            </PropertiesTextEdit>
                                                        </dx:GridViewDataTextColumn>
                                                    </Columns>
                                                    <SettingsSearchPanel CustomEditorID="tbToolbarSearch" Visible="True" />
                                                    <SettingsBehavior AllowSelectByRowClick="True" />
                                                    <SettingsExport EnableClientSideExportAPI="true" ExcelExportMode="DataAware" />
                                                    <Styles Header-Wrap="True">
                                                        <Header Wrap="True">
                                                        </Header>
                                                    </Styles>
                                                    <ClientSideEvents ToolbarItemClick="OnToolbarItemClick" />
                                                </dx:ASPxGridView>
                                                <asp:SqlDataSource ID="sqlRecinto" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SP_QA_ACC_PLT_BUSCAR_RECINTOS" SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                        <asp:SessionParameter Name="ID_ACC_PLT" SessionField="ID_ACC_PLT" Type="Int64" />
                                                        <asp:Parameter DefaultValue="1" Name="SOLO_PEND" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </dx:ContentControl>
                                        </ContentCollection>
                                    </dx:TabPage>
                                </TabPages>
                                <Border BorderColor="#17649A" />
                            </dx:ASPxPageControl>
                        </div>
                                                    </DetailRow>
                                                </Templates>
                                                <SettingsPager EnableAdaptivity="true" />

                                                <Settings ShowFooter="true" />
                                                <SettingsBehavior AllowFocusedRow="true" />
      
                                                <SettingsSearchPanel CustomEditorID="tbToolbarSearch" />

                                                <SettingsExport EnableClientSideExportAPI="true" ExcelExportMode="DataAware" />
      
                                                <Columns>
                                                    <dx:GridViewCommandColumn VisibleIndex="0" Width="1%">
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewBandColumn Caption="ACTIVIDADES CONTROL DE CALIDAD" VisibleIndex="1">
                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
                                                        <Columns>
                                                            <dx:GridViewDataTextColumn Caption="ID" FieldName="ID_ACC_PLT" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="0" Visible="False">
                                                                <EditFormSettings Visible="False" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="VER." FieldName="VERSION_ACC" ShowInCustomizationForm="True" VisibleIndex="2" Width="9%">
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="NOMBRE" FieldName="NOMBRE_ACC" ShowInCustomizationForm="True" VisibleIndex="3" Width="50%">
                                                                <CellStyle HorizontalAlign="Left" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="N°" FieldName="NUM_ACC" ShowInCustomizationForm="True" VisibleIndex="1" Width="10%">
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                           <%-- <dx:GridViewDataTextColumn FieldName="ETAPA" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="4" Width="30%">
                                                                <CellStyle HorizontalAlign="Left" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>--%>
                                                        </Columns>
                                                    </dx:GridViewBandColumn>
                                                    <dx:GridViewBandColumn Caption="RECINTOS" VisibleIndex="2" Visible="False">
                                                        <HeaderStyle BackColor="#17649A" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
                                                        <Columns>
                                                            <dx:GridViewDataTextColumn Caption="TOT" FieldName="UCO_TOT" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="0">
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="APRO." FieldName="UCO_APROB" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="1">
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="PEND." FieldName="UCO_PEND" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="2">
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                        </Columns>
                                                    </dx:GridViewBandColumn>
                                                    <dx:GridViewBandColumn Caption="REGISTROS DE CALIDAD" VisibleIndex="8" Visible="False">
                                                        <HeaderStyle BackColor="#17649A" ForeColor="White" />
                                                        <Columns>
                                                            <dx:GridViewDataTextColumn Caption="TOT." FieldName="REG_TOT" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="0">
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="APRO." FieldName="REG_APROB" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="1">
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="PEND." FieldName="REG_PEND" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="2">
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="RECH." FieldName="REG_RECHAZA" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="3">
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn> 
                                                        </Columns>
                                                    </dx:GridViewBandColumn>
                                                </Columns>

       
                                                <Styles Header-Wrap="True">
                                                    <Header Wrap="True">
                                                    </Header>
                                                </Styles>
       
                                            </dx:ASPxGridView>

                                            <asp:SqlDataSource ID="sqlCalidad" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" 
                                                  SelectCommand="SP_QA_ACC_PLT_BUSCAR_MULA" 
                                                SelectCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="ddlObra" Name="ID_OBR" PropertyName="Value" Type="Int64" />
                                                    <asp:Parameter DefaultValue="-1" Name="ID_ACC_PLT" Type="Int32" />
                                                    <asp:Parameter DefaultValue="1" Name="SOLO_PEND" Type="Int32" />
                                                </SelectParameters>
                                               
                                            </asp:SqlDataSource>

                                        </div>
                                        <div class="col-md-6">
                                            <label class="control-label">
                                          Listado de chekeo</label>
                                         
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




                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" DeleteCommand="DELETE FROM [QA_ACC_REG_CHECKLIST] WHERE [ID_REG_CHK] = @ID_REG_CHK" InsertCommand="INSERT INTO [QA_ACC_REG_CHECKLIST] ([ID_ACC_REG], [ESPECIFICACION_CHK], [OBSERVACION_CHK], [ESTADO_APROBACION]) VALUES (@ID_ACC_REG, @ESPECIFICACION_CHK, @OBSERVACION_CHK, @ESTADO_APROBACION)" SelectCommand="SELECT [ID_REG_CHK], [ID_ACC_REG], [ESPECIFICACION_CHK], [OBSERVACION_CHK], [ESTADO_APROBACION] FROM [QA_ACC_REG_CHECKLIST] WHERE ([ID_ACC_REG] = @ID_ACC_REG)" UpdateCommand="UPDATE [QA_ACC_REG_CHECKLIST] SET [ID_ACC_REG] = @ID_ACC_REG, [ESPECIFICACION_CHK] = @ESPECIFICACION_CHK, [OBSERVACION_CHK] = @OBSERVACION_CHK, [ESTADO_APROBACION] = @ESTADO_APROBACION WHERE [ID_REG_CHK] = @ID_REG_CHK">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="ID_REG_CHK" Type="Int32" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="ID_ACC_REG" Type="Int32" />
                                                    <asp:Parameter Name="ESPECIFICACION_CHK" Type="String" />
                                                    <asp:Parameter Name="OBSERVACION_CHK" Type="String" />
                                                    <asp:Parameter Name="ESTADO_APROBACION" Type="Int16" />
                                                </InsertParameters>
                                                <SelectParameters>
                                                    <asp:SessionParameter Name="ID_ACC_REG" SessionField="ID_ACC_REG" Type="Int32" />
                                                </SelectParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="ESPECIFICACION_CHK" Type="String" />
                                                    <asp:Parameter Name="ID_ACC_REG" Type="Int32" />
                                                    <asp:Parameter Name="OBSERVACION_CHK" Type="String" />
                                                    <asp:Parameter Name="ESTADO_APROBACION" Type="Int16" />
                                                    <asp:Parameter Name="ID_REG_CHK" Type="Int32" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                            <dx:ASPxGridView ID="grillaLista" runat="server" AutoGenerateColumns="False" ClientInstanceName="detailGridView" DataSourceID="SqlDataSource2" EnableTheming="True" KeyFieldName="ID_REG_CHK" OnCustomCallback="grillaLista_CustomCallback"  Theme ="Office2010Silver" Width="100%">
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
                                                <SettingsEditing Mode="Batch">
                                                    <BatchEditSettings AllowRegularDataItemTemplate="True" />
                                                </SettingsEditing>
                                                <Settings ShowFooter="True" ShowGroupButtons="False" />
                                                <SettingsBehavior AllowFixedGroups="True" AutoExpandAllGroups="True" />
                                                <SettingsDataSecurity AllowDelete="False" AllowInsert="False" />
                                                <SettingsPopup>
                                                    <EditForm HorizontalAlign="Center" Modal="True" Width="100%">
                                                    </EditForm>
                                                    <CustomizationWindow MinHeight="100%" MinWidth="100%" Width="100%" />
                                                </SettingsPopup>
                                                <Columns>
                                                    <dx:GridViewCommandColumn ButtonRenderMode="Button" ButtonType="Button" ShowInCustomizationForm="True" VisibleIndex="0" Width="2%">
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewBandColumn Caption="EDICIÓN" ShowInCustomizationForm="True" VisibleIndex="7">
                                                        <Columns>
                                                            <dx:GridViewDataTextColumn FieldName="TIPO_DATO_ENT" ShowInCustomizationForm="True" Visible="False" VisibleIndex="4">
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="DATO ENTRADA" FieldName="DATO_ENT" ShowInCustomizationForm="True" VisibleIndex="0" Width="2%">
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataComboBoxColumn Caption="ESTADO" FieldName="ESTADO_APROBACION" ShowInCustomizationForm="True" VisibleIndex="1" Width="10%">
                                                                <PropertiesComboBox DropDownStyle="DropDown" TextField="ESTADO_APROBACION" ValueField="ESTADO_APROBACION">
                                                                    <Items>
                                                                        <dx:ListEditItem Text=" " Value=" 0" />
                                                                        <dx:ListEditItem Text="APROBADO" Value="1" />
                                                                        <dx:ListEditItem Text="RECHAZADO" Value="2" />
                                                                    </Items>
                                                                </PropertiesComboBox>
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataComboBoxColumn>
                                                            <dx:GridViewDataMemoColumn Caption="OBSERVACIÓN" FieldName="OBSERVACION_CHK" ShowInCustomizationForm="True" VisibleIndex="2" Width="28%">
                                                                <PropertiesMemoEdit Height="200px" MaxLength="500">
                                                                </PropertiesMemoEdit>
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                <CellStyle HorizontalAlign="Left" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataMemoColumn>
                                                            <dx:GridViewDataTextColumn Caption="documento" ShowInCustomizationForm="True" Visible="False" VisibleIndex="3" Width="10%">
                                                                <EditItemTemplate>
                                                                    <dx:ASPxUploadControl ID="ASPxUploadControl1" runat="server" ClientInstanceName="uc" FileUploadMode="OnPageLoad" OnFileUploadComplete="ASPxUploadControl1_FileUploadComplete" UploadMode="Advanced" Width="280px">
                                                                        <ClientSideEvents FileUploadComplete="OnFileUploadComplete" TextChanged="OnTextChanged" />
                                                                    </dx:ASPxUploadControl>
                                                                </EditItemTemplate>
                                                            </dx:GridViewDataTextColumn>
                                                        </Columns>
                                                    </dx:GridViewBandColumn>
                                                    <dx:GridViewBandColumn Caption="INFORMACIÓN" ShowInCustomizationForm="True" VisibleIndex="1">
                                                        <Columns>
                                                            <dx:GridViewDataTextColumn Caption="ID" FieldName="ID_REG_CHK" ShowInCustomizationForm="True" Visible="False" VisibleIndex="0" Width="5%">
                                                                <EditFormSettings Visible="False" />
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="ITEM" ShowInCustomizationForm="True" VisibleIndex="1" Width="3%">
                                                                <EditCellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </EditCellStyle>
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="ESPECIFICACIÓN" FieldName="NOMBRE_CHK" ShowInCustomizationForm="True" VisibleIndex="2" Width="45%">
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="NOMBRE_GRP_CHK" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="3">
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="CRITERIO DE CONTROL" FieldName="CRITERIO_CONTROL" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="4" Width="5%">
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="ESPECIFICACIÓN" FieldName="ESPECIFICACION_CHK" ShowInCustomizationForm="True" Visible="False" VisibleIndex="5" Width="15%">
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                            </dx:GridViewDataTextColumn>
                                                        </Columns>
                                                    </dx:GridViewBandColumn>
                                                </Columns>
                                                <Styles>
                                                    <GroupRow Font-Bold="True">
                                                    </GroupRow>
                                                    <GroupPanel BackColor="#0066FF" Font-Bold="True" ForeColor="White">
                                                    </GroupPanel>
                                                    <BatchEditCell BackColor="#FFCC00">
                                                    </BatchEditCell>
                                                </Styles>
                                            </dx:ASPxGridView>




                                     </div>



					                 </div>
                                 </contenttemplate>
       <Triggers>
         <asp:AsyncPostBackTrigger ControlID="ddlObra" />


       </Triggers>
                            </asp:UpdatePanel>
                          
                       
				    </div>
			    </div>
		    </div> 
           <dx:ASPxPopupControl ID="popup" ClientInstanceName="popup" runat="server" AllowDragging="true"
        HeaderText="Photo & Notes" Width="320">
        <ContentCollection>
            <dx:PopupControlContentControl ID="PopupControlContentControl1" runat="server">
              <a>AAAAA</a>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
		 </div>   
</asp:Content>

