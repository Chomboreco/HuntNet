<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>HuntNet - ASR</title>

        <!-- Bootstrap -->
        <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- iCheck -->
        <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
        <!-- bootstrap-progressbar -->
        <link href="../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
        <!-- jVectorMap -->
        <link href="css/maps/jquery-jvectormap-2.0.3.css" rel="stylesheet"/>

        <!-- Custom Theme Style -->
        <link href="css/custom.css" rel="stylesheet">
    </head>

    <body class="nav-md">
        <div class="container body">
            <div class="main_container">
                <div class="col-md-3 left_col">
                    <div class="left_col scroll-view">
                        <div class="navbar nav_title" style="border: 0;">
                            <a href="index.jsp" class="site_title"><i class="fa fa-adn"></i> <span>HuntNet</span></a>
                        </div>

                        <div class="clearfix"></div>

                        <!-- menu profile quick info -->
                        <div class="profile">
                            <div class="profile_pic">
                                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
                            </div>
                            <div class="profile_info">
                                <span>Welcome,</span>
                                <h2>John Doe</h2>
                            </div>
                        </div>
                        <!-- /menu profile quick info -->

                        <br />

                        <!-- sidebar menu -->
                        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                            <div class="menu_section">
                                <h3>HuntNet</h3>
                                <ul class="nav side-menu">
                                    <li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="index.jsp">Inicio</a></li>
                                            <li><a href="Dispositivo?action=graficas">Gráficas</a></li>
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-laptop"></i> Dispositivos <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="nuevoDispositivo.jsp">Agregar dispositivo</a>
                                            </li>
                                            <li><a href="Dispositivo?action=lista">Lista completa</a>
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-question-circle"></i> HuntNet <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="info.jsp">Información de HuntNet</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- /sidebar menu -->

                        <!-- /menu footer buttons -->
                        <div class="sidebar-footer hidden-small">
                            <a data-toggle="tooltip" data-placement="top" title="Settings">
                                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                            </a>
                            <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                            </a>
                            <a data-toggle="tooltip" data-placement="top" title="Lock">
                                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                            </a>
                            <a data-toggle="tooltip" data-placement="top" title="Logout">
                                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                            </a>
                        </div>
                        <!-- /menu footer buttons -->
                    </div>
                </div>

                <!-- top navigation -->
                <div class="top_nav">

                    <div class="nav_menu">
                        <nav class="" role="navigation">
                            <div class="nav toggle">
                                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                            </div>

                            <ul class="nav navbar-nav navbar-right">
                                <li class="">
                                    <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                        <img src="images/img.jpg" alt="">John Doe
                                        <span class=" fa fa-angle-down"></span>
                                    </a>
                                    <ul class="dropdown-menu dropdown-usermenu pull-right">
                                        <li><a href="javascript:;">  Profile</a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <span class="badge bg-red pull-right">50%</span>
                                                <span>Settings</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">Help</a>
                                        </li>
                                        <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                                        </li>
                                    </ul>
                                </li>

                                <li role="presentation" class="dropdown">
                                    <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                                        <i class="fa fa-envelope-o"></i>
                                        <span class="badge bg-green">6</span>
                                    </a>
                                    <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                                        <li>
                                            <a>
                                                <span class="image">
                                                    <img src="images/img.jpg" alt="Profile Image" />
                                                </span>
                                                <span>
                                                    <span>John Smith</span>
                                                    <span class="time">3 mins ago</span>
                                                </span>
                                                <span class="message">
                                                    Film festivals used to be do-or-die moments for movie makers. They were where...
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a>
                                                <span class="image">
                                                    <img src="images/img.jpg" alt="Profile Image" />
                                                </span>
                                                <span>
                                                    <span>John Smith</span>
                                                    <span class="time">3 mins ago</span>
                                                </span>
                                                <span class="message">
                                                    Film festivals used to be do-or-die moments for movie makers. They were where...
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a>
                                                <span class="image">
                                                    <img src="images/img.jpg" alt="Profile Image" />
                                                </span>
                                                <span>
                                                    <span>John Smith</span>
                                                    <span class="time">3 mins ago</span>
                                                </span>
                                                <span class="message">
                                                    Film festivals used to be do-or-die moments for movie makers. They were where...
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a>
                                                <span class="image">
                                                    <img src="images/img.jpg" alt="Profile Image" />
                                                </span>
                                                <span>
                                                    <span>John Smith</span>
                                                    <span class="time">3 mins ago</span>
                                                </span>
                                                <span class="message">
                                                    Film festivals used to be do-or-die moments for movie makers. They were where...
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="text-center">
                                                <a href="inbox.html">
                                                    <strong>See All Alerts</strong>
                                                    <i class="fa fa-angle-right"></i>
                                                </a>
                                            </div>
                                        </li>
                                    </ul>
                                </li>

                            </ul>
                        </nav>
                    </div>

                </div>
                <!-- /top navigation -->


                <!-- page content -->
                <div class="right_col" role="main">
                    <div class="">
                        <div class="row tile_count">
                            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                                <span class="count_top"><i class="fa fa-envelope"></i> TCP</span>
                                <div class="count green tcp">0</div>
                                <span class="count_bottom"><i class="fa fa-exchange"></i> Paquetes TCP</span>
                            </div>
                            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                                <span class="count_top"><i class="fa fa-envelope"></i> UDP</span>
                                <div class="count green udp">0</div>
                                <span class="count_bottom"><i class="fa fa-exchange"></i> Paquetes UDP</span>
                            </div>
                            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                                <span class="count_top"><i class="fa fa-envelope"></i> Paquetes ICMP</span>
                                <div class="count green icmp">0</div>
                                <span class="count_bottom"><i class="fa fa-exchange"></i> Paquetes ICMP</span>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Ver dispositivo <small>adetalles de dispositivo</small></h2>

                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">
                                        <br />
                                        <c:set var="device" value="${requestScope.device}"/>
                                        <form id="dispositivo-form" data-parsley-validate class="form-horizontal form-label-left" method="post" action="Dispositivo?action=nuevo">
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="ip">IP <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="text" value="<c:out value="${device.ip}"/>" id="ip" name="ip" required="required" class="form-control col-md-7 col-xs-12" disabled="disabled">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="comunidad">Comunidad <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="text" value="<c:out value="${device.community}"/>" id="comunidad" name="comunidad" required="required" class="form-control col-md-7 col-xs-12" disabled="disabled">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="sysdescriptor">Sistema operativo <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="text" value="<c:out value="${device.sysdescriptor}"/>" id="sysdescriptor" name="sysdescriptor" required="required" class="form-control col-md-7 col-xs-12" disabled="disabled">
                                                </div>
                                            </div>
                                            <br>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="systemUpTime">System Up <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="text" value="<c:out value="${device.systemUpTime}"/>" id="systemUpTime" name="systemUpTime" required="required" class="form-control col-md-7 col-xs-12" disabled="disabled">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="interfacesNum"># Interfaces <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="text" value="<c:out value="${device.interfacesNum}"/>" id="interfacesNum" name="interfacesNum" required="required" class="form-control col-md-7 col-xs-12" disabled="disabled">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="x_panel tile">
                                    <div class="x_title">
                                        <h2>CPU</h2>
                                        <ul class="nav navbar-right panel_toolbox">

                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">
                                        <h4>Uso de la CPU</h4>

                                        <div class="widget_summary">
                                            <div class="w_left w_10">
                                                <span>Core 1</span>
                                            </div>
                                            <div class="w_center w_80">
                                                <div class="progress">
                                                    <div class="progress-bar bg-green core1wid" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"> 
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="w_right w_10">
                                                <span class="core1bar">0 % en uso</span>
                                            </div>
                                        </div>
                                        <div class="widget_summary">
                                            <div class="w_left w_10">
                                                <span>Core 2</span>
                                            </div>
                                            <div class="w_center w_80">
                                                <div class="progress">
                                                    <div class="progress-bar bg-green core2wid" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="w_right w_10">
                                                <span class="core2bar">0 % en uso</span>
                                            </div>
                                        </div>
                                        <div class="widget_summary">
                                            <div class="w_left w_10">
                                                <span>Core 3</span>
                                            </div>
                                            <div class="w_center w_80">
                                                <div class="progress">
                                                    <div class="progress-bar bg-green core3wid" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="w_right w_10">
                                                <span class="core3bar">0 % en uso</span>
                                            </div>
                                        </div>
                                        <div class="widget_summary">
                                            <div class="w_left w_10">
                                                <span>Core 4</span>
                                            </div>
                                            <div class="w_center w_80">
                                                <div class="progress">
                                                    <div class="progress-bar bg-green core4wid" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="w_right w_10">
                                                <span class="core4bar">0 % en uso</span>
                                            </div>
                                        </div>
                                        <div class="widget_summary">
                                            <div class="w_left w_10">
                                                <span>Core 5</span>
                                            </div>
                                            <div class="w_center w_80">
                                                <div class="progress">
                                                    <div class="progress-bar bg-green core5wid" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="w_right w_10">
                                                <span class="core5bar">0 % en uso</span>
                                            </div>
                                        </div>
                                        <div class="widget_summary">
                                            <div class="w_left w_10">
                                                <span>Core 6</span>
                                            </div>
                                            <div class="w_center w_80">
                                                <div class="progress">
                                                    <div class="progress-bar bg-green core6wid" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="w_right w_10">
                                                <span class="core6bar">0 % en uso</span>
                                            </div>
                                        </div>
                                        <div class="widget_summary">
                                            <div class="w_left w_10">
                                                <span>Core 7</span>
                                            </div>
                                            <div class="w_center w_80">
                                                <div class="progress">
                                                    <div class="progress-bar bg-green core7wid" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="w_right w_10">
                                                <span class="core7bar">0 % en uso</span>
                                            </div>
                                        </div>
                                        <div class="widget_summary">
                                            <div class="w_left w_10">
                                                <span>Core 8</span>
                                            </div>
                                            <div class="w_center w_80">
                                                <div class="progress">
                                                    <div class="progress-bar bg-green core8wid" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="w_right w_10">
                                                <span class="core8bar">0 % en uso</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /page content -->

                <!-- footer content -->
                <footer>
                    <div class="pull-right">
                        Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
                    </div>
                    <div class="clearfix"></div>
                </footer>
                <!-- /footer content -->
            </div>
        </div>

        <!-- jQuery -->
        <script src="../vendors/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- FastClick -->
        <script src="../vendors/fastclick/lib/fastclick.js"></script>
        <!-- NProgress -->
        <script src="../vendors/nprogress/nprogress.js"></script>
        <!-- Chart.js -->
        <script src="../vendors/Chart.js/dist/Chart.min.js"></script>
        <!-- gauge.js -->
        <script src="../vendors/berniii/gauge.js/dist/gauge.min.js"></script>
        <!-- bootstrap-progressbar -->
        <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
        <!-- iCheck -->
        <script src="../vendors/iCheck/icheck.min.js"></script>
        <!-- Skycons -->
        <script src="../vendors/skycons/skycons.js"></script>
        <!-- Flot -->
        <script src="../vendors/Flot/jquery.flot.js"></script>
        <script src="../vendors/Flot/jquery.flot.pie.js"></script>
        <script src="../vendors/Flot/jquery.flot.time.js"></script>
        <script src="../vendors/Flot/jquery.flot.stack.js"></script>
        <script src="../vendors/Flot/jquery.flot.resize.js"></script>
        <!-- Flot plugins -->
        <script src="js/flot/jquery.flot.orderBars.js"></script>
        <script src="js/flot/date.js"></script>
        <script src="js/flot/jquery.flot.spline.js"></script>
        <script src="js/flot/curvedLines.js"></script>
        <!-- jVectorMap -->
        <script src="js/maps/jquery-jvectormap-2.0.3.min.js"></script>
        <!-- bootstrap-daterangepicker -->
        <script src="js/moment/moment.min.js"></script>
        <script src="js/datepicker/daterangepicker.js"></script>
        <script src="js/bootbox.min.js" type="text/javascript"></script>
        <!-- jQuery -->
        <script src="../vendors/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- FastClick -->
        <script src="../vendors/fastclick/lib/fastclick.js"></script>
        <!-- NProgress -->
        <script src="../vendors/nprogress/nprogress.js"></script>
        <!-- Chart.js -->
        <script src="../vendors/Chart.js/dist/Chart.min.js"></script>
        <!-- gauge.js -->
        <script src="../vendors/berniii/gauge.js/dist/gauge.min.js"></script>
        <!-- bootstrap-progressbar -->
        <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
        <!-- iCheck -->
        <script src="../vendors/iCheck/icheck.min.js"></script>
        <!-- Skycons -->
        <script src="../vendors/skycons/skycons.js"></script>
        <!-- Flot -->
        <script src="../vendors/Flot/jquery.flot.js"></script>
        <script src="../vendors/Flot/jquery.flot.pie.js"></script>
        <script src="../vendors/Flot/jquery.flot.time.js"></script>
        <script src="../vendors/Flot/jquery.flot.stack.js"></script>
        <script src="../vendors/Flot/jquery.flot.resize.js"></script>
        <!-- Flot plugins -->
        <script src="js/flot/jquery.flot.orderBars.js"></script>
        <script src="js/flot/date.js"></script>
        <script src="js/flot/jquery.flot.spline.js"></script>
        <script src="js/flot/curvedLines.js"></script>
        <!-- jVectorMap -->
        <script src="js/maps/jquery-jvectormap-2.0.3.min.js"></script>
        <!-- bootstrap-daterangepicker -->
        <script src="js/moment/moment.min.js"></script>
        <script src="js/datepicker/daterangepicker.js"></script>

        <!-- Custom Theme Scripts -->
        <script src="js/custom.js"></script>

        <!-- AJAX CPU ------------------------------------>
        <script>
            function checkBar(core, clase) {
                if (core >= 20) {
                    $(clase).removeClass("bg-green");
                    $(clase).removeClass("bg-red");
                    $(clase).removeClass("bg-purple");
                    $(clase).addClass("bg-orange");

                    if (core >= 25) {
                        $(clase).removeClass("bg-orange");
                        $(clase).removeClass("bg-green");
                        $(clase).removeClass("bg-purple");
                        $(clase).addClass("bg-red");

                        if (core >= 30) {
                            $(clase).removeClass("bg-orange");
                            $(clase).removeClass("bg-green");
                            $(clase).removeClass("bg-red");
                            $(clase).addClass("bg-purple");
                        }
                    }
                } else {
                    $(clase).removeClass("bg-orange");
                    $(clase).removeClass("bg-red");
                    $(clase).removeClass("bg-purple");
                    $(clase).addClass("bg-green");
                }
            }

            function ajaxcpu() {
                $.post("AjaxSNMP", {action: "cpu", ip: "<c:out value="${device.ip}"/>"}, function (response) {
                    console.log("Recive data...");
                    var xmlDoc = $.parseXML(response);
                    var $xml = $(xmlDoc);
                    var $xmlResponse = $xml.find("response");

                    var $cpu = $xmlResponse.find("cpu");
                    var core1 = $cpu.find("core1").text();
                    var core2 = $cpu.find("core2").text();
                    var core3 = $cpu.find("core3").text();
                    var core4 = $cpu.find("core4").text();
                    var core5 = $cpu.find("core5").text();
                    var core6 = $cpu.find("core6").text();
                    var core7 = $cpu.find("core7").text();
                    var core8 = $cpu.find("core8").text();

                    checkBar(core1, ".core1wid");
                    checkBar(core2, ".core2wid");
                    checkBar(core3, ".core3wid");
                    checkBar(core4, ".core4wid");
                    checkBar(core5, ".core5wid");
                    checkBar(core6, ".core6wid");
                    checkBar(core7, ".core7wid");
                    checkBar(core8, ".core8wid");

                    $('.core1bar').text(core1 + " % en uso");
                    $('.core1wid').css("width", core1 + "%");

                    $('.core2bar').text(core2 + " % en uso");
                    $('.core2wid').css("width", core2 + "%");

                    $('.core3bar').text(core3 + " % en uso");
                    $('.core3wid').css("width", core3 + "%");

                    $('.core4bar').text(core4 + " % en uso");
                    $('.core4wid').css("width", core4 + "%");

                    $('.core5bar').text(core5 + " % en uso");
                    $('.core5wid').css("width", core5 + "%");

                    $('.core6bar').text(core6 + " % en uso");
                    $('.core6wid').css("width", core6 + "%");

                    $('.core7bar').text(core7 + " % en uso");
                    $('.core7wid').css("width", core7 + "%");

                    $('.core8bar').text(core8 + " % en uso");
                    $('.core8wid').css("width", core8 + "%");

                    var promedioCPU = (parseInt(core1) + parseInt(core2) + parseInt(core3) + parseInt(core4) + parseInt(core5) + parseInt(core6) + parseInt(core7) + parseInt(core8)) / 8;

                    if (promedioCPU >= 20 && promedioCPU < 25) {
                        console.log("Promedio: " + promedioCPU);
                        alert("El uso de la CPU sobrepasó el umbral [READY], ejecute medidas correspondientes - Uso total de CPU: " + promedioCPU);
                    }

                    if (promedioCPU >= 25 && promedioCPU < 30) {
                        console.log("Promedio: " + promedioCPU);
                        alert("El uso de la CPU sobrepasó el umbral [SET], ejecute medidas de precaución - Uso total de CPU: " + promedioCPU);
                    }

                    if (promedioCPU >= 30) {
                        console.log("Promedio: " + promedioCPU);
                        alert("El uso de la CPU sobrepasó el umbral [GO], ¡HAGA ALGO POR FAVOR! - Uso total de CPU: " + promedioCPU);
                    }
                });
            }

            setInterval(ajaxcpu, 10000);
        </script>

        <script>
            function ajaxpaquetes() {
                $.post("AjaxSNMP", {action: "paquetes", ip: "<c:out value="${device.ip}"/>"}, function (response) {
                    console.log("Recive data...");
                    var xmlDoc = $.parseXML(response);
                    var $xml = $(xmlDoc);
                    var $xmlResponse = $xml.find("response");

                    var $paquetes = $xmlResponse.find("paquetes");
                    var tcp = $paquetes.find("tcp").text();
                    var udp = $paquetes.find("udp").text();
                    var icmp = $paquetes.find("icmp").text();

                    $('.tcp').text(tcp);
                    $('.udp').text(udp);
                    $('.icmp').text(icmp);
                });

            }

            setInterval(ajaxpaquetes, 1000);
        </script>

        <!-- Custom Theme Scripts -->
        <script src="js/custom.js"></script>

        <!-- bootstrap-daterangepicker -->
        <script>
            $(document).ready(function () {
                $('#birthday').daterangepicker({
                    singleDatePicker: true,
                    calender_style: "picker_4"
                }, function (start, end, label) {
                    console.log(start.toISOString(), end.toISOString(), label);
                });
            });
        </script>
        <!-- /bootstrap-daterangepicker -->

        <!-- bootstrap-wysiwyg -->
        <script>
            $(document).ready(function () {
                $('.xcxc').click(function () {
                    $('#descr').val($('#editor').html());
                });
            });

            $(document).ready(function () {
                function initToolbarBootstrapBindings() {
                    var fonts = ['Serif', 'Sans', 'Arial', 'Arial Black', 'Courier',
                        'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',
                        'Times New Roman', 'Verdana'
                    ],
                            fontTarget = $('[title=Font]').siblings('.dropdown-menu');
                    $.each(fonts, function (idx, fontName) {
                        fontTarget.append($('<li><a data-edit="fontName ' + fontName + '" style="font-family:\'' + fontName + '\'">' + fontName + '</a></li>'));
                    });
                    $('a[title]').tooltip({
                        container: 'body'
                    });
                    $('.dropdown-menu input').click(function () {
                        return false;
                    })
                            .change(function () {
                                $(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle');
                            })
                            .keydown('esc', function () {
                                this.value = '';
                                $(this).change();
                            });

                    $('[data-role=magic-overlay]').each(function () {
                        var overlay = $(this),
                                target = $(overlay.data('target'));
                        overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());
                    });

                    if ("onwebkitspeechchange" in document.createElement("input")) {
                        var editorOffset = $('#editor').offset();

                        $('.voiceBtn').css('position', 'absolute').offset({
                            top: editorOffset.top,
                            left: editorOffset.left + $('#editor').innerWidth() - 35
                        });
                    } else {
                        $('.voiceBtn').hide();
                    }
                }

                function showErrorAlert(reason, detail) {
                    var msg = '';
                    if (reason === 'unsupported-file-type') {
                        msg = "Unsupported format " + detail;
                    } else {
                        console.log("error uploading file", reason, detail);
                    }
                    $('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>' +
                            '<strong>File upload error</strong> ' + msg + ' </div>').prependTo('#alerts');
                }

                initToolbarBootstrapBindings();

                $('#editor').wysiwyg({
                    fileUploadError: showErrorAlert
                });

                window.prettyPrint && prettyPrint();
            });
        </script>
        <!-- /bootstrap-wysiwyg -->

        <!-- Select2 -->
        <script>
            $(document).ready(function () {
                $(".select2_single").select2({
                    placeholder: "Select a state",
                    allowClear: true
                });
                $(".select2_group").select2({});
                $(".select2_multiple").select2({
                    maximumSelectionLength: 4,
                    placeholder: "With Max Selection limit 4",
                    allowClear: true
                });
            });
        </script>
        <!-- /Select2 -->

        <!-- jQuery Tags Input -->
        <script>
            function onAddTag(tag) {
                alert("Added a tag: " + tag);
            }

            function onRemoveTag(tag) {
                alert("Removed a tag: " + tag);
            }

            function onChangeTag(input, tag) {
                alert("Changed a tag: " + tag);
            }

            $(document).ready(function () {
                $('#tags_1').tagsInput({
                    width: 'auto'
                });
            });
        </script>
        <!-- /jQuery Tags Input -->

        <!-- Parsley -->
        <script>
            $(document).ready(function () {
                $.listen('parsley:field:validate', function () {
                    validateFront();
                });
                $('#demo-form .btn').on('click', function () {
                    $('#demo-form').parsley().validate();
                    validateFront();
                });
                var validateFront = function () {
                    if (true === $('#demo-form').parsley().isValid()) {
                        $('.bs-callout-info').removeClass('hidden');
                        $('.bs-callout-warning').addClass('hidden');
                    } else {
                        $('.bs-callout-info').addClass('hidden');
                        $('.bs-callout-warning').removeClass('hidden');
                    }
                };
            });

            $(document).ready(function () {
                $.listen('parsley:field:validate', function () {
                    validateFront();
                });
                $('#demo-form2 .btn').on('click', function () {
                    $('#demo-form2').parsley().validate();
                    validateFront();
                });
                var validateFront = function () {
                    if (true === $('#demo-form2').parsley().isValid()) {
                        $('.bs-callout-info').removeClass('hidden');
                        $('.bs-callout-warning').addClass('hidden');
                    } else {
                        $('.bs-callout-info').addClass('hidden');
                        $('.bs-callout-warning').removeClass('hidden');
                    }
                };
            });
            try {
                hljs.initHighlightingOnLoad();
            } catch (err) {
            }
        </script>
        <!-- /Parsley -->

        <!-- Autosize -->
        <script>
            $(document).ready(function () {
                autosize($('.resizable_textarea'));
            });
        </script>
        <!-- /Autosize -->

        <!-- jQuery autocomplete -->
        <script>
            $(document).ready(function () {
                var countries = {AD: "Andorra", A2: "Andorra Test", AE: "United Arab Emirates", AF: "Afghanistan", AG: "Antigua and Barbuda", AI: "Anguilla", AL: "Albania", AM: "Armenia", AN: "Netherlands Antilles", AO: "Angola", AQ: "Antarctica", AR: "Argentina", AS: "American Samoa", AT: "Austria", AU: "Australia", AW: "Aruba", AX: "Åland Islands", AZ: "Azerbaijan", BA: "Bosnia and Herzegovina", BB: "Barbados", BD: "Bangladesh", BE: "Belgium", BF: "Burkina Faso", BG: "Bulgaria", BH: "Bahrain", BI: "Burundi", BJ: "Benin", BL: "Saint Barthélemy", BM: "Bermuda", BN: "Brunei", BO: "Bolivia", BQ: "British Antarctic Territory", BR: "Brazil", BS: "Bahamas", BT: "Bhutan", BV: "Bouvet Island", BW: "Botswana", BY: "Belarus", BZ: "Belize", CA: "Canada", CC: "Cocos [Keeling] Islands", CD: "Congo - Kinshasa", CF: "Central African Republic", CG: "Congo - Brazzaville", CH: "Switzerland", CI: "Côte d?Ivoire", CK: "Cook Islands", CL: "Chile", CM: "Cameroon", CN: "China", CO: "Colombia", CR: "Costa Rica", CS: "Serbia and Montenegro", CT: "Canton and Enderbury Islands", CU: "Cuba", CV: "Cape Verde", CX: "Christmas Island", CY: "Cyprus", CZ: "Czech Republic", DD: "East Germany", DE: "Germany", DJ: "Djibouti", DK: "Denmark", DM: "Dominica", DO: "Dominican Republic", DZ: "Algeria", EC: "Ecuador", EE: "Estonia", EG: "Egypt", EH: "Western Sahara", ER: "Eritrea", ES: "Spain", ET: "Ethiopia", FI: "Finland", FJ: "Fiji", FK: "Falkland Islands", FM: "Micronesia", FO: "Faroe Islands", FQ: "French Southern and Antarctic Territories", FR: "France", FX: "Metropolitan France", GA: "Gabon", GB: "United Kingdom", GD: "Grenada", GE: "Georgia", GF: "French Guiana", GG: "Guernsey", GH: "Ghana", GI: "Gibraltar", GL: "Greenland", GM: "Gambia", GN: "Guinea", GP: "Guadeloupe", GQ: "Equatorial Guinea", GR: "Greece", GS: "South Georgia and the South Sandwich Islands", GT: "Guatemala", GU: "Guam", GW: "Guinea-Bissau", GY: "Guyana", HK: "Hong Kong SAR China", HM: "Heard Island and McDonald Islands", HN: "Honduras", HR: "Croatia", HT: "Haiti", HU: "Hungary", ID: "Indonesia", IE: "Ireland", IL: "Israel", IM: "Isle of Man", IN: "India", IO: "British Indian Ocean Territory", IQ: "Iraq", IR: "Iran", IS: "Iceland", IT: "Italy", JE: "Jersey", JM: "Jamaica", JO: "Jordan", JP: "Japan", JT: "Johnston Island", KE: "Kenya", KG: "Kyrgyzstan", KH: "Cambodia", KI: "Kiribati", KM: "Comoros", KN: "Saint Kitts and Nevis", KP: "North Korea", KR: "South Korea", KW: "Kuwait", KY: "Cayman Islands", KZ: "Kazakhstan", LA: "Laos", LB: "Lebanon", LC: "Saint Lucia", LI: "Liechtenstein", LK: "Sri Lanka", LR: "Liberia", LS: "Lesotho", LT: "Lithuania", LU: "Luxembourg", LV: "Latvia", LY: "Libya", MA: "Morocco", MC: "Monaco", MD: "Moldova", ME: "Montenegro", MF: "Saint Martin", MG: "Madagascar", MH: "Marshall Islands", MI: "Midway Islands", MK: "Macedonia", ML: "Mali", MM: "Myanmar [Burma]", MN: "Mongolia", MO: "Macau SAR China", MP: "Northern Mariana Islands", MQ: "Martinique", MR: "Mauritania", MS: "Montserrat", MT: "Malta", MU: "Mauritius", MV: "Maldives", MW: "Malawi", MX: "Mexico", MY: "Malaysia", MZ: "Mozambique", NA: "Namibia", NC: "New Caledonia", NE: "Niger", NF: "Norfolk Island", NG: "Nigeria", NI: "Nicaragua", NL: "Netherlands", NO: "Norway", NP: "Nepal", NQ: "Dronning Maud Land", NR: "Nauru", NT: "Neutral Zone", NU: "Niue", NZ: "New Zealand", OM: "Oman", PA: "Panama", PC: "Pacific Islands Trust Territory", PE: "Peru", PF: "French Polynesia", PG: "Papua New Guinea", PH: "Philippines", PK: "Pakistan", PL: "Poland", PM: "Saint Pierre and Miquelon", PN: "Pitcairn Islands", PR: "Puerto Rico", PS: "Palestinian Territories", PT: "Portugal", PU: "U.S. Miscellaneous Pacific Islands", PW: "Palau", PY: "Paraguay", PZ: "Panama Canal Zone", QA: "Qatar", RE: "Réunion", RO: "Romania", RS: "Serbia", RU: "Russia", RW: "Rwanda", SA: "Saudi Arabia", SB: "Solomon Islands", SC: "Seychelles", SD: "Sudan", SE: "Sweden", SG: "Singapore", SH: "Saint Helena", SI: "Slovenia", SJ: "Svalbard and Jan Mayen", SK: "Slovakia", SL: "Sierra Leone", SM: "San Marino", SN: "Senegal", SO: "Somalia", SR: "Suriname", ST: "São Tomé and Príncipe", SU: "Union of Soviet Socialist Republics", SV: "El Salvador", SY: "Syria", SZ: "Swaziland", TC: "Turks and Caicos Islands", TD: "Chad", TF: "French Southern Territories", TG: "Togo", TH: "Thailand", TJ: "Tajikistan", TK: "Tokelau", TL: "Timor-Leste", TM: "Turkmenistan", TN: "Tunisia", TO: "Tonga", TR: "Turkey", TT: "Trinidad and Tobago", TV: "Tuvalu", TW: "Taiwan", TZ: "Tanzania", UA: "Ukraine", UG: "Uganda", UM: "U.S. Minor Outlying Islands", US: "United States", UY: "Uruguay", UZ: "Uzbekistan", VA: "Vatican City", VC: "Saint Vincent and the Grenadines", VD: "North Vietnam", VE: "Venezuela", VG: "British Virgin Islands", VI: "U.S. Virgin Islands", VN: "Vietnam", VU: "Vanuatu", WF: "Wallis and Futuna", WK: "Wake Island", WS: "Samoa", YD: "People's Democratic Republic of Yemen", YE: "Yemen", YT: "Mayotte", ZA: "South Africa", ZM: "Zambia", ZW: "Zimbabwe", ZZ: "Unknown or Invalid Region"};

                var countriesArray = $.map(countries, function (value, key) {
                    return {
                        value: value,
                        data: key
                    };
                });

                // initialize autocomplete with custom appendTo
                $('#autocomplete-custom-append').autocomplete({
                    lookup: countriesArray,
                    appendTo: '#autocomplete-container'
                });
            });
        </script>
        <!-- /jQuery autocomplete -->

        <!-- Starrr -->
        <script>
            $(document).ready(function () {
                $(".stars").starrr();

                $('.stars-existing').starrr({
                    rating: 4
                });

                $('.starrr').on('click', function (e) {
                    e.preventDefault();
                });

                $('.stars').on('starrr:change', function (e, value) {
                    $('.stars-count').html(value);
                });

                $('.stars-existing').on('starrr:change', function (e, value) {
                    $('.stars-count-existing').html(value);
                });
            });
        </script>
        <!-- /Starrr -->
    </body>
</html>