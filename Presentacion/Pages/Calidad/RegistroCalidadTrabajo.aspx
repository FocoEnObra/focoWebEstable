<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="RegistroCalidadTrabajo.aspx.vb" Inherits="Presentacion.Formulario_web112" %>
<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxTreeList" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
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

   .list-group-item {
    position: relative;
    display: block;
    padding: 10px 15px;
    margin-bottom: -1px;
    background-color: #f3f3f3;
    border: 1px solid #ddd;
}

    </style>

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
						<img src="../../assets/images/logoovalle.png" />
					</div><br>
				
				</div>
				<div class="menu-content top" id="menu-content-demo">
				<div>
					<div class="text-bg ">
                     </div>  
					<div class="btn-group btn-group-lg">
						<a href="#" class="btn btn-group-lg  btn-outline btn-warning"><i class="fas fa-angle-left"></i></a>
						<a href="#" class="btn btn-group-lg btn-outline  btn-warning"><i class="fas fa-save"></i></a>
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
			<div class="right-col">

				<hr class="profile-content-hr no-grid-gutter-h">
				
				<div class="profile-content">

					<ul id="profile-tabs" class="nav nav-tabs">
						<li class="active">
							<a href="#profile-tabs-board" data-toggle="tab"><i class ="fas fa-map-marker-alt"></i>&nbsp;&nbsp;Protocolo - lista de chequeo </a>
						</li>
					</ul>

					<div class="tab-content tab-content-bordered panel-padding">
						<div class="tab-pane panel no-padding no-border fade in active" id="profile-tabs-board">
                              
                            <dx:ASPxGridView ID="grilla_check" runat="server" AutoGenerateColumns="False" DataSourceID="sqlCheckList" EnableTheming="True" KeyFieldName="ID_REG_CHK" Theme="MaterialCompact" Width="100%">
                                <SettingsPager Mode="EndlessPaging" PageSize="50" Position="Top">
                                </SettingsPager>
                                <SettingsEditing Mode="Batch">
                                </SettingsEditing>
                                <Settings GridLines="Horizontal" VerticalScrollableHeight="500" VerticalScrollBarMode="Auto" VerticalScrollBarStyle="VirtualSmooth" />
                                <SettingsBehavior AllowFixedGroups="True" AutoExpandAllGroups="True" />
                                <Columns>
                                    <dx:GridViewCommandColumn VisibleIndex="0">
                                    </dx:GridViewCommandColumn>
                                    <dx:GridViewDataTextColumn Caption="Reg." FieldName="ID_REG_CHK" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="1" Width="5%" Visible="False">
                                        <EditFormSettings Visible="False" />
                                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="DESCRIPCIÓN" FieldName="ITEM" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="3" Width="35%">
                                        <HeaderStyle HorizontalAlign="Justify" VerticalAlign="Middle" />
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="GRUPO" FieldName="NOMBRE_GRP_CHK" GroupIndex="0" ReadOnly="True" ShowInCustomizationForm="True" SortIndex="0" SortOrder="Descending" VisibleIndex="2">
                                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="NOMBRE_CHK" ShowInCustomizationForm="True" Visible="False" VisibleIndex="4">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="CRITERIOS" FieldName="CRITERIO_CONTROL" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="6" Width="20%">
                                        <HeaderStyle HorizontalAlign="Justify" VerticalAlign="Middle" />
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="ESPECIFICACIÓN" FieldName="ESPECIFICACION_CHK" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="5" Width="50%">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="ESTADO_APROBACION" ShowInCustomizationForm="True" Visible="False" VisibleIndex="7">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="TIPO_DATO_ENT" ShowInCustomizationForm="True" Visible="False" VisibleIndex="8">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="DATO_ENT" ShowInCustomizationForm="True" Visible="False" VisibleIndex="9">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="OBSERVACION_CHK" ShowInCustomizationForm="True" Visible="False" VisibleIndex="10">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewBandColumn Caption="ESTADOS DE REVISIÓN" ShowInCustomizationForm="True" VisibleIndex="11">
                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        <Columns>
                                            <dx:GridViewDataCheckColumn Caption="APROBADO" FieldName="ESTADO_APROBACION" ShowInCustomizationForm="True" VisibleIndex="0" Width="10%">
                                                <PropertiesCheckEdit AllowGrayed="True">
                                                </PropertiesCheckEdit>
                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                </CellStyle>
                                            </dx:GridViewDataCheckColumn>
                                            <dx:GridViewDataCheckColumn Caption="RECHAZADO" FieldName="ESTADO_APROBACION" ShowInCustomizationForm="True" VisibleIndex="1" Width="10%">
                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                </CellStyle>
                                            </dx:GridViewDataCheckColumn>
                                            <dx:GridViewDataCheckColumn Caption="NO APLICA" FieldName="ESTADO_APROBACION" ShowInCustomizationForm="True" VisibleIndex="2" Width="10%">
                                                <PropertiesCheckEdit AllowGrayedByClick="False" ValueChecked="1" ValueGrayed="-1" ValueType="System.Int32" ValueUnchecked="0">
                                                </PropertiesCheckEdit>
                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                </CellStyle>
                                            </dx:GridViewDataCheckColumn>
                                        </Columns>
                                    </dx:GridViewBandColumn>
                                </Columns>
                                <Styles>
                                    <SelectedRow BackColor="#FFFFCC">
                                    </SelectedRow>
                                </Styles>
                            </dx:ASPxGridView>

                            <asp:SqlDataSource ID="sqlCheckList" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SP_QA_ACC_REG_LISTA_CHEQUEO" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="ID_ACC_REG" QueryStringField="idRegistro" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                           </div>
                        </div>
            </div>
                </div>

</div>
    </div>
    
      
</asp:Content>