<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>

    <jsp:attribute name="center">
        <div class="cSlogans">
            <div class="cSlogan">
                ${i18n['label.main.slogan.find_airline_companion']}
            </div>
            <div class="cSlogan">
                ${i18n['label.main.slogan.find_friend']}
            </div>
            <div class="cSlogan">
                ${i18n['label.main.slogan.choose_fly']}
            </div>
        </div>
        <div class="cClear"></div>
        <div class="cMain">
            <div class="cLoginForm">
                <form action="" method="POST">
                    <div class="cLoginField">
                        <input type="text" name="email" value="" />
                        <input type="password" name="pass" value="" />
                        <a class="cRegistration jDialog" href="${baseUrl}/html/registration" title="${i18n['label.registration.link_title']}">
                            ${i18n['label.main.login.registration_link']}
                        </a>&nbsp;&nbsp;&nbsp;
                        <a class="cForgotPassword jDialog" href="${baseUrl}/html/forgetpassword" title="${i18n['label.forgot_password.link_title']}">
                            ${i18n['label.main.login.forgotPassword']}
                        </a>
                    </div>
                    <div class="cLoginButton">
                        <input type="button" value="${i18n['label.main.login.loginBtn']}" />
                    </div>
                </form>
            </div>
        </div>
    </jsp:attribute>

</tags:main>


