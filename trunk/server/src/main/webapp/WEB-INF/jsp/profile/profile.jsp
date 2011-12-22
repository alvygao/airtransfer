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
                            <input type="text" class="jSaveData" name="fistName" maxlength="255"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.personalData.lastName']}:</td>
                        <td>
                            <input type="text" class="jSaveData" name="lastName" maxlength="255"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.personalData.gender']}:</td>
                        <td>
                            <select  class="jSaveData" name="female" style="float:left;" class="jSelect">
                                <option value="0">${i18n['label.profile_page.personalData.gender.male']}</option>
                                <option value="1">${i18n['label.profile_page.personalData.gender.female']}</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.personalData.site']}:</td>
                        <td>
                            <input type="text" class="jSaveData" name="siteUrl" maxlength="255"/>
                        </td>
                    </tr>
                    <tr class="cLast">
                        <td class="cLabel">${i18n['label.profile_page.personalData.birthday']}:</td>
                        <td>
                            <input type="text" class="jSaveData" name="birthday" maxlength="255"/>
                        </td>
                    </tr>
                </table>
                <div class="cDottet">
                    <table border="0">
                        <tr>
                            <td class="cLabel">${i18n['label.profile_page.personalData.skype']}:</td>
                            <td>
                                <input type="text" class="jSaveData" name="skypeId" maxlength="255"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="cLabel">${i18n['label.profile_page.personalData.phone']}:</td>
                            <td>
                                <input type="text" class="jSaveData" name="phone" maxlength="255"/>
                            </td>
                        </tr>
                        <tr class="cLast">
                            <td class="cLabel">${i18n['label.profile_page.personalData.mobilePhone']}:</td>
                            <td>
                                <input type="text" class="jSaveData" name="cellPhone" maxlength="255"/>
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
                            <select name="countryId" class="jSaveData" style="float:left;" class="jSelect">

                            </select>
                        </td>
                    </tr>
                    <tr class="cLast">
                        <td class="cLabel">${i18n['label.profile_page.locations.city']}:</td>
                        <td>
                            <input type="text" class="jSaveData" name="city" maxlength="255"/>
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
                            <select name="currentCountryId" class="jSaveData" style="float:left;" class="jSelect">

                            </select>
                        </td>
                    </tr>
                    <tr class="cLast">
                        <td class="cLabel">${i18n['label.profile_page.location.city']}:</td>
                        <td>
                            <input type="text" class="jSaveData" name="currentCity" maxlength="255"/>
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
                            <select name="firstLanguageId" class="jSaveData" style="float:left;" class="jSelect">

                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <select name="secondLanguageId" class="jSaveData" style="float:left;" class="jSelect">

                            </select>
                        </td>
                    </tr>
                    <tr class="cLast">
                        <td colspan="2">
                            <select name="thirdLanguageId" class="jSaveData" style="float:left;" class="jSelect">

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
                            <select name="occupationId" class="jSaveData" style="float:left;" class="jSelect">

                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.aboutMe']}:</td>
                        <td colspan="3">
                            <textarea name="aboutMe" class="jSaveData"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.familyStatus']}:</td>
                        <td colspan="3">
                            <input type="text" class="jSaveData" name="familyStatus" maxlength="255"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.body']}:</td>
                        <td colspan="3">
                            <input type="text" class="jSaveData" name="bodyId" maxlength="255"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.height']}:</td>
                        <td style="width: 40px;">
                            <input type="text" class="jSaveData" name="height" maxlength="255"/>
                        </td>
                        <td class="cLabel">${i18n['label.profile_page.more.weight']}:</td>
                        <td style="width: 40px;">
                            <input type="text" class="jSaveData" name="width" maxlength="255"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.appearance']}:</td>
                        <td colspan="3">
                            <input type="text" class="jSaveData" name="appearance" maxlength="255"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.lifePriorities']}:</td>
                        <td colspan="3">
                            <input type="text" class="jSaveData" name="lifeGoals" maxlength="255"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.interest']}:</td>
                        <td colspan="3">
                            <input type="text" class="jSaveData" name="interest" maxlength="255"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.music']}:</td>
                        <td colspan="3">
                            <input type="text" class="jSaveData" name="music" maxlength="255"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.movies']}:</td>
                        <td colspan="3">
                            <input type="text" class="jSaveData" name="movies" maxlength="255"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.books']}:</td>
                        <td colspan="3">
                            <input type="text" class="jSaveData" name="books" maxlength="255"/>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <%-- <input type="button" value="Save" onclick="return onPutClick(this)"/> --%>

        <div class="cClear"></div>
        </form>
        </div>
        
        <div style="height: 20px; display: none;">
            <a href="${baseAppUrl}/html/profile">Profile</a>
            <input type="submit" value="GET" onclick="return onClick(this)"/>
            <input type="submit" value="PUT" onclick="return onPutClick(this)"/>
            <script type="text/javascript">
                jQuery(document).ready(function() {
                    
                    $.getJSON('/rest/search/countries', function(objJson) {
                        var items = [];
                        $.each(objJson.data, function(key, val) {
                            items.push('<option value="' + val.itemId + '">' + val.itemName + '</option>');
                        });
                        
                        $('select[name=countryId]').html(items.join(''));
                        $('select[name=currentCountryId]').html(items.join(''));
                    });
                    $.getJSON('/rest/search/language', function(objJson) {
                        var items = [];
                        $.each(objJson.data, function(key, val) {
                            items.push('<option value="' + val.itemId + '">' + val.itemName + '</option>');
                        });
                        
                        $('select[name=bodyId]').html(items.join(''));
                    });
                    $.getJSON('/rest/search/body', function(objJson) {
                        var items = [];
                        $.each(objJson.data, function(key, val) {
                            items.push('<option value="' + val.itemId + '">' + val.itemName + '</option>');
                        });
                        
                        $('select[name=firstLanguageId]').html(items.join(''));
                        $('select[name=secondLanguageId]').html(items.join(''));
                        $('select[name=thirdLanguageId]').html(items.join(''));
                    });
                    $.getJSON('/rest/search/profession', function(objJson) {
                        var items = [];
                        $.each(objJson.data, function(key, val) {
                            items.push('<option value="' + val.itemId + '">' + val.itemName + '</option>');
                        });
                        
                        $('select[name=occupationId]').html(items.join(''));
                    });
                    $(".jSaveData").focusout(function() {
                        saveProfile();
                    });
                    getProfile();
                    //$('select.jSelect').selectmenu();
                });


                function getProfile() {
                    $.ajax({
                        type:'get',
                        url: APP_BASE_URL + '/rest/user/profile',
                        contentType: "application/json; charset=utf-8",
                        error: function(request, error) {
                            alert(request);
                        },
                        success: function(request) {
                            $('input[textarea=aboutMe]').val(request.data.aboutMe);
                            $('input[select=bodyId]').val(request.data.bodyId);
                            $('input[name=appearance]').val(request.data.appearance);
                            $('input[name=birthDay]').val(request.data.birthDay);
                            $('input[name=books]').val(request.data.books);
                            $('input[name=cellPhone]').val(request.data.cellPhone);
                            $('input[name=city]').val(request.data.city);
                            $('input[select=countryId]').val(request.data.countryId);
                            $('input[name=currentCity]').val(request.data.currentCity);
                            $('input[select=currentCountryId]').val(request.data.currentCountryId);
                            $('input[name=familyStatus]').val(request.data.familyStatus);
                            $('input[select=firstLanguageId]').val(request.data.firstLanguageId);
                            $('input[name=firstName]').val(request.data.firstName);
                            $('input[name=height]').val(request.data.height);
                            $('input[name=interest]').val(request.data.interest);
                            $('input[name=lastName]').val(request.data.lastName);
                            $('input[name=movies]').val(request.data.movies);
                            $('input[name=music]').val(request.data.music);
                            $('input[select=occupationId]').val(request.data.occupationId);
                            $('input[name=phone]').val(request.data.phone);
                            $('input[select=secondLanguageId]').val(request.data.secondLanguageId);
                            $('input[name=siteUrl]').val(request.data.siteUrl);
                            $('input[name=skypeId]').val(request.data.skypeId);
                            $('input[select=thirdLanguageId]').val(request.data.thirdLanguageId);
                            $('input[name=width]').val(request.data.width);
                        }
                    });

                    return false;
                }


                function saveProfile() {
                    var requestData = {"data":{
                        "aboutMe": $('textarea[name=aboutMe]').val(),
                        "bodyId": $('select[name=bodyId]').val(),
                        "appearance": $('input[name=appearance]').val(),
                        "birthDay": $('input[name=appearance]').val(),
                        "books": $('input[name=books]').val(),
                        "cellPhone": $('input[name=cellPhone]').val(),
                        "city": $('input[name=city]').val(),
                        "countryId": $('input[name=countryId]').val(),
                        "currentCity": $('input[name=currentCity]').val(),
                        "currentCountryId": $('select[name=currentCountryId]').val(),
                        "familyStatus": $('input[name=familyStatus]').val(),
                        "firstLanguageId": $('select[name=firstLanguageId]').val(),
                        "firstName":  $('input[name=firstName]').val(),
                        "height":  $('input[name=height]').val(),
                        "interest":  $('input[name=interest]').val(),
                        "lastName":  $('input[name=lastName]').val(),
                        "movies":  $('input[name=movies]').val(),
                        "music":  $('input[name=music]').val(),
                        "occupationId":  $('select[name=occupationId]').val(),
                        "phone":  $('input[name=phone]').val(),
                        "secondLanguageId":  $('select[name=secondLanguageId]').val(),
                        "siteUrl":  $('input[name=siteUrl]').val(),
                        "skypeId":  $('input[name=skypeId]').val(),
                        "thirdLanguageId":  $('select[name=thirdLanguageId]').val(),
                        "width":  $('input[name=width]').val()
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