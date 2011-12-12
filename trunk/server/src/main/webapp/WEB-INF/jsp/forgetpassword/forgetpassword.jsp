<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
    <jsp:attribute name="center">
    <div id="cDialogForm" class="cForgot cDialogForm" style="height: 600px;">
        <div>
            <b>${warning}</b>
        </div>
        <form action="${baseAppUrl}/html/forgetpassword/reset" method="POST">
            <div>
                <label for="cEmail">${i18n['label.forgot_password.emailTitle']}</label>
                <input id="cEmail" type="text" name="email">
            </div>
            <div>
                    <%--<a href="" class="cSubmit">${i18n['label.forgot_password.send_btn']}</a>--%>
                <input type="submit" class="cSubmit">${i18n['label.forgot_password.send_btn']}</input>
            </div>
        </form>
    </div>
    </jsp:attribute>
</tags:main>