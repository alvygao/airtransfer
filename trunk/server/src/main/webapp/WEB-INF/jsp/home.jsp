<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>

<tags:main>
    <jsp:attribute name="title">
        Home page
    </jsp:attribute>

    <jsp:attribute name="header">
        <!-- <span><a href="${baseAppUrl}/html/?locale=ru">RU<img id="ruLocale"></a></span>
        <span><a href="${baseAppUrl}/html/?locale=de">DE<img id="deLocale"></a></span>
        <span><a href="${baseAppUrl}/html/?locale=en">EN<img id="enLocale"></a></span> -->
    </jsp:attribute>

    <jsp:attribute name="left">
    </jsp:attribute>

    <jsp:attribute name="center">
        <div id="content_main_page">
        <c:if test="${isAuthorized != null}">
            <div id="login_block">
                <form action="${baseAppUrl}/html/sign" method="POST" name="form_login" id="form_login">
                    <div id="form_input" class="left">
                        <input name="email" class="ui-selectmenu-status ui-corner-all ui-widget"
                               style="background-color:#c5d5ef; font-size:14px; height:16px !important; width:230px; border: 1px solid white"
                               type="text"/> <br/>
                        <input name="password" class="ui-selectmenu-status ui-corner-all ui-widget"
                               style="background-color:#c5d5ef; font-size:14px; height:16px !important; width:230px; border: 1px solid white"
                               type="password"/><br>

                        <div id="info" style="padding-left: 0; padding-top : 15px; display : inline;">
                            <a href="${baseAppUrl}/html/reg" class="signup_link">
                                Registration
                            </a>
                            <a href="#" onclick="" class="forgot_link">
                                Forgot Password?
                            </a>
                        </div>
                    </div>
                    <div id="form_button" class="left">
                        <input type="submit" name="enter_login" id="submit" value=""/>
                    </div>
                </form>
            </div>
        </c:if>
            <div style="clear:both;"></div>

        <script type="text/javascript">
            function onPostClick(cmp) {
                var data = JSON.stringify({data:{id:1231, name: 'TestUSer'}});

                $.ajax({  url: APP_BASE_URL + '/rest/user',
                    type: 'POST',
                    data: data,
                    dataType: 'json',
                    contentType: 'application/json',
                    success: onSuccess
                });
                return true;
            }
            function onGetClick(cmp) {
                var data = JSON.stringify({data:{id:1231, name: 'TestUSer'}});
                $.ajax({  url: APP_BASE_URL + '/rest/user',
                    type: 'GET',
                    data: data,
                    dataType: 'json',
                    contentType: 'application/json',
                    success: onSuccess
                });
                return true;
            }
            function onSuccess(response) {
                alert(response.data.name);
            }
        </script>
    </jsp:attribute>
    <jsp:attribute name="right">
        
    </jsp:attribute>
</tags:main>


