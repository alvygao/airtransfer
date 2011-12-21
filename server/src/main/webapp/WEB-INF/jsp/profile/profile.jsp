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
                                    <input type="text" name="fistName" maxlength="255" />
                                </td>
                            </tr>
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.personalData.lastName']}:</td>
                                <td>
                                    <input type="text" name="lastName" maxlength="255" />
                                </td>
                            </tr>
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.personalData.gender']}:</td>
                                <td>
                                    <select name="sex"  style="float:left;" class="jSelect">
										<option value="0">${i18n['label.profile_page.personalData.gender.male']}</option>
										<option value="1">${i18n['label.profile_page.personalData.gender.female']}</option>
									</select>
                                </td>
                            </tr>
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.personalData.site']}:</td>
                                <td>
                                    <input type="text" name="siteUrl" maxlength="255" />
                                </td>
                            </tr>
                            <tr class="cLast">
                                <td class="cLabel">${i18n['label.profile_page.personalData.birthday']}:</td>
                                <td>
                                    <input type="text" name="bithday" maxlength="255" />
                                </td>
                            </tr>
                        </table>
                        <div class="cDottet">
                            <table border="0">
                                <tr>
                                    <td class="cLabel">${i18n['label.profile_page.personalData.skype']}:</td>
                                    <td>
                                        <input type="text" name="skypeId" maxlength="255" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="cLabel">${i18n['label.profile_page.personalData.email']}:</td>
                                    <td>
                                        <input type="text" name="user_email" maxlength="255" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="cLabel">${i18n['label.profile_page.personalData.phone']}:</td>
                                    <td>
                                        <input type="text" name="phone" maxlength="255" />
                                    </td>
                                </tr>
                                <tr class="cLast">
                                    <td class="cLabel">${i18n['label.profile_page.personalData.mobilePhone']}:</td>
                                    <td>
                                        <input type="text" name="cellPhone" maxlength="255" />
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
                                    <select name="country"  style="float:left;" class="jSelect">
										
									</select>
                                </td>
                            </tr>
                            <tr class="cLast">
                                <td class="cLabel">${i18n['label.profile_page.locations.city']}:</td>
                                <td>
                                    <input type="text" name="city" maxlength="255" />
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
                                    <select name="currentCountry"  style="float:left;" class="jSelect">
										
									</select>
                                </td>
                            </tr>
                            <tr class="cLast">
                                <td class="cLabel">${i18n['label.profile_page.location.city']}:</td>
                                <td>
                                    <input type="text" name="currentCity" maxlength="255" />
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
                                    <select name="firstLanguage"  style="float:left;" class="jSelect">
										
									</select>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <select name="secondLanguage"  style="float:left;" class="jSelect">
										
									</select>
                                </td>
                            </tr>
                            <tr class="cLast">
                                <td colspan="2">
                                    <select name="thirdLanguage"  style="float:left;" class="jSelect">
										
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
                                    <select name="occupation"  style="float:left;" class="jSelect">
										
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
                                    <input type="text" name="familyStatus" maxlength="255" />
                                </td>
                            </tr>
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.more.body']}:</td>
                                <td colspan="3">
                                    <input type="text" name="body" maxlength="255" />
                                </td>
                            </tr>
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.more.height']}:</td>
                                <td style="width: 40px;">
                                    <input type="text" name="height" maxlength="255" />
                                </td>
                                <td class="cLabel">${i18n['label.profile_page.more.weight']}:</td>
                                <td style="width: 40px;">
                                    <input type="text" name="width" maxlength="255" />
                                </td>
                            </tr>
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.more.appearance']}:</td>
                                <td colspan="3">
                                    <input type="text" name="appearance" maxlength="255" />
                                </td>
                            </tr>
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.more.lifePriorities']}:</td>
                                <td colspan="3">
                                    <input type="text" name="lifeGoals" maxlength="255" />
                                </td>
                            </tr>
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.more.interest']}:</td>
                                <td colspan="3">
                                    <input type="text" name="interest" maxlength="255" />
                                </td>
                            </tr>
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.more.music']}:</td>
                                <td colspan="3">
                                    <input type="text" name="music" maxlength="255" />
                                </td>
                            </tr>
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.more.movies']}:</td>
                                <td colspan="3">
                                    <input type="text" name="movies" maxlength="255" />
                                </td>
                            </tr>
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.more.books']}:</td>
                                <td colspan="3">
                                    <input type="text" name="books" maxlength="255" />
                                </td>
                            </tr>                           
                        </table>
                    </div>
                </div>
                <input type="submit" value="Save" onclick="return onPutClick(this)" />
                <div class="cClear"></div>
            </form>
        </div>
        
        <div style="height: 20px; display: none;">
            <a href="${baseAppUrl}/html/profile">Profile</a>
            <input type="submit" value="GET" onclick="return onClick(this)"/>
            <input type="submit" value="PUT" onclick="return onPutClick(this)"/>
            <script type="text/javascript">
                jQuery(document).ready(function(){
                    $('select.jSelect').selectmenu();
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
                    //var requestData = {"data":{"aboutMe":"aboutMe123","appearance":"appearance123","birthDay":"20.12.2011","body":"body123","books":"books123","cellPhone":"cellPhone","city":"city","country":"country","currentCity":"current city","currentCountry":"current country","familyStatus":"family status","firstLanguage":"first language","fistName":"first name","height":"175.4","interest":"interest","lastName":"last name","lifeGoals":"goals","male":"true","movies":"movies","music":"music","occupation":"occupation","phone":"phone","secondLanguage":"secondLanguage","siteUrl":"site url","skypeId":"skype id","thirdLanguage":"third language","width":"75.5"}};
                    var requestData = '{"data":{';
                    $('#jProfileForm input, select, texarea').each(function(n, element){
                        if( $(element).attr('type') != 'button'); {
                            requestData += '"' + $(element).attr('name') +'": "'+$(element).val()+'",';
                        }
                    });
                    requestData += '}}';
                    //requestData = JSON.stringify(requestData);
                    $.ajax({
                        type:'put',
                        url: APP_BASE_URL + '/rest/user/profile',
                        contentType: "application/json; charset=utf-8",
                        data: requestData,
                        error: function(request, error) {
                            alert(request);
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