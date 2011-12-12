<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
    <jsp:attribute name="center">
        <div style="height: 600px;">
            <form action="/html/forgetpassword/reset/${hiddenUid}">
                <div>
                    <label for="cPassword1">${i18n['label.registration.form.password']}</label>
                    <input id="cPassword1" type="password" name="new_password"/>
                </div>
                <div>
                    <label for="cPassword2"></label>
                    <input id="cPassword2" type="password" name="new_password_again"/>
                    <input type="hidden" name="hiddenUid"/>
                </div>
                <div><input type="submit" class="cSubmit" value="${i18n['label.registration.form.submit_btn']}"></a>
                </div>
            </form>
        </div>
    </jsp:attribute>
</tags:main>