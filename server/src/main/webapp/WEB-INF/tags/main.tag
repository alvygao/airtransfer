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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Air Transfer:
        <jsp:invoke fragment="title"/>
    </title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <base href="${baseAppUrl}"/>
    <link rel="stylesheet" href="${baseAppUrl}/css/jquery-ui/jquery-ui.css" type="text/css"/>
    <link rel="stylesheet" href="${baseAppUrl}/css/jquery.ui.selectmenu.css" type="text/css"/>
    <link rel="stylesheet" href="${baseAppUrl}/css/reset.css" type="text/css"/>
    <link rel="stylesheet" href="${baseAppUrl}/css/style.css" type="text/css"/>


    <script type="text/javascript">
        APP_BASE_URL = '${baseAppUrl}';
        function onServerError(err) {
            if (err.code == 'SESSION_DOESNT_EXIST') {
//                window.location.reload();
            } else {

//                window.location = '/';
            }

            return false;
        }

        function isEmpty(obj) {
            return obj == null || obj == undefined || obj == "";
        }
    </script>
    <script type="text/javascript" src="${baseAppUrl}/js/jquery.js"></script>
    <script type="text/javascript" src="${baseAppUrl}/js/json2.js"></script>
    <script type="text/javascript" src="${baseAppUrl}/js/jquery-ui.js"></script>
    <script type="text/javascript" src="${baseAppUrl}/js/jquery.ui.selectmenu.js"></script>

    <script type="text/javascript" src="${baseAppUrl}/js/main.js"></script>
    <jsp:invoke fragment="head"/>

</head>
<body>
<div id="cContentainer">
    <div id="cHeader">
        <jsp:include page="/WEB-INF/jsp/includes/menu.jsp"/>
        <div class="cLogoText">
            <a href="/">
                <img src="/images/air-transfer.png" alt="Air-Transfer.com"/>
            </a>
        </div>
        <jsp:invoke fragment="header"/>
    </div>

    <div id="cLeftBar">
        <div class="cLogo"></div>
        <jsp:invoke fragment="left"/>
    </div>

    <div id="cContent">
        <jsp:invoke fragment="center"/>
    </div>
    <div class="cClear"></div>

    <div id="cRightBar">
        <jsp:invoke fragment="right"/>
    </div>

    <div id="cFooter">
        <jsp:invoke fragment="footer"/>
    </div>
</div>
</body>
</html>
