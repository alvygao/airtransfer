<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
<jsp:attribute name="center">
        <jsp:include page="/WEB-INF/jsp/includes/topmenu.jsp"/>
        <div class="cPage">
        <form action="" name="profileForm" id="jProfileForm">
        <div class="cColumn">
            <h3>${i18n['label.profile_page.personalData']}</h3>

            <div class="cFormBlock">
                <table border="0">
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.personalData.name']}:</td>
                        <td>
                            <input type="text" name="firstName" maxlength="255"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.personalData.lastName']}:</td>
                        <td>
                            <input type="text" name="lastName" maxlength="255"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.personalData.gender']}:</td>
                        <td>
                            <select name="female" style="float:left;" class="jSelect">
                                <option value="0">${i18n['label.profile_page.personalData.gender.male']}</option>
                                <option value="1">${i18n['label.profile_page.personalData.gender.female']}</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.personalData.site']}:</td>
                        <td>
                            <input type="text" name="siteUrl" maxlength="255"/>
                        </td>
                    </tr>
                    <tr class="cLast">
                        <td class="cLabel">${i18n['label.profile_page.personalData.birthday']}:</td>
                        <td>
                            <input type="text" name="birthday" maxlength="255"/>
                        </td>
                    </tr>
                </table>
                <div class="cDottet">
                    <table border="0">
                        <tr>
                            <td class="cLabel">${i18n['label.profile_page.personalData.skype']}:</td>
                            <td>
                                <input type="text" name="skypeId" maxlength="255"/>
                            </td>
                        </tr>
                            <%--
                                                    <tr>
                                                        <td class="cLabel">${i18n['label.profile_page.personalData.email']}:</td>
                                                        <td>
                                                            <input type="text" name="user_email" maxlength="255"/>
                                                        </td>
                                                    </tr>
                            --%>
                        <tr>
                            <td class="cLabel">${i18n['label.profile_page.personalData.phone']}:</td>
                            <td>
                                <input type="text" name="phone" maxlength="255"/>
                            </td>
                        </tr>
                        <tr class="cLast">
                            <td class="cLabel">${i18n['label.profile_page.personalData.mobilePhone']}:</td>
                            <td>
                                <input type="text" name="cellPhone" maxlength="255"/>
                            </td>
                        </tr>

                    </table>
                </div>
            </div>
            <h3>${i18n['label.profile_page.locations']}</h3>

            <div class="cFormBlock">
                <table border="0">
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.locations.country']}:</td>
                        <td>
                            <select name="countryId" style="float:left;" class="jSelect">

                            </select>
                        </td>
                    </tr>
                    <tr class="cLast">
                        <td class="cLabel">${i18n['label.profile_page.locations.city']}:</td>
                        <td>
                            <input type="text" name="city" maxlength="255"/>
                        </td>
                    </tr>
                </table>
            </div>
            <h3>${i18n['label.profile_page.location']}</h3>

            <div class="cFormBlock">
                <table border="0">
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.location.country']}:</td>
                        <td>
                            <select name="currentCountry" style="float:left;" class="jSelect">

                            </select>
                        </td>
                    </tr>
                    <tr class="cLast">
                        <td class="cLabel">${i18n['label.profile_page.location.city']}:</td>
                        <td>
                            <input type="text" name="currentCity" maxlength="255"/>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="cColumn">
            <h3>${i18n['label.profile_page.languages']}</h3>

            <div class="cFormBlock">
                <table border="0">
                    <tr>
                        <td colspan="2">
                            <select name="firstLanguageId" style="float:left;" class="jSelect">

                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <select name="secondLanguageId" style="float:left;" class="jSelect">

                            </select>
                        </td>
                    </tr>
                    <tr class="cLast">
                        <td colspan="2">
                            <select name="thirdLanguageId" style="float:left;" class="jSelect">

                            </select>
                        </td>
                    </tr>
                </table>
            </div>
            <h3>${i18n['label.profile_page.more']}</h3>

            <div class="cFormBlock">
                <table border="0">
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.profession']}:</td>
                        <td colspan="3">
                            <select name="occupationId" style="float:left;" class="jSelect">

                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.aboutMe']}:</td>
                        <td colspan="3">
                            <textarea name="aboutMe"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.familyStatus']}:</td>
                        <td colspan="3">
                            <input type="text" name="familyStatus" maxlength="255"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.body']}:</td>
                        <td colspan="3">
                            <input type="text" name="bodyId" maxlength="255"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.height']}:</td>
                        <td style="width: 40px;">
                            <input type="text" name="height" maxlength="255"/>
                        </td>
                        <td class="cLabel">${i18n['label.profile_page.more.weight']}:</td>
                        <td style="width: 40px;">
                            <input type="text" name="width" maxlength="255"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.appearance']}:</td>
                        <td colspan="3">
                            <input type="text" name="appearance" maxlength="255"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.lifePriorities']}:</td>
                        <td colspan="3">
                            <input type="text" name="lifeGoals" maxlength="255"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.interest']}:</td>
                        <td colspan="3">
                            <input type="text" name="interest" maxlength="255"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.music']}:</td>
                        <td colspan="3">
                            <input type="text" name="music" maxlength="255"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.movies']}:</td>
                        <td colspan="3">
                            <input type="text" name="movies" maxlength="255"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.books']}:</td>
                        <td colspan="3">
                            <input type="text" name="books" maxlength="255"/>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <input type="button" value="Save" onclick="return onPutClick(this)"/>

        <div class="cClear"></div>
        </form>
        </div>
        
        <div style="height: 20px; display: none;">
            <a href="${baseAppUrl}/html/profile">Profile</a>
            <input type="submit" value="GET" onclick="return onClick(this)"/>
            <input type="submit" value="PUT" onclick="return onPutClick(this)"/>
            <script type="text/javascript">
                jQuery(document).ready(function() {
                    $('select.jSelect').selectmenu();

                    try {
                        $.ajax({type:'get',
                                    url: APP_BASE_URL + '/rest/user/profile',
                                    contentType: "application/json; charset=utf-8",
                                    error: function(request, error) {
                                        alert("Error: " + request);
                                    },
                                    success: function(request) {
                                        $('input[name=aboutMe]').val(request.data.aboutMe);
                                        $('input[name=birthDay]').val(request.data.birthDay);
                                        $('input[name=appearance]').val(request.data.appearance);
                                        $('input[name=books]').val(request.data.books);
                                        $('input[name=cellPhone]').val(request.data.cellPhone);
                                        $('input[name=city]').val(request.data.city);
                                        $('input[name=countryId]').val(request.data.countryId);
                                        $('input[name=currentCity]').val(request.data.currentCity);
                                        $('input[name=currentCountryId]').val(request.data.currentCountryId);
                                        $('input[name=familyStatus]').val(request.data.familyStatus);
                                        $('input[name=firstLanguageId]').val(request.data.firstLanguageId);
                                        $('input[name=firstName]').val(request.data.firstName);
                                        $('input[name=height]').val(request.data.height);
                                        $('input[name=interest]').val(request.data.interest);
                                        $('input[name=lastName]').val(request.data.lastName);
                                        $('input[name=movies]').val(request.data.movies);
                                        $('input[name=music]').val(request.data.music);
                                        $('input[name=occupationId]').val(request.data.occupationId);
                                        $('input[name=phone]').val(request.data.phone);
                                        $('input[name=secondLanguageId]').val(request.data.secondLanguageId);
                                        $('input[name=siteUrl]').val(request.data.siteUrl);
                                        $('input[name=skypeId]').val(request.data.skypeId);
                                        $('input[name=thirdLanguageId]').val(request.data.thirdLanguageId);
                                        $('input[name=width]').val(request.data.width);
                                        $('input[name=lifeGoals]').val(request.data.lifeGoals);

//                                        console.log(request);
                                    }});
                    } catch(e) {
                        alert(e);
                    }
                });


                function onClick() {
                    $.ajax({
                                type:'get',
                                url: APP_BASE_URL + '/rest/user/profile',
                                contentType: "application/json; charset=utf-8",
                                error: function(request, error) {
                                    alert(request);
                                },
                                success: function(request) {
                                    var objResult = $.parseJSON(request)
                                    console.log(request);
                                }
                            });

                    return false;
                }


                function onPutClick(e) {

                    var requestData = {"data":{
                        "aboutMe": $('input[name=aboutMe]').val(),
                        "appearance": $('input[name=appearance]').val(),
                        "birthDay": $('input[name=birthDay]').val(),
                        "books": $('input[name=books]').val(),
                        "cellPhone": $('input[name=cellPhone]').val(),
                        "city": $('input[name=city]').val(),
                        "countryId": $('input[name=countryId]').val(),
                        "currentCity": $('input[name=currentCity]').val(),
                        "currentCountryId": $('input[name=currentCountryId]').val(),
                        "familyStatus": $('input[name=familyStatus]').val(),
                        "firstLanguageId": $('input[name=firstLanguageId]').val(),
                        "firstName":  $('input[name=firstName]').val(),
                        "height":  $('input[name=height]').val(),
                        "interest":  $('input[name=interest]').val(),
                        "lastName":  $('input[name=lastName]').val(),
                        "movies":  $('input[name=movies]').val(),
                        "music":  $('input[name=music]').val(),
                        "occupationId":  $('input[name=occupationId]').val(),
                        "phone":  $('input[name=phone]').val(),
                        "secondLanguageId":  $('input[name=secondLanguageId]').val(),
                        "siteUrl":  $('input[name=siteUrl]').val(),
                        "skypeId":  $('input[name=skypeId]').val(),
                        "thirdLanguageId":  $('input[name=thirdLanguageId]').val(),
                        "width":  $('input[name=width]').val(),
                        "lifeGoals":  $('input[name=lifeGoals]').val()
                    }};
                    var textData = JSON.stringify(requestData);

                    $.ajax({
                                type:'put',
                                url: APP_BASE_URL + '/rest/user/profile',
                                contentType: "application/json; charset=utf-8",
                                data:  textData,
                                error: function(request, error) {
                                    alert("Error: " + request);
                                },
                                success: function(request) {
                                    console.log(request);
                                }
                            });
                    return false;
                }
            </script>
        </div>
    </jsp:attribute>
</tags:main>