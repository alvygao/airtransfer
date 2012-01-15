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
                            <input type="text" class="jSaveData" name="firstName" maxlength="255"/>
                            <span class="cClearBtn jClearBtn">
                                <img src="/images/clear-button.png" alt="clear"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.personalData.lastName']}:</td>
                        <td>
                            <input type="text" class="jSaveData" name="lastName" maxlength="255"/>
                            <span class="cClearBtn jClearBtn">
                                <img src="/images/clear-button.png" alt="clear"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.personalData.gender']}:</td>
                        <td>
                            <select class="jSaveData jSelect" name="is_male" style="float:left;">
                                <option value="0">${i18n['label.profile_page.personalData.gender.male']}</option>
                                <option value="1">${i18n['label.profile_page.personalData.gender.female']}</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.personalData.site']}:</td>
                        <td>
                            <input type="text" class="jSaveData" name="siteUrl" maxlength="255"/>
                            <span class="cClearBtn jClearBtn">
                                <img src="/images/clear-button.png" alt="clear"/>
                            </span>
                        </td>
                    </tr>
                    <tr class="cLast">
                        <td class="cLabel">${i18n['label.profile_page.personalData.birthday']}:</td>
                        <td>
                            <input type="text" class="jSaveData jCalendar" readonly="readonly" name="birthDay"/>
                            <span class="cClearBtn cCalendar">
                                <img src="/images/calendar.gif" alt="clear"/>
                            </span>
                        </td>
                    </tr>
                </table>
                <div class="cDottet">
                    <table border="0">
                        <tr>
                            <td class="cLabel">${i18n['label.profile_page.personalData.skype']}:</td>
                            <td>
                                <input type="text" class="jSaveData" name="skypeId" maxlength="255"/>
                                <span class="cClearBtn jClearBtn">
                                    <img src="/images/clear-button.png" alt="clear"/>
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td class="cLabel">${i18n['label.profile_page.personalData.phone']}:</td>
                            <td>
                                <input type="text" class="jSaveData" name="phone" maxlength="255"/>
                                <span class="cClearBtn jClearBtn">
                                    <img src="/images/clear-button.png" alt="clear"/>
                                </span>
                            </td>
                        </tr>
                        <tr class="cLast">
                            <td class="cLabel">${i18n['label.profile_page.personalData.mobilePhone']}:</td>
                            <td>
                                <input type="text" class="jSaveData" name="cellPhone" maxlength="255"/>
                                <span class="cClearBtn jClearBtn">
                                    <img src="/images/clear-button.png" alt="clear"/>
                                </span>
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
                            <select name="countryId" class="jSaveData jSelect" style="float:left;">
                            </select>
                        </td>
                    </tr>
                    <tr class="cLast">
                        <td class="cLabel">${i18n['label.profile_page.locations.city']}:</td>
                        <td>
                            <select name="city" class="jSaveData jSelect" style="float:left;">

                            </select>
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
                            <select name="currentCountryId" class="jSaveData jSelect" style="float:left;">

                            </select>
                        </td>
                    </tr>
                    <tr class="cLast">
                        <td class="cLabel">${i18n['label.profile_page.location.city']}:</td>
                        <td>
                            <select name="currentCity" class="jSaveData jSelect" style="float:left;">

                            </select>
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
                        <td class="cLabel">${i18n['label.profile_page.languages.firstLang']}:</td>
                        <td>
                            <select name="firstLanguageId" class="jSaveData jSelect" style="float:left;">
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.languages.secondLang']}:</td>
                        <td>
                            <select name="secondLanguageId" class="jSaveData jSelect" style="float:left;">
                            </select>
                        </td>
                    </tr>
                    <tr class="cLast">
                        <td class="cLabel">${i18n['label.profile_page.languages.thirdLang']}:</td>
                        <td>
                            <select name="thirdLanguageId" class="jSaveData jSelect" style="float:left;">
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
                            <select name="occupationId" class="jSaveData jSelect" style="float:left;">

                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.aboutMe']}:</td>
                        <td colspan="3">
                            <textarea name="aboutMe" class="jSaveData"></textarea>
                            <span class="cClearBtn jClearBtn">
                                <img src="/images/clear-button.png" alt="clear"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.familyStatus']}:</td>
                        <td colspan="3">
                            <input type="text" class="jSaveData" name="familyStatus" maxlength="255"/>
                            <span class="cClearBtn jClearBtn">
                                <img src="/images/clear-button.png" alt="clear"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.body']}:</td>
                        <td colspan="3">
                            <select name="bodyId" class="jSaveData jSelect" style="float:left;"/>
                            <span class="cClearBtn jClearBtn">
                                <img src="/images/clear-button.png" alt="clear"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.height']}:</td>
                        <td style="width: 43px;">
                            <input type="text" class="jSaveData" name="height" maxlength="255"/>
                            <span class="cClearBtn jClearBtn">
                                <img src="/images/clear-button.png" alt="clear"/>
                            </span>
                        </td>
                        <td class="cLabel">${i18n['label.profile_page.more.weight']}:</td>
                        <td style="width: 45px;">
                            <input type="text" class="jSaveData" name="width" maxlength="255"/>
                            <span class="cClearBtn jClearBtn">
                                <img src="/images/clear-button.png" alt="clear"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.appearance']}:</td>
                        <td colspan="3">
                            <input type="text" class="jSaveData" name="appearance" maxlength="255"/>
                            <span class="cClearBtn jClearBtn">
                                <img src="/images/clear-button.png" alt="clear"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.lifePriorities']}:</td>
                        <td colspan="3">
                            <input type="text" class="jSaveData" name="lifeGoals" maxlength="255"/>
                            <span class="cClearBtn jClearBtn">
                                <img src="/images/clear-button.png" alt="clear"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.interest']}:</td>
                        <td colspan="3">
                            <input type="text" class="jSaveData" name="interest" maxlength="255"/>
                            <span class="cClearBtn jClearBtn">
                                <img src="/images/clear-button.png" alt="clear"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.music']}:</td>
                        <td colspan="3">
                            <input type="text" class="jSaveData" name="music" maxlength="255"/>
                            <span class="cClearBtn jClearBtn">
                                <img src="/images/clear-button.png" alt="clear"/>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.more.movies']}:</td>
                        <td colspan="3">
                            <input type="text" class="jSaveData" name="movies" maxlength="255"/>
                            <span class="cClearBtn jClearBtn">
                                <img src="/images/clear-button.png" alt="clear"/>
                            </span>
                        </td>
                    </tr>
                    <tr class="cLast">
                        <td class="cLabel">${i18n['label.profile_page.more.books']}:</td>
                        <td colspan="3">
                            <input type="text" class="jSaveData" name="books" maxlength="255"/>
                            <span class="cClearBtn jClearBtn">
                                <img src="/images/clear-button.png" alt="clear"/>
                            </span>
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
                window.onload = getProfile();
                $('select[name=is_male]').selectmenu();
                jQuery(document).ready(function() {
                    $(".jSaveData").focusout(function() {
                        saveProfile();
                    });
                    $('select[name!=is_male]').change(function() {
                        saveProfile();
                    });

                    $('span.jClearBtn')
                            .hover(
                            function() {
                                $(this).find('img').css('display', 'inline');
                            },
                            function() {
                                $(this).find('img').css('display', 'none');
                            }
                    )
                            .click(function() {
                                $(this).siblings('input').val('');
                                $(this).siblings('textarea').val('');
                                saveProfile();
                            });


                    $('.jCalendar').datepicker({
                                yearRange: '1930:2000',
                                showAnim: 'slideDown',
                                changeMonth: true,
                                changeYear: true,
                                dateFormat: 'dd.mm.yy'
                            });
                });


                function getProfile() {

                    $.ajax({
                                type:'get',
                                url: '/rest/user/profile',
                                contentType: "application/json; charset=utf-8",
                                error: function(request, error) {
                                    console.log(request);
                                    console.log.apply(error);
                                },
                                success: function(request) {
                                    if (request.success == 'true') {
                                        $('textarea[name=aboutMe]').val(request.data.aboutMe);
                                        $('select[name=is_male]').val(request.data.female);
                                        $('input[name=appearance]').val(request.data.appearance);
                                        $('input[name=birthDay]').val(request.data.birthDay);
                                        $('input[name=books]').val(request.data.books);
                                        $('input[name=cellPhone]').val(request.data.cellPhone);
                                        $('input[name=familyStatus]').val(request.data.familyStatus);
                                        $('select[name=firstLanguageId]').val(request.data.firstLanguageId);
                                        $('input[name=firstName]').val(request.data.firstName);
                                        $('input[name=height]').val(request.data.height);
                                        $('input[name=interest]').val(request.data.interest);
                                        $('input[name=lastName]').val(request.data.lastName);
                                        $('input[name=lifeGoals]').val(request.data.lifeGoals);
                                        $('input[name=movies]').val(request.data.movies);
                                        $('input[name=music]').val(request.data.music);
                                        $('input[name=phone]').val(request.data.phone);
                                        $('input[name=siteUrl]').val(request.data.siteUrl);
                                        $('input[name=skypeId]').val(request.data.skypeId);
                                        $('input[name=width]').val(request.data.width);

                                        if (!isEmpty(request.data.cityId)) {
                                            $('select[name=city]').html('<option value="' + request.data.cityId + '">' + request.data.cityName + '</option>')
                                                    .val(request.data.cityId)
                                                    .selectmenu();
                                        }

                                        if (!isEmpty(request.data.currentCityId)) {
                                            $('select[name=city]').html('<option value="' + request.data.currentCityId + '">' + request.data.currentCityName + '</option>')
                                                    .val(request.data.cityId)
                                                    .selectmenu();
                                        }

                                        $.getJSON('/rest/search/countries', function(objJson) {
                                            var items = [];
                                            $.each(objJson.data, function(key, val) {
                                                items.push('<option value="' + val.itemId + '">' + val.itemName + '</option>');
                                            });
                                            $('select[name=countryId]').html(items.join('')).val(request.data.countryId).selectmenu();
                                            $('select[name=currentCountryId]').html(items.join('')).val(request.data.currentCountryId).selectmenu();
                                        });

                                        /*
                                         $.getJSON('/rest/search/countries', function(objJson) {
                                         var items = [];
                                         $.each(objJson.data, function(key, val) {
                                         items.push('<option value="' + val.itemId + '">' + val.itemName + '</option>');
                                         });

                                         $('select[name=city]').html(items.join('')).val(request.data.city).selectmenu();
                                         $('select[name=currentCity]').html(items.join('')).val(request.data.currentCity).selectmenu();

                                         });
                                         */
                                        $.getJSON('/rest/search/language', function(objJson) {
                                            var items = [];
                                            $.each(objJson.data, function(key, val) {
                                                items.push('<option value="' + val.itemId + '">' + val.itemName + '</option>');
                                            });

                                            $('select[name=firstLanguageId]').html(items.join('')).val(request.data.firstLanguageId).selectmenu();
                                            $('select[name=secondLanguageId]').html(items.join('')).val(request.data.secondLanguageId).selectmenu();
                                            $('select[name=thirdLanguageId]').html(items.join('')).val(request.data.thirdLanguageId).selectmenu();
                                        });
                                        $.getJSON('/rest/search/body', function(objJson) {
                                            var items = [];
                                            $.each(objJson.data, function(key, val) {
                                                items.push('<option value="' + val.itemId + '">' + val.itemName + '</option>');
                                            });

                                            $('select[name=bodyId]').html(items.join('')).val(request.data.bodyId).selectmenu();
                                        });
                                        $.getJSON('/rest/search/profession', function(objJson) {
                                            var items = [];
                                            $.each(objJson.data, function(key, val) {
                                                items.push('<option value="' + val.itemId + '">' + val.itemName + '</option>');
                                            });

                                            $('select[name=occupationId]').html(items.join('')).val(request.data.occupationId).selectmenu();
                                        });

                                    } else {
                                        return onServerError(request);
                                    }
                                }
                            });

                    return false;
                }


                function saveProfile() {
                    var requestData = {"data":{
                        "aboutMe": $('textarea[name=aboutMe]').val(),
                        "female": $('select[name=is_male]').val(),
                        "bodyId": $('select[name=bodyId]').val(),
                        "appearance": $('input[name=appearance]').val(),
                        "birthDay": $('input[name=birthDay]').val(),
                        "books": $('input[name=books]').val(),
                        "cellPhone": $('input[name=cellPhone]').val(),
                        "city": $('input[name=city]').val(),
                        "countryId": $('select[name=countryId]').val(),
                        "currentCity": $('input[name=currentCity]').val(),
                        "currentCountryId": $('select[name=currentCountryId]').val(),
                        "familyStatus": $('input[name=familyStatus]').val(),
                        "firstLanguageId": $('select[name=firstLanguageId]').val(),
                        "firstName":  $('input[name=firstName]').val(),
                        "height":  $('input[name=height]').val(),
                        "interest":  $('input[name=interest]').val(),
                        "lastName":  $('input[name=lastName]').val(),
                        "lifeGoals":  $('input[name=lifeGoals]').val(),
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
                                url: '/rest/user/profile',
                                contentType: "application/json; charset=utf-8",
                                data:  textData,
                                error: function(response, error) {
                                    console.log(response);
                                    console.log(error);
                                },
                                success: function(request) {
                                    if (request.success != 'true') {
                                        return onServerError(request);
                                    }
                                }
                            });
                    return false;
                }
            </script>
        </div>
    </jsp:attribute>
</tags:main>