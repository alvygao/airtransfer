<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<%@ attribute name="title" fragment="true" %>
<%@ attribute name="head" fragment="true" %>

<%@ attribute name="header" fragment="true" %>
<%@ attribute name="center" fragment="true" %>
<%@ attribute name="left" fragment="true" %>
<%@ attribute name="right" fragment="true" %>
<%@ attribute name="footer" fragment="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Air Transfer:
        <jsp:invoke fragment="title"/>
    </title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    
    <base href="${baseAppUrl}"/>
    <link rel="stylesheet" href="${baseAppUrl}/css/reset.css" type="text/css"/>
    <link rel="stylesheet" href="${baseAppUrl}/css/style.css" type="text/css"/>
    <link rel="stylesheet" href="${baseAppUrl}/css/menu.css" type="text/css"/>
    <link rel="stylesheet" href="${baseAppUrl}/css/smoothness/jquery-ui.css" type="text/css"/>
    <link rel="stylesheet" href="${baseAppUrl}/css/redmond/jquery.ui.selectmenu.css" type="text/css"/>
    <script type="text/javascript">
        APP_BASE_URL = '${baseAppUrl}';
    </script>
    <script type="text/javascript" src="${baseAppUrl}/js/jquery.js"></script>
    <script type="text/javascript" src="${baseAppUrl}/js/json2.js"></script>
    <jsp:invoke fragment="head"/>

</head>
<body>
<div id="vert_bg">	
<div id="content_bg">	
<div id="main_container">
    <div id="menu">
        <div class="bm_button">
            <a href="javascript:void(0)" id="b_home"  class="highlight">
                <div class="bm_left">
                </div>
                <div class="bm_body">					
                        HOME					 
                </div>
                <div class="bm_right">
                </div>
            </a>
        </div>

        <div  class="bm_button">
            <a href="javascript:void(0)" id="b_search"  class="highlight">
                <div class="bm_left">
                </div>
                <div class="bm_body">					
                        SEARCH					
                </div>
                <div class="bm_right">
                </div>
            </a> 
        </div>

        <div class="bm_button">
            <a href="javascript:void(0)" id="b_about" class="highlight">
                <div class="bm_left">
                </div>
                <div class="bm_body">					
                        ABOUT US					
                </div>
                <div class="bm_right">
                </div>
            </a> 
        </div>

        <div class="bm_button">
            <a href="javascript:void(0)" id="b_feed"  class="highlight">
                <div class="bm_left">
                </div>
                <div class="bm_body">					
                        FEED BACK					
                </div>
                <div class="bm_right">
                </div>
            </a> 
        </div>

        <div class="bm_button">
            <a href="javascript:void(0)" id="b_adv"  class="highlight">
                <div class="bm_left">
                </div>
                <div class="bm_body">					
                        advertisement					
                </div>
                <div class="bm_right">
                </div>
            </a> 
        </div>

        <div class="bm_button f_right" >
        <a href="javascript:void(0)"  class="highlight">
            <div class="bm_left">
            </div>
            <div class="bm_body">					
                    LOGOUT					
            </div>
            <div class="bm_right">
            </div>
        </a> 
        </div>
            <jsp:invoke fragment="header"/>
    </div>
    
    <div id="middle">
        <div id="container">
            <div id="content">

                <jsp:invoke fragment="center"/>
            </div>
        </div>
        
        <div class="sidebar" id="sideLeft">
            <jsp:invoke fragment="left"/>
        </div>
        <div class="sidebar" id="sideRight">
            <jsp:invoke fragment="right"/>
        </div>
    </div>
</div>
</div>
</div>

</body>
</html>
