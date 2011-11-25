<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<tags:main>

    <jsp:attribute name="title">
        <strong>Home page</strong>

    </jsp:attribute>
    <jsp:attribute name="header">
        <span><a href="${baseAppUrl}/html/?locale=ru">RU<img id="ruLocale"></a></span>
        <span><a href="${baseAppUrl}/html/?locale=de">DE<img id="deLocale"></a></span>
        <span><a href="${baseAppUrl}/html/?locale=en">EN<img id="enLocale"></a></span>
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
    </jsp:attribute>
</tags:main>


