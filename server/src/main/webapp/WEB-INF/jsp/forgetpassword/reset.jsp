<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
    <jsp:attribute name="center">
        <div class="cPage cWithoutMenu">
            <h1>${i18n['label.forgot_password.changeTitle']}</h1>   
            <div id="cDialogForm" class="cForgot cDialogForm">
                <form action="${appBaseUrl}/html/forgetpassword/reset/${hiddenUid}" method="POST" >
                    <div>
                        <label for="cPassword1">${i18n['label.forgot_password.password']}</label>
                        <input id="cPassword1" type="password" name="new_password"/>
                    </div>
                    <div>
                        <label for="cPassword2">${i18n['label.forgot_password.repeatPassword']}</label>
                        <input id="cPassword2" type="password" name="new_password_again"/>
                        <input type="hidden" name="hiddenUid" value="${hiddenUid}"/>
                    </div>
                    <div>
                        <a href="javascript:void(0)" class="cSubmit">${i18n['label.forgot_password.change']}</a>
                    </div>
                    <input type="submit" style="display: none;" />
                </form>
            </div>
        </div>
    </jsp:attribute>
</tags:main>