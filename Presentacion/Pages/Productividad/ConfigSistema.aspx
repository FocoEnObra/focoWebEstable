﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="ConfiguracionSistema.aspx.vb" Inherits="Presentacion.ConfiguracionSistema" %>
<%@ register assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
      <style>
        .dropzone-box{min-height:100px}
        .dropzone-box .fa.fa-cloud-upload{display:none}
        .form-horizontal .has-feedback .form-control-feedback{right:0px;}
        .has-feedback:not(.form-group) .form-control-feedback {top: 5px;}
      </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
   <div class="panel">  
                    <div class="panel-heading">
						<span class="panel-title" style="color:#17649A"><b>CONFIGURACIÓN GENERAL DEL SISTEMA</b></span>
                        <div class="panel-heading-controls">
							 <span class="panel-heading-text">
                                 <button class="btn btn-xs btn-info"><i class="fa fa-floppy-o fa-1x" aria-hidden="true" style="color:#f1f1f1"></i>&nbsp;GUARDAR CAMBIOS</button>
							</span> 
						</div>
                    </div>
				<div class="stat-panel">
					<div class="stat-row">
						<%--<div class="stat-cell col-sm-3 padding-sm-hr no-border-r valign-top bg-panel">
							<h4 class="padding-sm no-padding-t padding-xs-hr">OPCIONES</h4>
							<ul class="list-group no-margin">
								<li class="list-group-item no-border-hr padding-xs-hr no-bg no-border-radius">
									<a href="#"style="font-size:14px"><strong><i class="fa fa fa-building-o text-primary"></i>&nbsp;&nbsp;&nbsp;EMPRESA</strong></a> 
								</li> 
								<li class="list-group-item no-border-hr padding-xs-hr no-bg">
									<a href="ConfiguracionSistemaOp1.aspx"><i class="fa fa-gear text-primary"></i>&nbsp;&nbsp; 
									PROYECTOS</a> 
								</li>
								<li class="list-group-item no-border-hr no-border-b padding-xs-hr no-bg">
									<a href="ConfiguracionSistemaOp2.aspx"><i class="fa fa-map-marker text-primary"></i>&nbsp;&nbsp;&nbsp; 
									UBICACIONES</a> 
								</li>
                                <li class="list-group-item no-border-hr padding-xs-hr no-bg no-border-radius">
									<a href="ConfiguracionSistemaOp3.aspx"><i class="fa  fa-calendar text-primary"></i>&nbsp;&nbsp;
                                    CALENDARIO</a> 
								</li>
								<li class="list-group-item no-border-hr padding-xs-hr no-bg">
									<a href="ConfiguracionSistemaOp4.aspx"><i class="fa fa-user text-primary"></i>&nbsp;&nbsp;&nbsp; 
									SUPERVISORES</a> 
								</li> 
                                <li class="list-group-item no-border-hr padding-xs-hr no-bg">
									<a href="ConfiguracionSistemaOp5.aspx"><i class="fa fa-book text-primary"></i>&nbsp;&nbsp; 
									ÁREA/ESPECIALIDAD/CARGO</a> 
								</li>
                                	<li class="list-group-item no-border-hr padding-xs-hr no-bg">
									<a href="ConfiguracionSistemaOp6.aspx"><i class="fa fa-flag text-primary"></i>&nbsp;&nbsp; 
									ACTIVIDADES DE CONTROL</a> 
								</li>
                                	<li class="list-group-item no-border-hr padding-xs-hr no-bg">
									<a href="ConfiguracionSistemaOp7.aspx"><i class="fa fa-tachometer text-primary"></i>&nbsp;&nbsp; 
									UNIDADES DE MEDIDA</a> 
								</li>
                                	<li class="list-group-item no-border-hr padding-xs-hr no-bg">
									<a href="ConfiguracionSistemaOp8.aspx"><i class="fa fa-lightbulb-o text-primary"></i>&nbsp;&nbsp;&nbsp; 
									ETAPAS CONSTRUCTIVAS</a> 
								</li>
								
							</ul>
						</div>--%>
						<div class="stat-cell col-sm-9 padding-sm ">
                            <%--<div class="alert alert-dark alert-info">
							<button type="button" class="close" data-dismiss="alert">×</button>
							<strong>Nota:</strong> Recuerda guardar los cambios que vayas realizando!
						</div>--%>
                            <h4><strong><i class="fa fa fa-building-o text-primary"></i>&nbsp;&nbsp;EMPRESA</strong></h4>
                            <p>En esta sección puedes editar la información relacionada con tu empresa.</p><hr />
							<div class="panel-body bg-panel">
                                       

						<div class="row">
							<div class="col-sm-6">
								<div class="form-group no-margin-hr">
                                    <label class="control-label">Nombre Empresa</label>
                                    <div class="has-feedback">
									 <i class="fa fa-asterisk form-control-feedback"></i>
									<input type="text" name="nombreEmpresa" class="form-control input-sm">
                                   </div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group no-margin-hr">
									<label class="control-label">Giro</label>
									<input type="text" name="giro" class="form-control input-sm">
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group no-margin-hr">
									<label class="control-label">RUT</label>
                                    <input class="form-control input-sm" type="text" id="rut" name="rut" required oninput="checkRut(this)" maxlength="10" <%--onkeypress="validate(event)--%>">
								</div>
							</div>
                            <div class="col-sm-6">
								<div class="form-group no-margin-hr">
									<label class="control-label">Correo Electrónico</label>
									<input type="email" name="email" class="form-control input-sm">
								</div>
							</div>
						</div>
                        <div class="row">
							<div class="col-sm-6">
								<div class="form-group no-margin-hr">
									<label class="control-label">Dirección</label>
									<input type="text" name="adress" class="form-control input-sm">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group no-margin-hr">
									<label class="control-label">Teléfono</label>
                                    <div class="has-feedback">
                                        <input type="text" class="form-control input-sm" id="phone" name="phone" placeholder=" ">
								</div></div>
							</div>
						</div>
                    <div class="row">
                        <div class="panel-body bg-panel">
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
				<!-- / Javascript -->
						<div id="dropzonejs-example" class="dropzone-box">
                            <i class="fa fa-cloud-upload"></i>
							<div class="dz-default dz-message" >
								Arrastra tu logo<br><span class="dz-text-small">o presiona acá para seleccionar</span>
							</div>
						</div>
					</div>
                </div>
					</div>
                            <hr />
                        <%--<div class="col-md-12">
                           <p class="pull-right">
                                    <span id="paso1btn" class="fa-stack fa-lg" style="margin-top:-10px;cursor:pointer">
                                    <i class="fa fa-arrow-circle-right fa-2x" aria-hidden="true" style="color:#008080"></i>
                                    </span> Guardar Cambios

                           </p>
                        </div>--%>
				    </div>
			    </div>
		    </div> 
		 </div>   
</asp:Content>