<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
    <jsp:attribute name="center">
        <jsp:include page="/WEB-INF/jsp/includes/topmenu.jsp"/>
        <div class="cPage">
            <form action="" name="">
                <div class="cColumn">
                    <h3>${i18n['label.profile_page.personalData']}</h3>
                    <div class="cFormBlock">
                        <table border="0">
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.personalData.name']}:</td>
                                <td>
                                    <input type="text" name="first_name" maxlength="255" />
                                </td>
                            </tr>
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.personalData.lastName']}:</td>
                                <td>
                                    <input type="text" name="last_name" maxlength="255" />
                                </td>
                            </tr>
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.personalData.gender']}:</td>
                                <td>
                                    <select name="sex"  style="float:left;" class="jSelect">
										<option value="X">re</option>
										<option value="M">dsds</option>
										<option value="F">dasda</option>
									</select>
                                </td>
                            </tr>
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.personalData.site']}:</td>
                                <td>
                                    <input type="text" name="user_site" maxlength="255" />
                                </td>
                            </tr>
                            <tr class="cLast">
                                <td class="cLabel">${i18n['label.profile_page.personalData.birthday']}:</td>
                                <td>
                                    <input type="text" name="birthday" maxlength="255" />
                                </td>
                            </tr>
                        </table>
                        <div class="cDottet">
                            <table border="0">
                                <tr>
                                    <td class="cLabel">${i18n['label.profile_page.personalData.skype']}:</td>
                                    <td>
                                        <input type="text" name="user_skype" maxlength="255" />
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
                                        <input type="text" name="user_phone" maxlength="255" />
                                    </td>
                                </tr>
                                <tr class="cLast">
                                    <td class="cLabel">${i18n['label.profile_page.personalData.mobilePhone']}:</td>
                                    <td>
                                        <input type="text" name="user_mobile" maxlength="255" />
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
                                    <select name="residence_country"  style="float:left;" class="jSelect">
										
									</select>
                                </td>
                            </tr>
                            <tr class="cLast">
                                <td class="cLabel">${i18n['label.profile_page.locations.city']}:</td>
                                <td>
                                    <input type="text" name="residence_city" maxlength="255" />
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
                                    <select name="current_country"  style="float:left;" class="jSelect">
										
									</select>
                                </td>
                            </tr>
                            <tr class="cLast">
                                <td class="cLabel">${i18n['label.profile_page.location.city']}:</td>
                                <td>
                                    <input type="text" name="current_city" maxlength="255" />
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
                                    <select name="language"  style="float:left;" class="jSelect">
										
									</select>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <select name="language"  style="float:left;" class="jSelect">
										
									</select>
                                </td>
                            </tr>
                            <tr class="cLast">
                                <td colspan="2">
                                    <select name="language"  style="float:left;" class="jSelect">
										
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
                                    <select name="profession"  style="float:left;" class="jSelect">
										
									</select>
                                </td>
                            </tr>
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.more.aboutMe']}:</td>
                                <td colspan="3">
                                    <textarea name="about"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.more.physique']}:</td>
                                <td colspan="3">
                                    <select name="user_family_status"  style="float:left;" class="jSelect">
										
									</select>
                                </td>
                            </tr>
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.more.physique']}:</td>
                                <td colspan="3">
                                    <input type="text" name="user_body_complection" maxlength="255" />
                                </td>
                            </tr>
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.more.growth']}:</td>
                                <td style="width: 40px;">
                                    <input type="text" name="user_height" maxlength="255" />
                                </td>
                                <td class="cLabel">${i18n['label.profile_page.more.weight']}:</td>
                                <td style="width: 40px;">
                                    <input type="text" name="user_weight" maxlength="255" />
                                </td>
                            </tr>
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.more.appearance']}:</td>
                                <td colspan="3">
                                    <input type="text" name="user_look" maxlength="255" />
                                </td>
                            </tr>
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.more.lifePriorities']}:</td>
                                <td colspan="3">
                                    <input type="text" name="user_priority" maxlength="255" />
                                </td>
                            </tr>
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.more.interest']}:</td>
                                <td colspan="3">
                                    <input type="text" name="user_interests" maxlength="255" />
                                </td>
                            </tr>
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.more.music']}:</td>
                                <td colspan="3">
                                    <input type="text" name="user_music" maxlength="255" />
                                </td>
                            </tr>
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.more.movies']}:</td>
                                <td colspan="3">
                                    <input type="text" name="user_movies" maxlength="255" />
                                </td>
                            </tr>
                            <tr>
                                <td class="cLabel">${i18n['label.profile_page.more.books']}:</td>
                                <td colspan="3">
                                    <input type="text" name="user_books" maxlength="255" />
                                </td>
                            </tr>                           
                        </table>
                    </div>
                </div>
                <div class="cClear"></div>
            </form>
        </div>
        
        <div style="height: 600px;">
            <a href="${baseAppUrl}/html/profile">Profile</a>
            <input type="submit" value="GET" onclick="return onClick(this)"/>
            <input type="submit" value="PUT" onclick="return onPutClick(this)"/>
            <script type="text/javascript">
                jQuery(document).ready(function(){
                    $('select.jSelect').selectmenu();	
                });
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