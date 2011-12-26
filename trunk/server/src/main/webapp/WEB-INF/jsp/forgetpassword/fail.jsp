<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
    <jsp:attribute name="center">
    <div class="cPage cWithoutMenu">
        <h1>${i18n['label.forgot_password.title']}</h1>   
        <div id="cDialogForm" class="cForgot cDialogForm">
            <div>
                <b class="cError">${warning}</b>
                <br /><br />
                <a href="javascript:history.back();" class="cBackLink">${i18n['label.forgot_password.back']}</a>
            </div>
        </div>
    </div>
    </jsp:attribute>
</tags:main>