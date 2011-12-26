<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
    <jsp:attribute name="center">
        <div class="cPage cWithoutMenu">
            <h1>${i18n['label.registration.title']}</h1>
            <div id="cDialogForm" class="cRegistration cDialogForm">
                <form action="${appBaseUrl}/html/registration" method="POST">
                    <div>
                        <label for="cEmail">${i18n['label.registration.form.emailTitle']}</label>
                        <input id="cEmail" type="text" name="email">
                    </div>
                    <div>
                        <label for="cPasswoed">${i18n['label.registration.form.password']}</label>
                        <input id="cPasswoed" type="password" name="password"/>
                    </div>
                    <div>
                        <label for="cRepeatPassword">${i18n['label.registration.form.password_repeat']}</label>
                        <input id="cRepeatPassword" type="password" name="password_repeat"/>
                    </div>
                    <div>
                        <%--<input type="submit" class="cSubmit" value="${i18n['label.registration.form.submit_btn']}"></a>--%>
                        <a href="" class="cSubmit">${i18n['label.registration.form.submit_btn']}</a>
                    </div>
                </form>
            </div>
                    <input type="submit" style="display: none;" />
            <div class="cClear"></div>
        </div>
    </jsp:attribute>
</tags:main>