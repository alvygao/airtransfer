<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
    <jsp:attribute name="center">
        <div style="height: 600px;">
            <a href="${baseAppUrl}/html/profile">Profile</a>
            <input type="submit" value="GET" onclick="return onClick(this)"/>
            <input type="submit" value="PUT" onclick="return onPutClick(this)"/>
            <script type="text/javascript">
                function onClick(e) {
                    $.ajax({
                                type:'get',
                                url: APP_BASE_URL + '/rest/user/profile',
                                contentType: "application/json; charset=utf-8",
                                error: function(request, error) {
                                    alert(request);
                                },
                                success: function(request) {
                                    alert(request);
                                }
                            });

                    return false;
                }
                function onPutClick(e) {
                    var requestData = {"data":{"aboutMe":"aboutMe123","appearance":"appearance123","birthDay":"20.12.2011","body":"body123","books":"books123","cellPhone":"cellPhone","city":"city","country":"country","currentCity":"current city","currentCountry":"current country","familyStatus":"family status","firstLanguage":"first language","fistName":"first name","height":"175.4","interest":"interest","lastName":"last name","lifeGoals":"goals","male":"true","movies":"movies","music":"music","occupation":"occupation","phone":"phone","secondLanguage":"secondLanguage","siteUrl":"site url","skypeId":"skype id","thirdLanguage":"third language","width":"75.5"}};
                    requestData = JSON.stringify(requestData);
                    $.ajax({
                                type:'put',
                                url: APP_BASE_URL + '/rest/user/profile',
                                contentType: "application/json; charset=utf-8",
                                data: requestData,
                                error: function(request, error) {
                                    alert(request);
                                },
                                success: function(request) {
                                    alert(request);
                                }
                            });

                    return false;
                }
            </script>
        </div>
    </jsp:attribute>
</tags:main>