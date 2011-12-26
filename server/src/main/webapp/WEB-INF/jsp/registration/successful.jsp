<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
    <jsp:attribute name="center">
        <div class="cPage cWithoutMenu">
            <h1>${i18n['label.registration.title']}</h1>
            <div id="cDialogForm" class="cRegistration cDialogForm">
                <b class="cSuccess">${warning}</b>
                <br /><br />
                <a href="/" class="cBackLink">${i18n['label.registration.home']}</a>
            </div>
        </div>
    </jsp:attribute>
</tags:main>