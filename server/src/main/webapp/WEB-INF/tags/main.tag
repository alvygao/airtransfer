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
    <link rel="stylesheet" href="${baseAppUrl}/css/style.css" type="text/css"/>
    <script type="text/javascript">
        APP_BASE_URL = '${baseAppUrl}';
    </script>
    <script type="text/javascript" src="${baseAppUrl}/js/jquery.js"></script>
    <script type="text/javascript" src="${baseAppUrl}/js/json2.js"></script>
    <jsp:invoke fragment="head"/>

</head>
<body style=" height: 100%; background: url(/images/background.jpg) no-repeat center; background-color: #5c9ccc; ">

<div style="  width: 100%; height: 20px;">
    <jsp:invoke fragment="header"/>
</div>

<div style=" height: 90%;">
    <div id="leftBox" style="width: 20%; float: left; height:100%; ">
        <b>left</b>
        <jsp:invoke fragment="left"/>
    </div>
    <div id="centerBox" style="width: 60%; margin: 0; float: left; height:100%; ">
        <jsp:include page="/WEB-INF/jsp/includes/menu.jsp"/>
        <div style="width: 100%; height: 100%; ">
            <jsp:invoke fragment="center"/>
        </div>
    </div>
    <div id="rightBox" style="width: 20%; float: right; height:100%; ">
        <b>right</b>
        <jsp:invoke fragment="right"/>
    </div>
</div>

<div style="  width: 100%; height: 40px;">
    <jsp:invoke fragment="footer"/>
</div>


</body>
</html>
