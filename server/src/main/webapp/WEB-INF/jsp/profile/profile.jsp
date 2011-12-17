<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
    <jsp:attribute name="center">
        <div style="height: 600px;">
            <input type="submit" value="${i18n['label.main.login.loginBtn']}" onclick="return onClick(this)"/>
            <script type="text/javascript">
                function onClick(e) {

                    $.ajax({
                        type:'get',
                        url: APP_BASE_URL + '/rest/user/profile',
                        error: function(request, error) {
                            alert(request);
                        },
                        success: function(request) {
                            alert(request);
                        }
                    });

                    /*        var data = JSON.stringify({'data':{'name':'ASDASDds'}});
                     $.ajax({
                     type:'post',
                     url: APP_BASE_URL + '/rest/user',
                     data: data,
                     contentType: 'application/json',
                     error: function(request, error) {
                     alert(request.data);
                     },
                     success: function(request) {
                     var test = request.data;
                     alert(request);
                     }
                     });*/
                    return false;
                }
            </script>
        </div>
    </jsp:attribute>
</tags:main>