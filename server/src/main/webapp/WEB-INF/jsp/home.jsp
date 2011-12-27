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
		      <input type="button" value="${i18n['label.main.login.loginBtn']}" onclick="return onLogin(this);"/>
                        <!--a href="${baseAppUrl}/html/signin" class="jLogin"
                           onclick="return onLogin(e);">${i18n['label.main.login.loginBtn']}</a-->
                    </div>

                    <script type="text/javascript">
                        function onLogin(e) {

                            var dataString = 'email=' + $('input[name=email]').val()
                                    + '&password=' + $('input[name=password]').val();

                            var surl = APP_BASE_URL + "/html/signin";

                            $.ajax({
                                        type: 'POST',
                                        url: surl,
                                        data: dataString,
                                        dataType: dataString,
                                        success: function(request) {
                                            if (request.responseText == "ok") {
                                                document.location = APP_BASE_URL + "/html/profile";
                                            }
                                        },
                                        error: function(request, error) {
                                            if (request.responseText == "ok") {
                                                document.location = APP_BASE_URL + "/html/profile";
                                            }
                                        }
                                    });
                        }
                    </script>
            </div>

            </form>
        </div>
        </div>
    </jsp:attribute>

</tags:main>
<!--script>
    jQuery(document).ready(function() {
        $('a.jLogin').click(function() {
            $.ajax({
                        type: 'POST',
                        url: $(this).attr('href'),
                        contentType: "application/json; charset=utf-8",
                        data: {
                            email: $('input[name=email]').val(),
                            password: $('input[name=password]').val()
                        },
                        success: function(objResponce) {
                            console.log(objResponce);
                            window.location.href = '/html/profile';
                        },
                        error: function() {
                            alert('Please enter correct data');
                        }
                    });
            return false;
        });
    });
</script-->

