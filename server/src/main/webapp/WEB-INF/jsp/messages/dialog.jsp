<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
<jsp:attribute name="head">
        <script type="text/javascript" src="${baseAppUrl}/js/cometd.js"></script>
        <script type="text/javascript" src="${baseAppUrl}/js/jquery.cometd.js"></script>
</jsp:attribute>
<jsp:attribute name="center">
        <jsp:include page="/WEB-INF/jsp/includes/topmenu.jsp"/>
        <div class="cPage" id="logger">
            <div style="width: 500px" id="history">

                Dialog
            </div>
        </div>
    <script type="text/javascript">
    </script>
    </jsp:attribute>
</tags:main>

