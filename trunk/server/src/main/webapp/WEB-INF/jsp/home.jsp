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
                <form action="${baseAppUrl}/html/signin" method="POST">
                    <div class="cLoginField">
                        <input type="text" name="email" value=""/>
                        <input type="password" name="password" value=""/>
                        <a class="cRegistration jDialog" href="${baseUrl}/html/registration"
                           title="${i18n['label.main.login.registration_link']}">
                                ${i18n['label.main.login.registration_link']}
                        </a>&nbsp;&nbsp;&nbsp;
                        <a class="cForgotPassword jDialog" href="${baseUrl}/html/forgetpassword"
                           title="${i18n['label.main.login.forgotPassword']}">
                                ${i18n['label.main.login.forgotPassword']}
                        </a>
                    </div>

                        <div class="cLoginButton">
                            <a href="${baseAppUrl}/html/signin" class="jLogin">${i18n['label.main.login.loginBtn']}</a>
                        </div>
                </form>
            </div>
        </div>
    </jsp:attribute>

</tags:main>
<script>
    jQuery(document).ready(function() {
        $('a.jLogin').click(function(){
            $.ajax({
                type: 'POST',
                url: $(this).attr('href'),
                contentType: "application/json; charset=utf-8",
                data: {
                    email: $('input[name=email]').val(),
                    password: $('input[name=password]').val()
                },
                success: function(objResponce){
                    console.log(objResponce);
                    window.location.href='/html/profile';
                },
                error: function() {
                    alert('Please enter correct data');
                }
            });
            return false;
        });
    });
</script>

