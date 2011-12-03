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
<body>
<div id="wrapper">
    <div id="header">
        <strong>Header:</strong>
        <strong>Content: <f:message key="label.greetings"/></strong>
        <jsp:invoke fragment="header"/>
    </div>
    <div id="middle">
        <div id="container">
            <div id="content">

                <jsp:invoke fragment="center"/>
            </div>
        </div>
        <div class="sidebar" id="sideLeft">
            <strong>Left Sidebar:</strong>
            <jsp:invoke fragment="left"/>
        </div>
        <div class="sidebar" id="sideRight">
            <strong>Right Sidebar:</strong>
            <jsp:invoke fragment="right"/>
        </div>
    </div>
</div>
<div id="footer">
    <strong>Footer:</strong>
    <jsp:invoke fragment="footer"/>
</div>
</body>
</html>
