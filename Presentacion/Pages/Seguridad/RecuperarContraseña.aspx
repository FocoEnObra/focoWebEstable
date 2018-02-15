<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<!DOCTYPE html>
<!--[if IE 8]>         <html class="ie8"> <![endif]-->
<!--[if IE 9]>         <html class="ie9 gt-ie8"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="gt-ie8 gt-ie9 not-ie"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>Sign Up - PixelAdmin</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

	<!-- Open Sans font from Google CDN -->
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300&subset=latin" rel="stylesheet" type="text/css">

<%--	<!-- Pixel Admin's stylesheets -->
	<link href="assets/stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="assets/stylesheets/pixel-admin.min.css" rel="stylesheet" type="text/css">
	<link href="assets/stylesheets/pages.min.css" rel="stylesheet" type="text/css">
	<link href="assets/stylesheets/rtl.min.css" rel="stylesheet" type="text/css">
	<link href="assets/stylesheets/themes.min.css" rel="stylesheet" type="text/css">--%>

    <meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<title>Foco En Obra | Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300&subset=latin" rel="stylesheet" type="text/css"/>
	<link href="../../assets/stylesheets/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="../../assets/stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../assets/stylesheets/pages.css" rel="stylesheet" type="text/css"/>
    <link href="../../assets/stylesheets/pages.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../assets/stylesheets/pixel-admin.css" rel="stylesheet" type="text/css"/>
    <link href="../../assets/stylesheets/pixel-admin.min.css" rel="stylesheet" type="text/css">
    <link href="../../assets/stylesheets/themes.css" rel="stylesheet" type="text/css"/>

	<!--[if lt IE 9]>
		<script src="assets/javascripts/ie.min.js"></script>
	<![endif]-->


<!-- $DEMO =========================================================================================

	Remove this section on production
-->
	<style>
		#signup-demo {
			position: fixed;
			right: 0;
			bottom: 0;
			z-index: 10000;
			background: rgba(0,0,0,.6);
			padding: 6px;
			border-radius: 3px;
		}
		#signup-demo img { cursor: pointer; height: 40px; }
		#signup-demo img:hover { opacity: .5; }
		#signup-demo div {
			color: #fff;
			font-size: 10px;
			font-weight: 600;
			padding-bottom: 6px;
		}
	</style>
<!-- / $DEMO -->

</head>


<!-- 1. $BODY ======================================================================================
	
	Body

	Classes:
	* 'theme-{THEME NAME}'
	* 'right-to-left'     - Sets text direction to right-to-left
-->
<body class="theme-default page-signup">
	<div id="page-signup-bg" style="background-image: url('../../../assets/images/fondo.png'); width: 100%; height: 100%;">>
		<div class="overlay"></div>
		
	</div>
	<!-- / Page background -->

	<!-- Container -->
	<div class="signup-container">
		<!-- Header -->
		<div class="signup-header">
			<a href="index.html" class="logo">
				<%--<img src="assets/demo/logo-big.png" alt="" style="margin-top: -5px;">&nbsp;--%>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/assets/images/focoVerde.png" style="margin-top: -5px;"/>&nbsp; <br />
			
			</a> <!-- / .logo -->
			<div class="slogan">
				Gestión por compromiso 
			</div> <!-- / .slogan -->
		</div>
		<!-- / Header -->

		<!-- Form -->
		<div class="signup-form">
			<form id="signup_form_id" runat="server">
				
				<div class="signup-text">
					<span>- Recupera tu clave de acceso - </span>
				</div>

				<%--<div class="form-group w-icon">
					<input type="text" name="signup_name" id="name_id" class="form-control input-lg" placeholder="Nombre completo">
					<span class="fa fa-info signup-form-icon"></span>
				</div>--%>

				<div class="form-group w-icon">
					<input type="text" name="signup_email" id="email_id" class="form-control input-lg" placeholder="Correo electronico">
					<span class="fa fa-envelope signup-form-icon"></span>
				</div>

			<%--	<div class="form-group w-icon">
					<input type="text" name="signup_username" id="username_id" class="form-control input-lg" placeholder="Usuario">
					<span class="fa fa-user signup-form-icon"></span>
				</div>--%>
               <div class="form-actions">
                   <%--<dx:BootstrapButton ID="btnRwecuoerar" runat="server" AutoPostBack="false"  CssClasses-Text="signup-btn bg-primary"   Text ="Recuperar Clave"></dx:BootstrapButton>--%>
					<asp:Button ID="btnRecuperar" runat="server" class="ignup-btn bg-primary" Text="Recuperar clave" />

				</div>
			</form>
			<!-- / Form -->

			<%--<!-- "Sign In with" block -->
			<div class="signup-with">
				<!-- Facebook -->
				<a href="index.html" class="signup-with-btn" style="background:#4f6faa;background:rgba(79, 111, 170, .8);">Sign Up with <span>Facebook</span></a>
			</div>--%>
			<!-- / "Sign In with" block -->
		</div>
		<!-- Right side -->
	</div>

		<div class="have-account">
		se te enviara un mail con tu contraseña para que puedas ingresar a nuestros sistemas 
	</div>


<!-- Get jQuery from Google CDN -->
<!--[if !IE]> -->
	<script type="text/javascript"> window.jQuery || document.write('<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js">' + "<" + "/script>"); </script>
<!-- <![endif]-->
<!--[if lte IE 9]>
	<script type="text/javascript"> window.jQuery || document.write('<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js">'+"<"+"/script>"); </script>
<![endif]-->


<!-- Pixel Admin's javascripts -->
<script src="assets/javascripts/bootstrap.min.js"></script>
<script src="assets/javascripts/pixel-admin.min.js"></script>

<script type="text/javascript">
    // Resize BG
    init.push(function () {
        var $ph = $('#page-signup-bg'),
            $img = $ph.find('> img');

        $(window).on('resize', function () {
            $img.attr('style', '');
            if ($img.height() < $ph.height()) {
                $img.css({
                    height: '100%',
                    width: 'auto'
                });
            }
        });

        $("#signup-form_id").validate({ focusInvalid: true, errorPlacement: function () { } });

        // Validate name
        $("#name_id").rules("add", {
            required: true,
            minlength: 1
        });

        // Validate email
        $("#email_id").rules("add", {
            required: true,
            email: true
        });

        // Validate username
        $("#username_id").rules("add", {
            required: true,
            minlength: 3
        });

        // Validate password
        $("#password_id").rules("add", {
            required: true,
            minlength: 6
        });

        // Validate confirm checkbox
        $("#confirm_id").rules("add", {
            required: true
        });
    });

    window.PixelAdmin.start(init);
</script>

</body>
</html>
