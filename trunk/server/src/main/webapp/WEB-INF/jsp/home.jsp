<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>

    <jsp:attribute name="title">
        <strong>Home page</strong>
    </jsp:attribute>
    <jsp:attribute name="header">
        <span><a href="${baseAppUrl}/html/?locale=ru">RU<img id="ruLocale"></a></span>
        <span><a href="${baseAppUrl}/html/?locale=de">DE<img id="deLocale"></a></span>
        <span><a href="${baseAppUrl}/html/?locale=en">EN<img id="enLocale"></a></span>
    </jsp:attribute>
    <jsp:attribute name="left">
        <div>
            <a href="${baseAppUrl}/html/profile"><f:message key="profile_page.link"/> </a>
        </div>
        <div>
            <a href="${baseAppUrl}/html/profile/friends">friends </a>
        </div>
        <div>
            <a href="${baseAppUrl}/html/profile/flights">flights</a>
        </div>
        <div>
            <a href="${baseAppUrl}/html/profile/albums">albums</a>
        </div>

    </jsp:attribute>
    <jsp:attribute name="center">

        <input type="button" onclick="onPostClick(this);" value="Post">
        <input type="button" onclick="onGetClick(this);" value="Get">
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
        <div>
            <a href="${baseAppUrl}/html/registration"><f:message key="label.registration.link_title"/></a>
        </div>
        <div>
            <a href="${baseAppUrl}/html/forgetpassword"><f:message key="forget_password.link.label"/></a>
        </div>
    </jsp:attribute>
</tags:main>


