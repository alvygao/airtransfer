<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
    <jsp:attribute name="center">
        <div id="cDialogForm" class="cRegistration cDialogForm">
            <span>
            <b>${warning}</b>
            </span>
            <p/>
            <span style="width: 100%; padding-left: 100px;">
                <a href="/" title="${i18n['label.home.link']}">${i18n['label.home.link']}</a>
            </span>
        </div>
    </jsp:attribute>
</tags:main>