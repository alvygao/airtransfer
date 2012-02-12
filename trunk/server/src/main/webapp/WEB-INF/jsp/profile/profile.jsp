<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
<jsp:attribute name="head">
    <link rel="stylesheet" href="${baseAppUrl}/css/flags.css" type="text/css"/>
</jsp:attribute>
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
                        <input style="text-transform: uppercase" type="text" class="jSaveData" name="firstName" maxlength="255"/>
                            <span class="cClearBtn jClearBtn">
                                <img src="/images/clear-button.png" alt="clear"/>
                            </span>
                    </td>
                </tr>
                <tr>
                    <td class="cLabel">${i18n['label.profile_page.personalData.lastName']}:</td>
                    <td>
                        <input style="text-transform: uppercase" type="text" class="jSaveData" name="lastName" maxlength="255"/>
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

                <tr class="cLast">
                    <td class="cLabel">${i18n['label.profile_page.personalData.birthday']}:</td>
                    <td>
                        <!-- iPad datepicker fix ? -->
                        <input onclick="" id="birthDay" type="text" class="jCalendar" readonly="readonly" name="birthDay"/>
                            <span class="cClearBtn cCalendar">
                                <img src="/images/calendar.gif" alt="clear"/>
                            </span>
                    </td>
                </tr>
            </table>
            <div class="cDottet">
                <table border="0">
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.personalData.site']}:</td>
                        <td>
                            <input type="text" class="jSaveData" name="siteUrl" maxlength="255"/>
                                <span class="cClearBtn jClearBtn">
                                    <img src="/images/clear-button.png" alt="clear"/>
                                </span>
                        </td>
                    </tr>
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
                        <td class="cLabel">${i18n['label.profile_page.personalData.email']}:</td>
                        <td>
                            <input type="text" class="jSaveData" name="cellPhone" maxlength="255"/>
                                <span class="cClearBtn jClearBtn">
                                    <img src="/images/clear-button.png" alt="clear"/>
                                </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.personalData.facebook']}:</td>
                        <td>
                            <input type="text" class="jSaveData" name="facebook" maxlength="255"/>
                                <span class="cClearBtn jClearBtn">
                                    <img src="/images/clear-button.png" alt="clear"/>
                                </span>
                        </td>
                    </tr>

                    <tr>
                        <td class="cLabel">${i18n['label.profile_page.personalData.twitter']}:</td>
                        <td>
                            <input type="text" class="jSaveData" name="twitter" maxlength="255"/>
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
        <option class=" c_AF" value="1">Afghanistan [AF]</option>
        <option class=" c_AL" value="2">Albania [AL]</option>
        <option class=" c_DZ" value="3">Algeria [DZ]</option>
        <option class=" c_AS" value="4">American Samoa [AS]</option>
        <option class=" c_AD" value="5">Andorra [AD]</option>
        <option class=" c_AO" value="6">Angola [AO]</option>
        <option class=" c_AI" value="7">Anguilla [AI]</option>
        <option class=" c_AQ" value="8">Antarctica [AQ]</option>
        <option class=" c_AG" value="9">Antigua And Barbuda [AG]</option>
        <option class=" c_AR" value="10">Argentina [AR]</option>
        <option class=" c_AM" value="11">Armenia [AM]</option>
        <option class=" c_AW" value="12">Aruba [AW]</option>
        <option class=" c_AU" value="13">Australia [AU]</option>
        <option class=" c_AT" value="14">Austria [AT]</option>
        <option class=" c_AZ" value="15">Azerbaijan [AZ]</option>
        <option class=" c_BS" value="16">Bahamas [BS]</option>
        <option class=" c_BH" value="17">Bahrain [BH]</option>
        <option class=" c_BD" value="18">Bangladesh [BD]</option>
        <option class=" c_BB" value="19">Barbados [BB]</option>
        <option class=" c_BY" value="20">Belarus [BY]</option>
        <option class=" c_BE" value="21">Belgium [BE]</option>
        <option class=" c_BZ" value="22">Belize [BZ]</option>
        <option class=" c_BJ" value="23">Benin [BJ]</option>
        <option class=" c_BM" value="24">Bermuda [BM]</option>
        <option class=" c_BT" value="25">Bhutan [BT]</option>
        <option class=" c_BO" value="26">Bolivia [BO]</option>
        <option class=" c_BA" value="27">Bosnia And Herzegovina [BA]</option>
        <option class=" c_BW" value="28">Botswana [BW]</option>
        <option class=" c_BR" value="29">Brazil [BR]</option>
        <option class=" c_VG" value="30">British Virgin Islands [VG]</option>
        <option class=" c_BN" value="31">Brunei Darussalam [BN]</option>
        <option class=" c_BG" value="32">Bulgaria [BG]</option>
        <option class=" c_BF" value="33">Burkina Faso [BF]</option>
        <option class=" c_BI" value="34">Burundi [BI]</option>
        <option class=" c_KH" value="35">Cambodia [KH]</option>
        <option class=" c_CM" value="36">Cameroon [CM]</option>
        <option class=" c_CA" value="37">Canada [CA]</option>
        <option class=" c_CV" value="38">Cape Verde [CV]</option>
        <option class=" c_KY" value="39">Cayman Islands [KY]</option>
        <option class=" c_CF" value="40">Central African Republic [CF]</option>
        <option class=" c_TD" value="41">Chad [TD]</option>
        <option class=" c_CL" value="42">Chile [CL]</option>
        <option class=" c_CN" value="43">China [CN]</option>
        <option class=" c_CX" value="44">Christmas Island [CX]</option>
        <option class=" c_CC" value="45">Cocos (Keeling) Islands [CC]</option>
        <option class=" c_CO" value="46">Colombia [CO]</option>
        <option class=" c_KM" value="47">Comoros [KM]</option>
        <option class=" c_CG" value="48">Congo [CG]</option>
        <option class=" c_CK" value="49">Cook Islands [CK]</option>
        <option class=" c_CR" value="50">Costa Rica [CR]</option>
        <option class=" c_CI" value="51">Cote D' Ivoire [CI]</option>
        <option class=" c_HR" value="52">Croatia [HR]</option>
        <option class=" c_CU" value="53">Cuba [CU]</option>
        <option class=" c_CY" value="54">Cyprus [CY]</option>
        <option class=" c_CZ" value="55">Czech Republic [CZ]</option>
        <option class=" c_CD" value="56">Democratic Republic Of Congo [CD]</option>
        <option class=" c_DK" value="57">Denmark [DK]</option>
        <option class=" c_DJ" value="58">Djibouti [DJ]</option>
        <option class=" c_DM" value="59">Dominica [DM]</option>
        <option class=" c_DO" value="60">Dominican Republic [DO]</option>
        <option class=" c_TP" value="61">East Timor-Indonesia [TP]</option>
        <option class=" c_EC" value="62">Ecuador [EC]</option>
        <option class=" c_EG" value="63">Egypt [EG]</option>
        <option class=" c_SV" value="64">El Salvador [SV]</option>
        <option class=" c_GQ" value="65">Equatorial Guinea [GQ]</option>
        <option class=" c_ER" value="66">Eritrea [ER]</option>
        <option class=" c_EE" value="67">Estonia [EE]</option>
        <option class=" c_ET" value="68">Ethiopia [ET]</option>
        <option class=" c_FK" value="69">Falkland Islands [FK]</option>
        <option class=" c_FO" value="70">Faroe Islands [FO]</option>
        <option class=" c_FM" value="71">Federated States of Micronesia [FM]</option>
        <option class=" c_FJ" value="72">Fiji [FJ]</option>
        <option class=" c_FI" value="73">Finland [FI]</option>
        <option class=" c_FR" value="74">France [FR]</option>
        <option class=" c_GF" value="75">French Guiana [GF]</option>
        <option class=" c_PF" value="76">French Polynesia [PF]</option>
        <option class=" c_GA" value="77">Gabon [GA]</option>
        <option class=" c_GM" value="78">Gambia [GM]</option>
        <option class=" c_GE" value="79">Georgia [GE]</option>
        <option class=" c_DE" value="80">Germany [DE]</option>
        <option class=" c_GH" value="81">Ghana [GH]</option>
        <option class=" c_GI" value="82">Gibraltar [GI]</option>
        <option class=" c_GR" value="83">Greece [GR]</option>
        <option class=" c_GL" value="84">Greenland [GL]</option>
        <option class=" c_GD" value="85">Grenada [GD]</option>
        <option class=" c_GP" value="86">Guadeloupe [GP]</option>
        <option class=" c_GU" value="87">Guam (USA) [GU]</option>
        <option class=" c_GT" value="88">Guatemala [GT]</option>
        <option class=" c_GG" value="89">Guernsey [GG]</option>
        <option class=" c_GN" value="90">Guinea [GN]</option>
        <option class=" c_GW" value="91">Guinea-Bissau [GW]</option>
        <option class=" c_GY" value="92">Guyana [GY]</option>
        <option class=" c_HT" value="93">Haiti [HT]</option>
        <option class=" c_HN" value="94">Honduras [HN]</option>
        <option class=" c_HK" value="95">Hong Kong [HK]</option>
        <option class=" c_HU" value="96">Hungary [HU]</option>
        <option class=" c_IS" value="97">Iceland [IS]</option>
        <option class=" c_IN" value="98">India [IN]</option>
        <option class=" c_ID" value="99">Indonesia [ID]</option>
        <option class=" c_IR" value="100">Iran [IR]</option>
        <option class=" c_IQ" value="101">Iraq [IQ]</option>
        <option class=" c_IE" value="102">Ireland [IE]</option>
        <option class=" c_IM" value="103">Isle of Man [IM]</option>
        <option class=" c_IL" value="104">Israel [IL]</option>
        <option class=" c_IT" value="105">Italy [IT]</option>
        <option class=" c_JM" value="106">Jamaica [JM]</option>
        <option class=" c_JP" value="107">Japan [JP]</option>
        <option class=" c_JE" value="108">Jersey [JE]</option>
        <option class=" c_JO" value="109">Jordan [JO]</option>
        <option class=" c_KZ" value="110">Kazakhstan [KZ]</option>
        <option class=" c_KE" value="111">Kenya [KE]</option>
        <option class=" c_KI" value="112">Kiribati [KI]</option>
        <option class=" c_KP" value="113">Korea (North) [KP]</option>
        <option class=" c_KR" value="114">Korea (South) [KR]</option>
        <option class=" c_KW" value="115">Kuwait [KW]</option>
        <option class=" c_KG" value="116">Kyrgyzstan [KG]</option>
        <option class=" c_LA" value="117">Laos [LA]</option>
        <option class=" c_LV" value="118">Latvia [LV]</option>
        <option class=" c_LB" value="119">Lebanon [LB]</option>
        <option class=" c_LS" value="120">Lesotho [LS]</option>
        <option class=" c_LR" value="121">Liberia [LR]</option>
        <option class=" c_LY" value="122">Libya [LY]</option>
        <option class=" c_LT" value="123">Lithuania [LT]</option>
        <option class=" c_LU" value="124">Luxembourg [LU]</option>
        <option class=" c_MO" value="125">Macau [MO]</option>
        <option class=" c_MK" value="126">Macedonia [MK]</option>
        <option class=" c_MG" value="127">Madagascar [MG]</option>
        <option class=" c_MW" value="128">Malawi [MW]</option>
        <option class=" c_MY" value="129">Malaysia [MY]</option>
        <option class=" c_MV" value="130">Maldives [MV]</option>
        <option class=" c_ML" value="131">Mali [ML]</option>
        <option class=" c_MT" value="132">Malta [MT]</option>
        <option class=" c_MH" value="133">Marshall Islands [MH]</option>
        <option class=" c_MQ" value="134">Martinique [MQ]</option>
        <option class=" c_MR" value="135">Mauritania [MR]</option>
        <option class=" c_MU" value="136">Mauritius [MU]</option>
        <option class=" c_MX" value="137">Mexico [MX]</option>
        <option class=" c_MD" value="138">Moldova [MD]</option>
        <option class=" c_MC" value="139">Monaco [MC]</option>
        <option class=" c_MN" value="140">Mongolia [MN]</option>
        <option class=" c_ME" value="141">Montenegro [ME]</option>
        <option class=" c_MS" value="142">Montserrat [MS]</option>
        <option class=" c_MA" value="143">Morocco [MA]</option>
        <option class=" c_MZ" value="144">Mozambique [MZ]</option>
        <option class=" c_MM" value="145">Myanmar [MM]</option>
        <option class=" c_NA" value="146">Namibia [NA]</option>
        <option class=" c_NR" value="147">Nauru [NR]</option>
        <option class=" c_NP" value="148">Nepal [NP]</option>
        <option class=" c_NL" value="149">Netherlands [NL]</option>
        <option class=" c_AN" value="150">Netherlands Antilles [AN]</option>
        <option class=" c_NC" value="151">New Caledonia [NC]</option>
        <option class=" c_NZ" value="152">New Zealand [NZ]</option>
        <option class=" c_NI" value="153">Nicaragua [NI]</option>
        <option class=" c_NE" value="154">Niger [NE]</option>
        <option class=" c_NG" value="155">Nigeria [NG]</option>
        <option class=" c_NU" value="156">Niue [NU]</option>
        <option class=" c_NF" value="157">Norfolk Island [NF]</option>
        <option class=" c_MP" value="158">Northern Mariana Islands [MP]</option>
        <option class=" c_NO" value="159">Norway [NO]</option>
        <option class=" c_OM" value="160">Oman [OM]</option>
        <option class=" c_PK" value="161">Pakistan [PK]</option>
        <option class=" c_PW" value="162">Palau [PW]</option>
        <option class=" c_PA" value="163">Panama [PA]</option>
        <option class=" c_PG" value="164">Papua New Guinea [PG]</option>
        <option class=" c_PY" value="165">Paraguay [PY]</option>
        <option class=" c_PE" value="166">Peru [PE]</option>
        <option class=" c_PH" value="167">Philippines [PH]</option>
        <option class=" c_PL" value="168">Poland [PL]</option>
        <option class=" c_PT" value="169">Portugal [PT]</option>
        <option class=" c_PR" value="170">Puerto Rico [PR]</option>
        <option class=" c_QA" value="171">Qatar [QA]</option>
        <option class=" c_RE" value="172">Reunion [RE]</option>
        <option class=" c_RO" value="173">Romania [RO]</option>
        <option class=" c_RU" value="174">Russian Federation [RU]</option>
        <option class=" c_RW" value="175">Rwanda [RW]</option>
        <option class=" c_KN" value="176">Saint Kitts and Nevis [KN]</option>
        <option class=" c_LC" value="177">Saint Lucia [LC]</option>
        <option class=" c_VC" value="178">Saint Vincent and the Grenadines [VC]</option>
        <option class=" c_WS" value="179">Samoa [WS]</option>
        <option class=" c_ST" value="180">Sao Tome and Principe [ST]</option>
        <option class=" c_SA" value="181">Saudi Arabia [SA]</option>
        <option class=" c_SN" value="182">Senegal [SN]</option>
        <option class=" c_RS" value="183">Serbia [RS]</option>
        <option class=" c_SC" value="184">Seychelles [SC]</option>
        <option class=" c_SL" value="185">Sierra Leone [SL]</option>
        <option class=" c_SG" value="186">Singapore [SG]</option>
        <option class=" c_SK" value="187">Slovakia [SK]</option>
        <option class=" c_SI" value="188">Slovenia [SI]</option>
        <option class=" c_SB" value="189">Solomon Islands [SB]</option>
        <option class=" c_SO" value="190">Somalia [SO]</option>
        <option class=" c_ZA" value="191">South Africa [ZA]</option>
        <option class=" c_ES" value="192">Spain [ES]</option>
        <option class=" c_LK" value="193">Sri Lanka [LK]</option>
        <option class=" c_SH" value="194">St. Helena [SH]</option>
        <option class=" c_PM" value="195">St. Pierre and Miquelon [PM]</option>
        <option class=" c_SD" value="196">Sudan [SD]</option>
        <option class=" c_SR" value="197">Suriname [SR]</option>
        <option class=" c_SZ" value="198">Swaziland [SZ]</option>
        <option class=" c_SE" value="199">Sweden [SE]</option>
        <option class=" c_CH" value="200">Switzerland [CH]</option>
        <option class=" c_SY" value="201">Syria [SY]</option>
        <option class=" c_TW" value="202">Taiwan [TW]</option>
        <option class=" c_TJ" value="203">Tajikistan [TJ]</option>
        <option class=" c_TZ" value="204">Tanzania [TZ]</option>
        <option class=" c_TH" value="205">Thailand [TH]</option>
        <option class=" c_TG" value="206">Togo [TG]</option>
        <option class=" c_TO" value="207">Tonga [TO]</option>
        <option class=" c_TT" value="208">Trinidad And Tobago [TT]</option>
        <option class=" c_TN" value="209">Tunisia [TN]</option>
        <option class=" c_TR" value="210">Turkey [TR]</option>
        <option class=" c_TM" value="211">Turkmenistan [TM]</option>
        <option class=" c_TC" value="212">Turks and Caicos Islands [TC]</option>
        <option class=" c_TV" value="213">Tuvalu [TV]</option>
        <option class=" c_UG" value="214">Uganda [UG]</option>
        <option class=" c_UA" value="215">Ukraine [UA]</option>
        <option class=" c_AE" value="216">United Arab Emirates [AE]</option>
        <option class=" c_GB" value="217">United Kingdom [GB]</option>
        <option class=" c_US" value="218">United States [US]</option>
        <option class=" c_UY" value="219">Uruguay [UY]</option>
        <option class=" c_UM" value="220">US Minor Outlying Islands [UM]</option>
        <option class=" c_VI" value="221">US Virgin Islands [VI]</option>
        <option class=" c_UZ" value="222">Uzbekistan [UZ]</option>
        <option class=" c_VU" value="223">Vanuatu [VU]</option>
        <option class=" c_VE" value="224">Venezuela [VE]</option>
        <option class=" c_VN" value="225">Vietnam [VN]</option>
        <option class=" c_WF" value="226">Wallis and Futuna Islands [WF]</option>
        <option class=" c_EH" value="227">Western Sahara [EH]</option>
        <option class=" c_YE" value="228">Yemen [YE]</option>
        <option class=" c_ZR" value="229">Zaire [ZR]</option>
        <option class=" c_ZM" value="230">Zambia [ZM]</option>
        <option class=" c_ZW" value="231">Zimbabwe [ZW]</option>
        </select>
        </td>
        </tr>
        <tr class="cLast">
            <td class="cLabel">${i18n['label.profile_page.locations.city']}:</td>
            <td>
                <input type="text" name="city" id="city" class="jSaveData" style="float:left;"/>
                            <span class="cClearBtn jClearBtn">
                                <img src="/images/clear-button.png" alt="clear"/>
                            </span>
                <input name="cityId" id="cityId" type="hidden"/>
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
        <option class=" c_AF" value="1">Afghanistan [AF]</option>
        <option class=" c_AL" value="2">Albania [AL]</option>
        <option class=" c_DZ" value="3">Algeria [DZ]</option>
        <option class=" c_AS" value="4">American Samoa [AS]</option>
        <option class=" c_AD" value="5">Andorra [AD]</option>
        <option class=" c_AO" value="6">Angola [AO]</option>
        <option class=" c_AI" value="7">Anguilla [AI]</option>
        <option class=" c_AQ" value="8">Antarctica [AQ]</option>
        <option class=" c_AG" value="9">Antigua And Barbuda [AG]</option>
        <option class=" c_AR" value="10">Argentina [AR]</option>
        <option class=" c_AM" value="11">Armenia [AM]</option>
        <option class=" c_AW" value="12">Aruba [AW]</option>
        <option class=" c_AU" value="13">Australia [AU]</option>
        <option class=" c_AT" value="14">Austria [AT]</option>
        <option class=" c_AZ" value="15">Azerbaijan [AZ]</option>
        <option class=" c_BS" value="16">Bahamas [BS]</option>
        <option class=" c_BH" value="17">Bahrain [BH]</option>
        <option class=" c_BD" value="18">Bangladesh [BD]</option>
        <option class=" c_BB" value="19">Barbados [BB]</option>
        <option class=" c_BY" value="20">Belarus [BY]</option>
        <option class=" c_BE" value="21">Belgium [BE]</option>
        <option class=" c_BZ" value="22">Belize [BZ]</option>
        <option class=" c_BJ" value="23">Benin [BJ]</option>
        <option class=" c_BM" value="24">Bermuda [BM]</option>
        <option class=" c_BT" value="25">Bhutan [BT]</option>
        <option class=" c_BO" value="26">Bolivia [BO]</option>
        <option class=" c_BA" value="27">Bosnia And Herzegovina [BA]</option>
        <option class=" c_BW" value="28">Botswana [BW]</option>
        <option class=" c_BR" value="29">Brazil [BR]</option>
        <option class=" c_VG" value="30">British Virgin Islands [VG]</option>
        <option class=" c_BN" value="31">Brunei Darussalam [BN]</option>
        <option class=" c_BG" value="32">Bulgaria [BG]</option>
        <option class=" c_BF" value="33">Burkina Faso [BF]</option>
        <option class=" c_BI" value="34">Burundi [BI]</option>
        <option class=" c_KH" value="35">Cambodia [KH]</option>
        <option class=" c_CM" value="36">Cameroon [CM]</option>
        <option class=" c_CA" value="37">Canada [CA]</option>
        <option class=" c_CV" value="38">Cape Verde [CV]</option>
        <option class=" c_KY" value="39">Cayman Islands [KY]</option>
        <option class=" c_CF" value="40">Central African Republic [CF]</option>
        <option class=" c_TD" value="41">Chad [TD]</option>
        <option class=" c_CL" value="42">Chile [CL]</option>
        <option class=" c_CN" value="43">China [CN]</option>
        <option class=" c_CX" value="44">Christmas Island [CX]</option>
        <option class=" c_CC" value="45">Cocos (Keeling) Islands [CC]</option>
        <option class=" c_CO" value="46">Colombia [CO]</option>
        <option class=" c_KM" value="47">Comoros [KM]</option>
        <option class=" c_CG" value="48">Congo [CG]</option>
        <option class=" c_CK" value="49">Cook Islands [CK]</option>
        <option class=" c_CR" value="50">Costa Rica [CR]</option>
        <option class=" c_CI" value="51">Cote D' Ivoire [CI]</option>
        <option class=" c_HR" value="52">Croatia [HR]</option>
        <option class=" c_CU" value="53">Cuba [CU]</option>
        <option class=" c_CY" value="54">Cyprus [CY]</option>
        <option class=" c_CZ" value="55">Czech Republic [CZ]</option>
        <option class=" c_CD" value="56">Democratic Republic Of Congo [CD]</option>
        <option class=" c_DK" value="57">Denmark [DK]</option>
        <option class=" c_DJ" value="58">Djibouti [DJ]</option>
        <option class=" c_DM" value="59">Dominica [DM]</option>
        <option class=" c_DO" value="60">Dominican Republic [DO]</option>
        <option class=" c_TP" value="61">East Timor-Indonesia [TP]</option>
        <option class=" c_EC" value="62">Ecuador [EC]</option>
        <option class=" c_EG" value="63">Egypt [EG]</option>
        <option class=" c_SV" value="64">El Salvador [SV]</option>
        <option class=" c_GQ" value="65">Equatorial Guinea [GQ]</option>
        <option class=" c_ER" value="66">Eritrea [ER]</option>
        <option class=" c_EE" value="67">Estonia [EE]</option>
        <option class=" c_ET" value="68">Ethiopia [ET]</option>
        <option class=" c_FK" value="69">Falkland Islands [FK]</option>
        <option class=" c_FO" value="70">Faroe Islands [FO]</option>
        <option class=" c_FM" value="71">Federated States of Micronesia [FM]</option>
        <option class=" c_FJ" value="72">Fiji [FJ]</option>
        <option class=" c_FI" value="73">Finland [FI]</option>
        <option class=" c_FR" value="74">France [FR]</option>
        <option class=" c_GF" value="75">French Guiana [GF]</option>
        <option class=" c_PF" value="76">French Polynesia [PF]</option>
        <option class=" c_GA" value="77">Gabon [GA]</option>
        <option class=" c_GM" value="78">Gambia [GM]</option>
        <option class=" c_GE" value="79">Georgia [GE]</option>
        <option class=" c_DE" value="80">Germany [DE]</option>
        <option class=" c_GH" value="81">Ghana [GH]</option>
        <option class=" c_GI" value="82">Gibraltar [GI]</option>
        <option class=" c_GR" value="83">Greece [GR]</option>
        <option class=" c_GL" value="84">Greenland [GL]</option>
        <option class=" c_GD" value="85">Grenada [GD]</option>
        <option class=" c_GP" value="86">Guadeloupe [GP]</option>
        <option class=" c_GU" value="87">Guam (USA) [GU]</option>
        <option class=" c_GT" value="88">Guatemala [GT]</option>
        <option class=" c_GG" value="89">Guernsey [GG]</option>
        <option class=" c_GN" value="90">Guinea [GN]</option>
        <option class=" c_GW" value="91">Guinea-Bissau [GW]</option>
        <option class=" c_GY" value="92">Guyana [GY]</option>
        <option class=" c_HT" value="93">Haiti [HT]</option>
        <option class=" c_HN" value="94">Honduras [HN]</option>
        <option class=" c_HK" value="95">Hong Kong [HK]</option>
        <option class=" c_HU" value="96">Hungary [HU]</option>
        <option class=" c_IS" value="97">Iceland [IS]</option>
        <option class=" c_IN" value="98">India [IN]</option>
        <option class=" c_ID" value="99">Indonesia [ID]</option>
        <option class=" c_IR" value="100">Iran [IR]</option>
        <option class=" c_IQ" value="101">Iraq [IQ]</option>
        <option class=" c_IE" value="102">Ireland [IE]</option>
        <option class=" c_IM" value="103">Isle of Man [IM]</option>
        <option class=" c_IL" value="104">Israel [IL]</option>
        <option class=" c_IT" value="105">Italy [IT]</option>
        <option class=" c_JM" value="106">Jamaica [JM]</option>
        <option class=" c_JP" value="107">Japan [JP]</option>
        <option class=" c_JE" value="108">Jersey [JE]</option>
        <option class=" c_JO" value="109">Jordan [JO]</option>
        <option class=" c_KZ" value="110">Kazakhstan [KZ]</option>
        <option class=" c_KE" value="111">Kenya [KE]</option>
        <option class=" c_KI" value="112">Kiribati [KI]</option>
        <option class=" c_KP" value="113">Korea (North) [KP]</option>
        <option class=" c_KR" value="114">Korea (South) [KR]</option>
        <option class=" c_KW" value="115">Kuwait [KW]</option>
        <option class=" c_KG" value="116">Kyrgyzstan [KG]</option>
        <option class=" c_LA" value="117">Laos [LA]</option>
        <option class=" c_LV" value="118">Latvia [LV]</option>
        <option class=" c_LB" value="119">Lebanon [LB]</option>
        <option class=" c_LS" value="120">Lesotho [LS]</option>
        <option class=" c_LR" value="121">Liberia [LR]</option>
        <option class=" c_LY" value="122">Libya [LY]</option>
        <option class=" c_LT" value="123">Lithuania [LT]</option>
        <option class=" c_LU" value="124">Luxembourg [LU]</option>
        <option class=" c_MO" value="125">Macau [MO]</option>
        <option class=" c_MK" value="126">Macedonia [MK]</option>
        <option class=" c_MG" value="127">Madagascar [MG]</option>
        <option class=" c_MW" value="128">Malawi [MW]</option>
        <option class=" c_MY" value="129">Malaysia [MY]</option>
        <option class=" c_MV" value="130">Maldives [MV]</option>
        <option class=" c_ML" value="131">Mali [ML]</option>
        <option class=" c_MT" value="132">Malta [MT]</option>
        <option class=" c_MH" value="133">Marshall Islands [MH]</option>
        <option class=" c_MQ" value="134">Martinique [MQ]</option>
        <option class=" c_MR" value="135">Mauritania [MR]</option>
        <option class=" c_MU" value="136">Mauritius [MU]</option>
        <option class=" c_MX" value="137">Mexico [MX]</option>
        <option class=" c_MD" value="138">Moldova [MD]</option>
        <option class=" c_MC" value="139">Monaco [MC]</option>
        <option class=" c_MN" value="140">Mongolia [MN]</option>
        <option class=" c_ME" value="141">Montenegro [ME]</option>
        <option class=" c_MS" value="142">Montserrat [MS]</option>
        <option class=" c_MA" value="143">Morocco [MA]</option>
        <option class=" c_MZ" value="144">Mozambique [MZ]</option>
        <option class=" c_MM" value="145">Myanmar [MM]</option>
        <option class=" c_NA" value="146">Namibia [NA]</option>
        <option class=" c_NR" value="147">Nauru [NR]</option>
        <option class=" c_NP" value="148">Nepal [NP]</option>
        <option class=" c_NL" value="149">Netherlands [NL]</option>
        <option class=" c_AN" value="150">Netherlands Antilles [AN]</option>
        <option class=" c_NC" value="151">New Caledonia [NC]</option>
        <option class=" c_NZ" value="152">New Zealand [NZ]</option>
        <option class=" c_NI" value="153">Nicaragua [NI]</option>
        <option class=" c_NE" value="154">Niger [NE]</option>
        <option class=" c_NG" value="155">Nigeria [NG]</option>
        <option class=" c_NU" value="156">Niue [NU]</option>
        <option class=" c_NF" value="157">Norfolk Island [NF]</option>
        <option class=" c_MP" value="158">Northern Mariana Islands [MP]</option>
        <option class=" c_NO" value="159">Norway [NO]</option>
        <option class=" c_OM" value="160">Oman [OM]</option>
        <option class=" c_PK" value="161">Pakistan [PK]</option>
        <option class=" c_PW" value="162">Palau [PW]</option>
        <option class=" c_PA" value="163">Panama [PA]</option>
        <option class=" c_PG" value="164">Papua New Guinea [PG]</option>
        <option class=" c_PY" value="165">Paraguay [PY]</option>
        <option class=" c_PE" value="166">Peru [PE]</option>
        <option class=" c_PH" value="167">Philippines [PH]</option>
        <option class=" c_PL" value="168">Poland [PL]</option>
        <option class=" c_PT" value="169">Portugal [PT]</option>
        <option class=" c_PR" value="170">Puerto Rico [PR]</option>
        <option class=" c_QA" value="171">Qatar [QA]</option>
        <option class=" c_RE" value="172">Reunion [RE]</option>
        <option class=" c_RO" value="173">Romania [RO]</option>
        <option class=" c_RU" value="174">Russian Federation [RU]</option>
        <option class=" c_RW" value="175">Rwanda [RW]</option>
        <option class=" c_KN" value="176">Saint Kitts and Nevis [KN]</option>
        <option class=" c_LC" value="177">Saint Lucia [LC]</option>
        <option class=" c_VC" value="178">Saint Vincent and the Grenadines [VC]</option>
        <option class=" c_WS" value="179">Samoa [WS]</option>
        <option class=" c_ST" value="180">Sao Tome and Principe [ST]</option>
        <option class=" c_SA" value="181">Saudi Arabia [SA]</option>
        <option class=" c_SN" value="182">Senegal [SN]</option>
        <option class=" c_RS" value="183">Serbia [RS]</option>
        <option class=" c_SC" value="184">Seychelles [SC]</option>
        <option class=" c_SL" value="185">Sierra Leone [SL]</option>
        <option class=" c_SG" value="186">Singapore [SG]</option>
        <option class=" c_SK" value="187">Slovakia [SK]</option>
        <option class=" c_SI" value="188">Slovenia [SI]</option>
        <option class=" c_SB" value="189">Solomon Islands [SB]</option>
        <option class=" c_SO" value="190">Somalia [SO]</option>
        <option class=" c_ZA" value="191">South Africa [ZA]</option>
        <option class=" c_ES" value="192">Spain [ES]</option>
        <option class=" c_LK" value="193">Sri Lanka [LK]</option>
        <option class=" c_SH" value="194">St. Helena [SH]</option>
        <option class=" c_PM" value="195">St. Pierre and Miquelon [PM]</option>
        <option class=" c_SD" value="196">Sudan [SD]</option>
        <option class=" c_SR" value="197">Suriname [SR]</option>
        <option class=" c_SZ" value="198">Swaziland [SZ]</option>
        <option class=" c_SE" value="199">Sweden [SE]</option>
        <option class=" c_CH" value="200">Switzerland [CH]</option>
        <option class=" c_SY" value="201">Syria [SY]</option>
        <option class=" c_TW" value="202">Taiwan [TW]</option>
        <option class=" c_TJ" value="203">Tajikistan [TJ]</option>
        <option class=" c_TZ" value="204">Tanzania [TZ]</option>
        <option class=" c_TH" value="205">Thailand [TH]</option>
        <option class=" c_TG" value="206">Togo [TG]</option>
        <option class=" c_TO" value="207">Tonga [TO]</option>
        <option class=" c_TT" value="208">Trinidad And Tobago [TT]</option>
        <option class=" c_TN" value="209">Tunisia [TN]</option>
        <option class=" c_TR" value="210">Turkey [TR]</option>
        <option class=" c_TM" value="211">Turkmenistan [TM]</option>
        <option class=" c_TC" value="212">Turks and Caicos Islands [TC]</option>
        <option class=" c_TV" value="213">Tuvalu [TV]</option>
        <option class=" c_UG" value="214">Uganda [UG]</option>
        <option class=" c_UA" value="215">Ukraine [UA]</option>
        <option class=" c_AE" value="216">United Arab Emirates [AE]</option>
        <option class=" c_GB" value="217">United Kingdom [GB]</option>
        <option class=" c_US" value="218">United States [US]</option>
        <option class=" c_UY" value="219">Uruguay [UY]</option>
        <option class=" c_UM" value="220">US Minor Outlying Islands [UM]</option>
        <option class=" c_VI" value="221">US Virgin Islands [VI]</option>
        <option class=" c_UZ" value="222">Uzbekistan [UZ]</option>
        <option class=" c_VU" value="223">Vanuatu [VU]</option>
        <option class=" c_VE" value="224">Venezuela [VE]</option>
        <option class=" c_VN" value="225">Vietnam [VN]</option>
        <option class=" c_WF" value="226">Wallis and Futuna Islands [WF]</option>
        <option class=" c_EH" value="227">Western Sahara [EH]</option>
        <option class=" c_YE" value="228">Yemen [YE]</option>
        <option class=" c_ZR" value="229">Zaire [ZR]</option>
        <option class=" c_ZM" value="230">Zambia [ZM]</option>
        <option class=" c_ZW" value="231">Zimbabwe [ZW]</option>
        </select>
        </td>
        </tr>
        <tr style="display: none;">
            <td colspan="2" style="text-align: center; padding: 0px; width: 100%;">
                <a href="javascript:void(0);"><img src="/images/location.png" /></a>
            </td>
        </tr>
        <tr class="cLast">
            <td class="cLabel">${i18n['label.profile_page.location.city']}:</td>
            <td>
                <input type="text" name="currentCity" id="currentCity" class="jSaveData" style="float:left;"/>
                            <span class="cClearBtn jClearBtn">
                                <img src="/images/clear-button.png" alt="clear"/>
                            </span>
                <input name="currentCityId" id="currentCityId" type="hidden"/>
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
                            <option value="1" class="c_CZ">Czech (CZ)</option>
                            <option value="2" class="c_DA">Dansk (DA)</option>
                            <option value="3" class="c_DE">Deutsch (DE)</option>
                            <option value="4" class="c_EN">English (EN)</option>
                            <option value="5" class="c_ES">Spanish (ES)</option>
                            <option value="6" class="c_FI">Finnish (FI)</option>
                            <option value="7" class="c_FR">French (FR)</option>
                            <option value="8" class="c_GR">Greek (GR)</option>
                            <option value="9" class="c_HU">Magyar (HU)</option>
                            <option value="10" class="c_ID">Bahasa Indonesia (ID)</option>
                            <option value="11" class="c_IT">Italiano (IT)</option>
                            <option value="12" class="c_JA">Japanese (JA)</option>
                            <option value="13" class="c_KO">Korean (KO)</option>
                            <option value="14" class="c_MS">Bahasa Malay (MS)</option>
                            <option value="15" class="c_NL">Nederlands (NL)</option>
                            <option value="16" class="c_NO">Norsk (NO)</option>
                            <option value="17" class="c_PL">Polski (PL)</option>
                            <option value="18" class="c_PT">Portuguese (PT)</option>
                            <option value="19" class="c_RO">Romance (RO)</option>
                            <option value="20" class="c_RU">Russian (RU)</option>
                            <option value="21" class="c_SV">Swedish (SV)</option>
                            <option value="22" class="c_TH">Thai (TH)</option>
                            <option value="23" class="c_TR">Turkish (TR)</option>
                            <option value="24" class="c_UA">Ukrainian (UK)</option>
                            <option value="25" class="c_VI">Vietnamese (VI)</option>
                            <option value="26" class="c_ZH">Zhuang (ZH)</option>
                            <option value="27" class="c_ZW">Chuang (ZW)</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="cLabel">${i18n['label.profile_page.languages.secondLang']}:</td>
                    <td>
                        <select name="secondLanguageId" class="jSaveData jSelect" style="float:left;">
                            <option value="1" class="c_CZ">Czech (CZ)</option>
                            <option value="2" class="c_DA">Dansk (DA)</option>
                            <option value="3" class="c_DE">Deutsch (DE)</option>
                            <option value="4" class="c_EN">English (EN)</option>
                            <option value="5" class="c_ES">Spanish (ES)</option>
                            <option value="6" class="c_FI">Finnish (FI)</option>
                            <option value="7" class="c_FR">French (FR)</option>
                            <option value="8" class="c_GR">Greek (GR)</option>
                            <option value="9" class="c_HU">Magyar (HU)</option>
                            <option value="10" class="c_ID">Bahasa Indonesia (ID)</option>
                            <option value="11" class="c_IT">Italiano (IT)</option>
                            <option value="12" class="c_JA">Japanese (JA)</option>
                            <option value="13" class="c_KO">Korean (KO)</option>
                            <option value="14" class="c_MS">Bahasa Malay (MS)</option>
                            <option value="15" class="c_NL">Nederlands (NL)</option>
                            <option value="16" class="c_NO">Norsk (NO)</option>
                            <option value="17" class="c_PL">Polski (PL)</option>
                            <option value="18" class="c_PT">Portuguese (PT)</option>
                            <option value="19" class="c_RO">Romance (RO)</option>
                            <option value="20" class="c_RU">Russian (RU)</option>
                            <option value="21" class="c_SV">Swedish (SV)</option>
                            <option value="22" class="c_TH">Thai (TH)</option>
                            <option value="23" class="c_TR">Turkish (TR)</option>
                            <option value="24" class="c_UA">Ukrainian (UK)</option>
                            <option value="25" class="c_VI">Vietnamese (VI)</option>
                            <option value="26" class="c_ZH">Zhuang (ZH)</option>
                            <option value="27" class="c_ZW">Chuang (ZW)</option>
                        </select>
                    </td>
                </tr>
                <tr class="cLast">
                    <td class="cLabel">${i18n['label.profile_page.languages.thirdLang']}:</td>
                    <td>
                        <select name="thirdLanguageId" class="jSaveData jSelect" style="float:left;">
                            <option value="1" class="c_CZ">Czech (CZ)</option>
                            <option value="2" class="c_DA">Dansk (DA)</option>
                            <option value="3" class="c_DE">Deutsch (DE)</option>
                            <option value="4" class="c_EN">English (EN)</option>
                            <option value="5" class="c_ES">Spanish (ES)</option>
                            <option value="6" class="c_FI">Finnish (FI)</option>
                            <option value="7" class="c_FR">French (FR)</option>
                            <option value="8" class="c_GR">Greek (GR)</option>
                            <option value="9" class="c_HU">Magyar (HU)</option>
                            <option value="10" class="c_ID">Bahasa Indonesia (ID)</option>
                            <option value="11" class="c_IT">Italiano (IT)</option>
                            <option value="12" class="c_JA">Japanese (JA)</option>
                            <option value="13" class="c_KO">Korean (KO)</option>
                            <option value="14" class="c_MS">Bahasa Malay (MS)</option>
                            <option value="15" class="c_NL">Nederlands (NL)</option>
                            <option value="16" class="c_NO">Norsk (NO)</option>
                            <option value="17" class="c_PL">Polski (PL)</option>
                            <option value="18" class="c_PT">Portuguese (PT)</option>
                            <option value="19" class="c_RO">Romance (RO)</option>
                            <option value="20" class="c_RU">Russian (RU)</option>
                            <option value="21" class="c_SV">Swedish (SV)</option>
                            <option value="22" class="c_TH">Thai (TH)</option>
                            <option value="23" class="c_TR">Turkish (TR)</option>
                            <option value="24" class="c_UA">Ukrainian (UK)</option>
                            <option value="25" class="c_VI">Vietnamese (VI)</option>
                            <option value="26" class="c_ZH">Zhuang (ZH)</option>
                            <option value="27" class="c_ZW">Chuang (ZW)</option>
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
                        <select name="familyStatus" class="jSaveData jSelect" style="float:left;">
                            <option value="0">Yes maried live together</option>
                            <option value="1">Yes married don't live together</option>
                            <option value="2">Yes fake marriage</option>
                            <option value="3">Single</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="cLabel">${i18n['label.profile_page.more.body']}:</td>
                    <td colspan="3">
                        <select name="bodyId" class="jSaveData jSelect" style="float:left;">
                            <option value="0">Thin</option>
                            <option value="1">General</option>
                            <option value="2">Athletic</option>
                            <option value="3">Muscular</option>
                            <option value="4">Strong</option>
                            <option value="5">Stout</option>
                            <option value="6">Other</option>
                        </select>
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
                        <select class="jSaveData jSelect" name="appearance" style="float:left;">
                            <option value="0">European</option>
                            <option value="1">Asian</option>
                            <option value="2">Caucasian</option>
                            <option value=3>Hindu</option>
                            <option value="4">Negro</option>
                            <option value="5">Latinos</option>
                            <option value="6">Arab</option>
                            <option value="7">Indian</option>
                            <option value="8">Metis</option>
                            <option value="9">Other</option>
                        </select>
                            <span class="cClearBtn jClearBtn">
                                <img src="/images/clear-button.png" alt="clear"/>
                            </span>
                    </td>
                </tr>
                <tr>
                    <td class="cLabel">${i18n['label.profile_page.more.lifePriorities']}:</td>
                    <td colspan="3">
                        <select class="jSaveData jSelect" name="lifeGoals" style="float:left;">
                            <option value="0">Career</option>
                            <option value="1">Wealthiness</option>
                            <option value="2">Conciliation</option>
                            <option value="3">Family</option>
                            <option value="4">Maximum of sex</option>
                            <option value="5">Realization</option>
                            <option value="6">Social activity</option>
                            <option value="7">Other</option>
                        </select>
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

        <div class="cClear"></div>
        </form>
        </div>
        
        <div style="height: 20px; display: none;">
        <a href="${baseAppUrl}/html/profile">Profile</a>
        <input type="submit" value="GET" onclick="return onClick(this)"/>
        <input type="submit" value="PUT" onclick="return onPutClick(this)"/>
        <script type="text/javascript">
        window.onload = getProfile();
        jQuery(document).ready(function() {

            $('#currentCity').autocomplete({
                        source: function (request, response) {
                            $.ajax({
                                        url: "/rest/search/cities?term=" + request.term,
                                        success: function(data) {
                                            if (data.data instanceof Array) {
                                                response(data.data);
                                            } else {
                                                if (!isEmpty(data.data) && data.data.id != undefined && data.data.id != null) {
                                                    response([
                                                        {
                                                            id :  data.data.id,
                                                            label: data.data.label,
                                                            value: data.data.value
                                                        }
                                                    ]);
                                                } else {
                                                    response([]);
                                                }
                                            }

                                        }
                                    });
                        },
                        minChars:2,
                        maxHeight:400,
                        width:300,
                        zIndex: 9999,
                        deferRequestBy: 0,
                        noCache: false,

                        select: function(value, data) {
                            $('#currentCityId').val(data.item.id);
                            return;
                        }
                    });

            $('#city').autocomplete({
                        source: function (request, response) {
                            $.ajax({
                                        url: "/rest/search/cities?term=" + request.term,
                                        success: function(data) {
                                            if (data.data instanceof Array) {
                                                response(data.data);
                                            } else {
                                                if (!isEmpty(data.data) && data.data.id != undefined && data.data.id != null) {
                                                    response([
                                                        {
                                                            id :  data.data.id,
                                                            label: data.data.label,
                                                            value: data.data.value
                                                        }
                                                    ]);
                                                } else {
                                                    response([]);
                                                }
                                            }

                                        }
                                    });
                        },
                        minChars:2,
                        maxHeight:400,
                        width:300,
                        zIndex: 9999,
                        deferRequestBy: 0,
                        noCache: false,

                        select: function(value, data) {
                            $('#cityId').val(data.item.id);
                            return;
                        }
                    });


            $('select[name=is_male]').selectmenu();
            $(".jSaveData").focusout(function() {
                saveProfile();
            });
            $('select[name!=is_male]').change(function() {
                if($(this).attr('name') == 'countryId') {
                    $('input[name=city]').val('');
                    $('input[name=cityId]').val('');
                } else if($(this).attr('name') == 'currentCountryId') {
                    $('input[name=currentCity]').val('');
                    $('input[name=currentCityId]').val('');
                }
        
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
                        yearRange: '1950:2100',
                        showAnim: 'slideDown',
                        changeMonth: true,
                        changeYear: true,
                        dateFormat:'yy.mm.dd',
                        onSelect: function(dateText, inst) {
                            saveProfile();
                        }
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
                                $('input[name=books]').val(request.data.books);
                                $('input[name=cellPhone]').val(request.data.cellPhone);
                                $('input[name=firstName]').val(request.data.firstName);
                                $('input[name=height]').val(request.data.height);
                                $('input[name=interest]').val(request.data.interest);
                                $('input[name=lastName]').val(request.data.lastName);
                                $('input[name=movies]').val(request.data.movies);
                                $('input[name=music]').val(request.data.music);
                                $('input[name=phone]').val(request.data.phone);
                                $('input[name=siteUrl]').val(request.data.siteUrl);
                                $('input[name=skypeId]').val(request.data.skypeId);
                                $('input[name=width]').val(request.data.width);

                                $('input[name=facebook]').val(request.data.facebook);
                                $('input[name=twitter]').val(request.data.twitter);

                                $('select[name=appearance]').val(request.data.appearanceId).selectmenu();
                                $('select[name=familyStatus]').val(request.data.familyStatusId).selectmenu();

                                if (request.data.birthDay != undefined && request.data.birthDay != null) {
                                    var date = new Date(request.data.birthDay);
                                    $('#birthDay').datepicker('setDate', date);
                                }
                                if (!isEmpty(request.data.cityId)) {
                                    $('#city').val(request.data.cityName);
                                    $('#cityId').val(request.data.cityId);
                                }

                                if (!isEmpty(request.data.currentCityId)) {
                                    $('#currentCity').val(request.data.currentCityName);
                                    $('#currentCityId').val(request.data.currentCityId);
                                }
                                
                                $('select[name=firstLanguageId]').val(request.data.firstLanguageId).selectmenu(
                                    {
                                        icons:[
                                            { find: '.c_CZ' },
                                            { find: '.c_DE' },
                                            { find: '.c_EN' },
                                            { find: '.c_ES' },
                                            { find: '.c_DA' },
                                            { find: '.c_GB' },
                                            { find: '.c_JA' },
                                            { find: '.c_JP' },
                                            { find: '.c_KO' },
                                            { find: '.c_VI' },
                                            { find: '.c_ZH' },
                                            { find: '.c_FI' },
                                            { find: '.c_FR' },
                                            { find: '.c_GR' },
                                            { find: '.c_HU' },
                                            { find: '.c_ID' },
                                            { find: '.c_IT' },
                                            { find: '.c_MS' },
                                            { find: '.c_NL' },
                                            { find: '.c_NO' },
                                            { find: '.c_PL' },
                                            { find: '.c_PT' },
                                            { find: '.c_RO' },
                                            { find: '.c_RU' },
                                            { find: '.c_SV' },
                                            { find: '.c_TH' },
                                            { find: '.c_TR' },
                                            { find: '.c_UK' },
                                            { find: '.c_UA' },
                                            { find: '.c_ZW' }
                                        ]
                                    }
                                );
                                    $('select[name=secondLanguageId]').val(request.data.secondLanguageId).selectmenu(
                                    {
                                        icons:[
                                            { find: '.c_CZ' },
                                            { find: '.c_DE' },
                                            { find: '.c_EN' },
                                            { find: '.c_ES' },
                                            { find: '.c_DA' },
                                            { find: '.c_GB' },
                                            { find: '.c_JA' },
                                            { find: '.c_JP' },
                                            { find: '.c_KO' },
                                            { find: '.c_VI' },
                                            { find: '.c_ZH' },
                                            { find: '.c_FI' },
                                            { find: '.c_FR' },
                                            { find: '.c_GR' },
                                            { find: '.c_HU' },
                                            { find: '.c_ID' },
                                            { find: '.c_IT' },
                                            { find: '.c_MS' },
                                            { find: '.c_NL' },
                                            { find: '.c_NO' },
                                            { find: '.c_PL' },
                                            { find: '.c_PT' },
                                            { find: '.c_RO' },
                                            { find: '.c_RU' },
                                            { find: '.c_SV' },
                                            { find: '.c_TH' },
                                            { find: '.c_TR' },
                                            { find: '.c_UK' },
                                            { find: '.c_UA' },
                                            { find: '.c_ZW' }
                                        ]
                                    }
                                );
                                    $('select[name=thirdLanguageId]').val(request.data.thirdLanguageId).selectmenu(
                                    {
                                        icons:[
                                            { find: '.c_CZ' },
                                            { find: '.c_DE' },
                                            { find: '.c_EN' },
                                            { find: '.c_ES' },
                                            { find: '.c_DA' },
                                            { find: '.c_GB' },
                                            { find: '.c_JA' },
                                            { find: '.c_JP' },
                                            { find: '.c_KO' },
                                            { find: '.c_VI' },
                                            { find: '.c_ZH' },
                                            { find: '.c_FI' },
                                            { find: '.c_FR' },
                                            { find: '.c_GR' },
                                            { find: '.c_HU' },
                                            { find: '.c_ID' },
                                            { find: '.c_IT' },
                                            { find: '.c_MS' },
                                            { find: '.c_NL' },
                                            { find: '.c_NO' },
                                            { find: '.c_PL' },
                                            { find: '.c_PT' },
                                            { find: '.c_RO' },
                                            { find: '.c_RU' },
                                            { find: '.c_SV' },
                                            { find: '.c_TH' },
                                            { find: '.c_TR' },
                                            { find: '.c_UK' },
                                            { find: '.c_UA' },
                                            { find: '.c_ZW' }
                                        ]
                                    }
                                );

                                $('select[name=countryId]').val(request.data.countryId).selectmenu(
                                        {
                                            icons:[
                                                { find: '.c_AU' },
                                                { find: '.c_AT' },
                                                { find: '.c_AZ' },
                                                { find: '.c_AL' },
                                                { find: '.c_DZ' },
                                                { find: '.c_AS' },
                                                { find: '.c_AO' },
                                                { find: '.c_AI' },
                                                { find: '.c_AD' },
                                                { find: '.c_NL' },
                                                { find: '.c_AR' },
                                                { find: '.c_AM' },
                                                { find: '.c_AW' },
                                                { find: '.c_AF' },
                                                { find: '.c_BS' },
                                                { find: '.c_BD' },
                                                { find: '.c_BB' },
                                                { find: '.c_BH' },
                                                { find: '.c_BY' },
                                                { find: '.c_BZ' },
                                                { find: '.c_BE' },
                                                { find: '.c_BJ' },
                                                { find: '.c_BM' },
                                                { find: '.c_BG' },
                                                { find: '.c_BO' },
                                                { find: '.c_BW' },
                                                { find: '.c_BR' },
                                                { find: '.c_IN' },
                                                { find: '.c_BN' },
                                                { find: '.c_BF' },
                                                { find: '.c_BI' },
                                                { find: '.c_BT' },
                                                { find: '.c_VU' },
                                                { find: '.c_GB' },
                                                { find: '.c_HU' },
                                                { find: '.c_VE' },
                                                { find: '.c_VN' },
                                                { find: '.c_GA' },
                                                { find: '.c_HT' },
                                                { find: '.c_GY' },
                                                { find: '.c_GM' },
                                                { find: '.c_GH' },
                                                { find: '.c_GP' },
                                                { find: '.c_GT' },
                                                { find: '.c_GN' },
                                                { find: '.c_GN' },
                                                { find: '.c_DE' },
                                                { find: '.c_GG' },
                                                { find: '.c_GI' },
                                                { find: '.c_HN' },
                                                { find: '.c_HK' },
                                                { find: '.c_GD' },
                                                { find: '.c_GL' },
                                                { find: '.c_GR' },
                                                { find: '.c_GE' },
                                                { find: '.c_DK' },
                                                { find: '.c_JE' },
                                                { find: '.c_DJ' },
                                                { find: '.c_DM' },
                                                { find: '.c_DM' },
                                                { find: '.c_EG' },
                                                { find: '.c_ZM' },
                                                { find: '.c_ZW' },
                                                { find: '.c_IL' },
                                                { find: '.c_IN' },
                                                { find: '.c_ID' },
                                                { find: '.c_JO' },
                                                { find: '.c_IQ' },
                                                { find: '.c_IR' },
                                                { find: '.c_IE' },
                                                { find: '.c_IS' },
                                                { find: '.c_ES' },
                                                { find: '.c_IT' },
                                                { find: '.c_YE' },
                                                { find: '.c_CV' },
                                                { find: '.c_KZ' },
                                                { find: '.c_KY' },
                                                { find: '.c_KH' },
                                                { find: '.c_CM' },
                                                { find: '.c_CA' },
                                                { find: '.c_QA' },
                                                { find: '.c_KE' },
                                                { find: '.c_CY' },
                                                { find: '.c_KI' },
                                                { find: '.c_CN' },
                                                { find: '.c_CO' },
                                                { find: '.c_KM' },
                                                { find: '.c_CG' },
                                                { find: '.c_CG' },
                                                { find: '.c_CR' },
                                                { find: '.c_CU' },
                                                { find: '.c_KW' },
                                                { find: '.c_CK' },
                                                { find: '.c_KG' },
                                                { find: '.c_LV' },
                                                { find: '.c_LS' },
                                                { find: '.c_LR' },
                                                { find: '.c_LB' },
                                                { find: '.c_LY' },
                                                { find: '.c_LT' },
                                                { find: '.c_LU' },
                                                { find: '.c_MU' },
                                                { find: '.c_MR' },
                                                { find: '.c_MG' },
                                                { find: '.c_MO' },
                                                { find: '.c_MK' },
                                                { find: '.c_MW' },
                                                { find: '.c_MY' },
                                                { find: '.c_ML' },
                                                { find: '.c_MV' },
                                                { find: '.c_MT' },
                                                { find: '.c_MA' },
                                                { find: '.c_MQ' },
                                                { find: '.c_MH' },
                                                { find: '.c_MX' },
                                                { find: '.c_MZ' },
                                                { find: '.c_MD' },
                                                { find: '.c_MC' },
                                                { find: '.c_MN' },
                                                { find: '.c_MS' },
                                                { find: '.c_MM' },
                                                { find: '.c_IM' },
                                                { find: '.c_NA' },
                                                { find: '.c_NR' },
                                                { find: '.c_NP' },
                                                { find: '.c_NE' },
                                                { find: '.c_NE' },
                                                { find: '.c_NL' },
                                                { find: '.c_NI' },
                                                { find: '.c_NU' },
                                                { find: '.c_NZ' },
                                                { find: '.c_NC' },
                                                { find: '.c_NO' },
                                                { find: '.c_NF' },
                                                { find: '.c_AE' },
                                                { find: '.c_OM' },
                                                { find: '.c_PK' },
                                                { find: '.c_PW' },
                                                { find: '.c_PA' },
                                                { find: '.c_GN' },
                                                { find: '.c_PY' },
                                                { find: '.c_PE' },
                                                { find: '.c_PL' },
                                                { find: '.c_PT' },
                                                { find: '.c_PR' },
                                                { find: '.c_RE' },
                                                { find: '.c_RU' },
                                                { find: '.c_RW' },
                                                { find: '.c_RO' },
                                                { find: '.c_SV' },
                                                { find: '.c_WS' },
                                                { find: '.c_ST' },
                                                { find: '.c_SA' },
                                                { find: '.c_SZ' },
                                                { find: '.c_LC' },
                                                { find: '.c_MP' },
                                                { find: '.c_SC' },
                                                { find: '.c_SN' },
                                                { find: '.c_KN' },
                                                { find: '.c_VC' },
                                                { find: '.c_RS' },
                                                { find: '.c_SG' },
                                                { find: '.c_SY' },
                                                { find: '.c_SK' },
                                                { find: '.c_SI' },
                                                { find: '.c_SB' },
                                                { find: '.c_SO' },
                                                { find: '.c_SD' },
                                                { find: '.c_SR' },
                                                { find: '.c_US' },
                                                { find: '.c_SL' },
                                                { find: '.c_TJ' },
                                                { find: '.c_TH' },
                                                { find: '.c_TW' },
                                                { find: '.c_TZ' },
                                                { find: '.c_TG' },
                                                { find: '.c_TO' },
                                                { find: '.c_TV' },
                                                { find: '.c_TN' },
                                                { find: '.c_TM' },
                                                { find: '.c_TC' },
                                                { find: '.c_TR' },
                                                { find: '.c_UG' },
                                                { find: '.c_UZ' },
                                                { find: '.c_UA' },
                                                { find: '.c_UY' },
                                                { find: '.c_FO' },
                                                { find: '.c_FJ' },
                                                { find: '.c_PH' },
                                                { find: '.c_FI' },
                                                { find: '.c_FK' },
                                                { find: '.c_FR' },
                                                { find: '.c_GF' },
                                                { find: '.c_PF' },
                                                { find: '.c_HR' },
                                                { find: '.c_CF' },
                                                { find: '.c_TD' },
                                                { find: '.c_ME' },
                                                { find: '.c_CZ' },
                                                { find: '.c_CL' },
                                                { find: '.c_CH' },
                                                { find: '.c_SE' },
                                                { find: '.c_LK' },
                                                { find: '.c_EC' },
                                                { find: '.c_GQ' },
                                                { find: '.c_ER' },
                                                { find: '.c_EE' },
                                                { find: '.c_ET' },
                                                { find: '.c_ZA' },
                                                { find: '.c_JM' },
                                                { find: '.c_JP' }
                                            ]
                                        }
                                );

                                $('select[name=currentCountryId]').val(request.data.currentCountryId).selectmenu(
                                        {
                                            icons:[
                                                { find: '.c_AU' },
                                                { find: '.c_AT' },
                                                { find: '.c_AZ' },
                                                { find: '.c_AL' },
                                                { find: '.c_DZ' },
                                                { find: '.c_AS' },
                                                { find: '.c_AO' },
                                                { find: '.c_AI' },
                                                { find: '.c_AD' },
                                                { find: '.c_NL' },
                                                { find: '.c_AR' },
                                                { find: '.c_AM' },
                                                { find: '.c_AW' },
                                                { find: '.c_AF' },
                                                { find: '.c_BS' },
                                                { find: '.c_BD' },
                                                { find: '.c_BB' },
                                                { find: '.c_BH' },
                                                { find: '.c_BY' },
                                                { find: '.c_BZ' },
                                                { find: '.c_BE' },
                                                { find: '.c_BJ' },
                                                { find: '.c_BM' },
                                                { find: '.c_BG' },
                                                { find: '.c_BO' },
                                                { find: '.c_BW' },
                                                { find: '.c_BR' },
                                                { find: '.c_IN' },
                                                { find: '.c_BN' },
                                                { find: '.c_BF' },
                                                { find: '.c_BI' },
                                                { find: '.c_BT' },
                                                { find: '.c_VU' },
                                                { find: '.c_GB' },
                                                { find: '.c_HU' },
                                                { find: '.c_VE' },
                                                { find: '.c_VN' },
                                                { find: '.c_GA' },
                                                { find: '.c_HT' },
                                                { find: '.c_GY' },
                                                { find: '.c_GM' },
                                                { find: '.c_GH' },
                                                { find: '.c_GP' },
                                                { find: '.c_GT' },
                                                { find: '.c_GN' },
                                                { find: '.c_GN' },
                                                { find: '.c_DE' },
                                                { find: '.c_GG' },
                                                { find: '.c_GI' },
                                                { find: '.c_HN' },
                                                { find: '.c_HK' },
                                                { find: '.c_GD' },
                                                { find: '.c_GL' },
                                                { find: '.c_GR' },
                                                { find: '.c_GE' },
                                                { find: '.c_DK' },
                                                { find: '.c_JE' },
                                                { find: '.c_DJ' },
                                                { find: '.c_DM' },
                                                { find: '.c_DM' },
                                                { find: '.c_EG' },
                                                { find: '.c_ZM' },
                                                { find: '.c_ZW' },
                                                { find: '.c_IL' },
                                                { find: '.c_IN' },
                                                { find: '.c_ID' },
                                                { find: '.c_JO' },
                                                { find: '.c_IQ' },
                                                { find: '.c_IR' },
                                                { find: '.c_IE' },
                                                { find: '.c_IS' },
                                                { find: '.c_ES' },
                                                { find: '.c_IT' },
                                                { find: '.c_YE' },
                                                { find: '.c_CV' },
                                                { find: '.c_KZ' },
                                                { find: '.c_KY' },
                                                { find: '.c_KH' },
                                                { find: '.c_CM' },
                                                { find: '.c_CA' },
                                                { find: '.c_QA' },
                                                { find: '.c_KE' },
                                                { find: '.c_CY' },
                                                { find: '.c_KI' },
                                                { find: '.c_CN' },
                                                { find: '.c_CO' },
                                                { find: '.c_KM' },
                                                { find: '.c_CG' },
                                                { find: '.c_CG' },
                                                { find: '.c_CR' },
                                                { find: '.c_CU' },
                                                { find: '.c_KW' },
                                                { find: '.c_CK' },
                                                { find: '.c_KG' },
                                                { find: '.c_LV' },
                                                { find: '.c_LS' },
                                                { find: '.c_LR' },
                                                { find: '.c_LB' },
                                                { find: '.c_LY' },
                                                { find: '.c_LT' },
                                                { find: '.c_LU' },
                                                { find: '.c_MU' },
                                                { find: '.c_MR' },
                                                { find: '.c_MG' },
                                                { find: '.c_MO' },
                                                { find: '.c_MK' },
                                                { find: '.c_MW' },
                                                { find: '.c_MY' },
                                                { find: '.c_ML' },
                                                { find: '.c_MV' },
                                                { find: '.c_MT' },
                                                { find: '.c_MA' },
                                                { find: '.c_MQ' },
                                                { find: '.c_MH' },
                                                { find: '.c_MX' },
                                                { find: '.c_MZ' },
                                                { find: '.c_MD' },
                                                { find: '.c_MC' },
                                                { find: '.c_MN' },
                                                { find: '.c_MS' },
                                                { find: '.c_MM' },
                                                { find: '.c_IM' },
                                                { find: '.c_NA' },
                                                { find: '.c_NR' },
                                                { find: '.c_NP' },
                                                { find: '.c_NE' },
                                                { find: '.c_NE' },
                                                { find: '.c_NL' },
                                                { find: '.c_NI' },
                                                { find: '.c_NU' },
                                                { find: '.c_NZ' },
                                                { find: '.c_NC' },
                                                { find: '.c_NO' },
                                                { find: '.c_NF' },
                                                { find: '.c_AE' },
                                                { find: '.c_OM' },
                                                { find: '.c_PK' },
                                                { find: '.c_PW' },
                                                { find: '.c_PA' },
                                                { find: '.c_GN' },
                                                { find: '.c_PY' },
                                                { find: '.c_PE' },
                                                { find: '.c_PL' },
                                                { find: '.c_PT' },
                                                { find: '.c_PR' },
                                                { find: '.c_RE' },
                                                { find: '.c_RU' },
                                                { find: '.c_RW' },
                                                { find: '.c_RO' },
                                                { find: '.c_SV' },
                                                { find: '.c_WS' },
                                                { find: '.c_ST' },
                                                { find: '.c_SA' },
                                                { find: '.c_SZ' },
                                                { find: '.c_LC' },
                                                { find: '.c_MP' },
                                                { find: '.c_SC' },
                                                { find: '.c_SN' },
                                                { find: '.c_KN' },
                                                { find: '.c_VC' },
                                                { find: '.c_RS' },
                                                { find: '.c_SG' },
                                                { find: '.c_SY' },
                                                { find: '.c_SK' },
                                                { find: '.c_SI' },
                                                { find: '.c_SB' },
                                                { find: '.c_SO' },
                                                { find: '.c_SD' },
                                                { find: '.c_SR' },
                                                { find: '.c_US' },
                                                { find: '.c_SL' },
                                                { find: '.c_TJ' },
                                                { find: '.c_TH' },
                                                { find: '.c_TW' },
                                                { find: '.c_TZ' },
                                                { find: '.c_TG' },
                                                { find: '.c_TO' },
                                                { find: '.c_TV' },
                                                { find: '.c_TN' },
                                                { find: '.c_TM' },
                                                { find: '.c_TC' },
                                                { find: '.c_TR' },
                                                { find: '.c_UG' },
                                                { find: '.c_UZ' },
                                                { find: '.c_UA' },
                                                { find: '.c_UY' },
                                                { find: '.c_FO' },
                                                { find: '.c_FJ' },
                                                { find: '.c_PH' },
                                                { find: '.c_FI' },
                                                { find: '.c_FK' },
                                                { find: '.c_FR' },
                                                { find: '.c_GF' },
                                                { find: '.c_PF' },
                                                { find: '.c_HR' },
                                                { find: '.c_CF' },
                                                { find: '.c_TD' },
                                                { find: '.c_ME' },
                                                { find: '.c_CZ' },
                                                { find: '.c_CL' },
                                                { find: '.c_CH' },
                                                { find: '.c_SE' },
                                                { find: '.c_LK' },
                                                { find: '.c_EC' },
                                                { find: '.c_GQ' },
                                                { find: '.c_ER' },
                                                { find: '.c_EE' },
                                                { find: '.c_ET' },
                                                { find: '.c_ZA' },
                                                { find: '.c_JM' },
                                                { find: '.c_JP' }
                                            ]
                                        }
                                );


                                /*
                                 $.getJSON('/rest/search/countries', function(objJson) {
                                 var items = [];

                                 $.each(objJson.data, function(key, val) {
                                 var str = '<option class=" c_'+ val.value + '" value="' + val.id + '">' + val.label +' ['+ val.value +'] </option>';
                                 items.push(str);
                                 });
                                 $('select[name=countryId]').html(items.join('')).val(request.data.countryId).selectmenu();
                                 $('select[name=currentCountryId]').html(items.join('')).val(request.data.currentCountryId).selectmenu();
                                 });
                                 */

                                $('select[name=firstLanguageId]').val(request.data.firstLanguageId).selectmenu();
                                $('select[name=secondLanguageId]').val(request.data.secondLanguageId).selectmenu();
                                $('select[name=thirdLanguageId]').val(request.data.thirdLanguageId).selectmenu();
                                $('select[name=bodyId]').val(request.data.bodyId).selectmenu();
                                $('select[name=lifeGoals]').val(request.data.lifeGoalsId).selectmenu();
                                /*
                                 $.getJSON('/rest/search/language', function(objJson) {
                                 var items = [];
                                 $.each(objJson.data, function(key, val) {
                                 items.push('<option value="' + val.itemId + '">' + val.itemName + '</option>');
                                 });

                                 $('select[name=firstLanguageId]').html(items.join('')).val(request.data.firstLanguageId).selectmenu();
                                 $('select[name=secondLanguageId]').html(items.join('')).val(request.data.secondLanguageId).selectmenu();
                                 $('select[name=thirdLanguageId]').html(items.join('')).val(request.data.thirdLanguageId).selectmenu();
                                 });
                                 */
                                /*
                                 $.getJSON('/rest/search/body', function(objJson) {
                                 var items = [];
                                 $.each(objJson.data, function(key, val) {
                                 items.push('<option value="' + val.itemId + '">' + val.itemName + '</option>');
                                 });

                                 $('select[name=bodyId]').html(items.join('')).val(request.data.bodyId).selectmenu();
                                 });
                                 */
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
            try {
                var datepicker = $('#birthDay').datepicker('getDate');

                var birthDay = $('#birthDay').val().replace('.', '-').replace('.','-');
                birthDay = birthDay + 'T12:00:01.000Z';
            } catch(e) {
                alert(e.toString());
            }
            var requestData = {"data":{
                "aboutMe": $('textarea[name=aboutMe]').val(),
                "female": $('select[name=is_male]').val(),
                "bodyId": $('select[name=bodyId]').val(),
                "appearanceId": $('select[name=appearance]').val(),
                "birthDay": birthDay,
                "books": $('input[name=books]').val(),
                "cellPhone": $('input[name=cellPhone]').val(),
                "cityId": $('#cityId').val(),
                "countryId": $('select[name=countryId]').val(),
                "currentCityId": $('#currentCityId').val(),
                "currentCountryId": $('select[name=currentCountryId]').val(),
                "familyStatusId": $('select[name=familyStatus]').val(),
                "firstLanguageId": $('select[name=firstLanguageId]').val(),
                "firstName":  $('input[name=firstName]').val(),
                "height":  $('input[name=height]').val(),
                "interest":  $('input[name=interest]').val(),
                "lastName":  $('input[name=lastName]').val(),
                "lifeGoalsId":  $('select[name=lifeGoals]').val(),
                "movies":  $('input[name=movies]').val(),
                "music":  $('input[name=music]').val(),
                "occupationId":  $('select[name=occupationId]').val(),
                "phone":  $('input[name=phone]').val(),
                "secondLanguageId":  $('select[name=secondLanguageId]').val(),
                "siteUrl":  $('input[name=siteUrl]').val(),
                "skypeId":  $('input[name=skypeId]').val(),
                "thirdLanguageId":  $('select[name=thirdLanguageId]').val(),
                "width":  $('input[name=width]').val(),
                "facebook": $('input[name=facebook]').val(),
                "twitter": $('input[name=twitter]').val()
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