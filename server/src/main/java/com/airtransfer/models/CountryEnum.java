package com.airtransfer.models;

import java.io.BufferedReader;
import java.io.FileReader;

/**
 * User: Sergey
 * Date: 28.01.12 20:37
 */
public enum CountryEnum {
    AF(1, "Afghanistan", "Афганистан", "AF"),
    AL(2, "Albania", "Албания", "AL"),
    DZ(3, "Algeria", "Алжир", "DZ"),
    AS(4, "American Samoa", "Американское Самоа", "AS"),
    AD(5, "Andorra", "Андорра", "AD"),
    AO(6, "Angola", "Ангола", "AO"),
    AI(7, "Anguilla", "Ангилья", "AI"),
    AQ(8, "Antarctica", "Антарктида", "AQ"),
    AG(9, "Antigua And Barbuda", "Антигуа и Барбуда", "AG"),
    AR(10, "Argentina", "Аргентина", "AR"),
    AM(11, "Armenia", "Армения", "AM"),
    AW(12, "Aruba", "Аруба", "AW"),
    AU(13, "Australia", "Австралия", "AU"),
    AT(14, "Austria", "Австрия", "AT"),
    AZ(15, "Azerbaijan", "Азербайджан", "AZ"),
    BS(16, "Bahamas", "Багамские острова", "BS"),
    BH(17, "Bahrain", "Бахрейн", "BH"),
    BD(18, "Bangladesh", "Бангладеш", "BD"),
    BB(19, "Barbados", "Барбадос", "BB"),
    BY(20, "Belarus", "Беларусь", "BY"),
    BE(21, "Belgium", "Бельгия", "BE"),
    BZ(22, "Belize", "Белиз", "BZ"),
    BJ(23, "Benin", "Бенин", "BJ"),
    BM(24, "Bermuda", "Бермудские острова", "BM"),
    BT(25, "Bhutan", "Бутан", "BT"),
    BO(26, "Bolivia", "Боливия", "BO"),
    BA(27, "Bosnia And Herzegovina", "Босния и Герцеговина", "BA"),
    BW(28, "Botswana", "Ботсвана", "BW"),
    BR(29, "Brazil", "Бразилия", "BR"),
    VG(30, "British Virgin Islands", "Британские Виргинские острова", "VG"),
    BN(31, "Brunei Darussalam", "Бруней-Даруссалам", "BN"),
    BG(32, "Bulgaria", "Болгария", "BG"),
    BF(33, "Burkina Faso", "Буркина-Фасо", "BF"),
    BI(34, "Burundi", "Бурунди", "BI"),
    KH(35, "Cambodia", "Камбоджа", "KH"),
    CM(36, "Cameroon", "Камерун", "CM"),
    CA(37, "Canada", "Канада", "CA"),
    CV(38, "Cape Verde", "Кабо-Верде", "CV"),
    KY(39, "Cayman Islands", "Каймановы острова", "KY"),
    CF(40, "Central African Republic", "Центральноафриканская Республика", "CF"),
    TD(41, "Chad", "Чад", "TD"),
    CL(42, "Chile", "Чили", "CL"),
    CN(43, "China", "Китай", "CN"),
    CX(44, "Christmas Island", "Остров Рождества", "CX"),
    CC(45, "Cocos (Keeling) Islands", "Кокосовые острова", "CC"),
    CO(46, "Colombia", "Колумбия", "CO"),
    KM(47, "Comoros", "Коморские острова", "KM"),
    CG(48, "Congo", "Конго", "CG"),
    CK(49, "Cook Islands", "Острова Кука", "CK"),
    CR(50, "Costa Rica", "Коста-Рика", "CR"),
    CI(51, "Cote D' Ivoire", "Кот д' Ивуар", "CI"),
    HR(52, "Croatia", "Хорватия", "HR"),
    CU(53, "Cuba", "Куба", "CU"),
    CY(54, "Cyprus", "Кипр", "CY"),
    CZ(55, "Czech Republic", "Чехия", "CZ"),
    CD(56, "Democratic Republic Of Congo", "Демократическая республика Конго", "CD"),
    DK(57, "Denmark", "Дания", "DK"),
    DJ(58, "Djibouti", "Джибути", "DJ"),
    DM(59, "Dominica", "Доминика", "DM"),
    DO(60, "Dominican Republic", "Доминиканская Республика", "DO"),
    TP(61, "East Timor-Indonesia", "Восточный Тимор", "TP"),
    EC(62, "Ecuador", "Эквадор", "EC"),
    EG(63, "Egypt", "Египет", "EG"),
    SV(64, "El Salvador", "Сальвадор", "SV"),
    GQ(65, "Equatorial Guinea", "Экваториальная Гвинея", "GQ"),
    ER(66, "Eritrea", "Эритрея", "ER"),
    EE(67, "Estonia", "Эстония", "EE"),
    ET(68, "Ethiopia", "Эфиопия", "ET"),
    FK(69, "Falkland Islands", "Фоклендские острова", "FK"),
    FO(70, "Faroe Islands", "Фарерские острова", "FO"),
    FM(71, "Federated States of Micronesia", "Микронезия", "FM"),
    FJ(72, "Fiji", "Фиджи", "FJ"),
    FI(73, "Finland", "Финляндия", "FI"),
    FR(74, "France", "Франция", "FR"),
    GF(75, "French Guiana", "Французская Гвиана", "GF"),
    PF(76, "French Polynesia", "Французская Полинезия", "PF"),
    GA(77, "Gabon", "Габон", "GA"),
    GM(78, "Gambia", "Гамбия", "GM"),
    GE(79, "Georgia", "Грузия", "GE"),
    DE(80, "Germany", "Германия", "DE"),
    GH(81, "Ghana", "Гана", "GH"),
    GI(82, "Gibraltar", "Гибралтар", "GI"),
    GR(83, "Greece", "Греция", "GR"),
    GL(84, "Greenland", "Гренландия", "GL"),
    GD(85, "Grenada", "Гренада", "GD"),
    GP(86, "Guadeloupe", "Гваделупа", "GP"),
    GU(87, "Guam (USA)", "Гуам", "GU"),
    GT(88, "Guatemala", "Гватемала", "GT"),
    GG(89, "Guernsey", "Гернси", "GG"),
    GN(90, "Guinea", "Гвинея", "GN"),
    GW(91, "Guinea-Bissau", "Гвинея-Бисау", "GW"),
    GY(92, "Guyana", "Гайана", "GY"),
    HT(93, "Haiti", "Гаити", "HT"),
    HN(94, "Honduras", "Гондурас", "HN"),
    HK(95, "Hong Kong", "Гонконг", "HK"),
    HU(96, "Hungary", "Венгрия", "HU"),
    IS(97, "Iceland", "Исландия", "IS"),
    IN(98, "India", "Индия", "IN"),
    ID(99, "Indonesia", "Индонезия", "ID"),
    IR(100, "Iran", "Иран", "IR"),
    IQ(101, "Iraq", "Ирак", "IQ"),
    IE(102, "Ireland", "Ирландия", "IE"),
    IM(103, "Isle of Man", "Остров Мэн", "IM"),
    IL(104, "Israel", "Израиль", "IL"),
    IT(105, "Italy", "Италия", "IT"),
    JM(106, "Jamaica", "Ямайка", "JM"),
    JP(107, "Japan", "Япония", "JP"),
    JE(108, "Jersey", "Джерси", "JE"),
    JO(109, "Jordan", "Иордания", "JO"),
    KZ(110, "Kazakhstan", "Казахстан", "KZ"),
    KE(111, "Kenya", "Кения", "KE"),
    KI(112, "Kiribati", "Кирибати", "KI"),
    KP(113, "Korea (North)", "Северная Корея", "KP"),
    KR(114, "Korea (South)", "Южная Корея", "KR"),
    KW(115, "Kuwait", "Кувейт", "KW"),
    KG(116, "Kyrgyzstan", "Кыргызстан", "KG"),
    LA(117, "Laos", "Лаос", "LA"),
    LV(118, "Latvia", "Латвия", "LV"),
    LB(119, "Lebanon", "Ливан", "LB"),
    LS(120, "Lesotho", "Лесото", "LS"),
    LR(121, "Liberia", "Либерия", "LR"),
    LY(122, "Libya", "Ливия", "LY"),
    LT(123, "Lithuania", "Литва", "LT"),
    LU(124, "Luxembourg", "Люксембург", "LU"),
    MO(125, "Macau", "Макао", "MO"),
    MK(126, "Macedonia", "Македония", "MK"),
    MG(127, "Madagascar", "Мадагаскар", "MG"),
    MW(128, "Malawi", "Малави", "MW"),
    MY(129, "Malaysia", "Малайзия", "MY"),
    MV(130, "Maldives", "Мальдивы", "MV"),
    ML(131, "Mali", "Мали", "ML"),
    MT(132, "Malta", "Мальта", "MT"),
    MH(133, "Marshall Islands", "Маршалловы острова", "MH"),
    MQ(134, "Martinique", "Мартиника", "MQ"),
    MR(135, "Mauritania", "Мавритания", "MR"),
    MU(136, "Mauritius", "Маврикий", "MU"),
    MX(137, "Mexico", "Мексика", "MX"),
    MD(138, "Moldova", "Молдова", "MD"),
    MC(139, "Monaco", "Монако", "MC"),
    MN(140, "Mongolia", "Монголия", "MN"),
    ME(141, "Montenegro", "Черногория", "ME"),
    MS(142, "Montserrat", "Монсеррат", "MS"),
    MA(143, "Morocco", "Марокко", "MA"),
    MZ(144, "Mozambique", "Мозамбик", "MZ"),
    MM(145, "Myanmar", "Мьянма", "MM"),
    NA(146, "Namibia", "Намибия", "NA"),
    NR(147, "Nauru", "Науру", "NR"),
    NP(148, "Nepal", "Непал", "NP"),
    NL(149, "Netherlands", "Нидерланды", "NL"),
    AN(150, "Netherlands Antilles", "Нидерландские Антильские острова", "AN"),
    NC(151, "New Caledonia", "Новая Каледония", "NC"),
    NZ(152, "New Zealand", "Новая Зеландия", "NZ"),
    NI(153, "Nicaragua", "Никарагуа", "NI"),
    NE(154, "Niger", "Нигер", "NE"),
    NG(155, "Nigeria", "Нигерия", "NG"),
    NU(156, "Niue", "Ниуэ", "NU"),
    NF(157, "Norfolk Island", "Норфолк Айленд", "NF"),
    MP(158, "Northern Mariana Islands", "Северные Марианские острова", "MP"),
    NO(159, "Norway", "Норвегия", "NO"),
    OM(160, "Oman", "Оман", "OM"),
    PK(161, "Pakistan", "Пакистан", "PK"),
    PW(162, "Palau", "Палау", "PW"),
    PA(163, "Panama", "Панама", "PA"),
    PG(164, "Papua New Guinea", "Папуа - Новая Гвинея", "PG"),
    PY(165, "Paraguay", "Парагвай", "PY"),
    PE(166, "Peru", "Перу", "PE"),
    PH(167, "Philippines", "Филиппины", "PH"),
    PL(168, "Poland", "Польша", "PL"),
    PT(169, "Portugal", "Португалия", "PT"),
    PR(170, "Puerto Rico", "Пуэрто Рико", "PR"),
    QA(171, "Qatar", "Катар", "QA"),
    RE(172, "Reunion", "Реюньон", "RE"),
    RO(173, "Romania", "Румыния", "RO"),
    RU(174, "Russian Federation", "Россия", "RU"),
    RW(175, "Rwanda", "Руанда", "RW"),
    KN(176, "Saint Kitts and Nevis", "Сент-Китс и Невис", "KN"),
    LC(177, "Saint Lucia", "Сент-Люсия", "LC"),
    VC(178, "Saint Vincent and the Grenadines", "Сент-Винсент и Гренадины", "VC"),
    WS(179, "Samoa", "Самоа", "WS"),
    ST(180, "Sao Tome and Principe", "Сан-Томе и Принсипи", "ST"),
    SA(181, "Saudi Arabia", "Саудовская Аравия", "SA"),
    SN(182, "Senegal", "Сенегал", "SN"),
    RS(183, "Serbia", "Сербия", "RS"),
    SC(184, "Seychelles", "Сейшельские о-ва", "SC"),
    SL(185, "Sierra Leone", "Сьерра-Леоне", "SL"),
    SG(186, "Singapore", "Сингапур", "SG"),
    SK(187, "Slovakia", "Словакия", "SK"),
    SI(188, "Slovenia", "Словения", "SI"),
    SB(189, "Solomon Islands", "Соломоновы острова", "SB"),
    SO(190, "Somalia", "Сомали", "SO"),
    ZA(191, "South Africa", "ЮАР", "ZA"),
    ES(192, "Spain", "Испания", "ES"),
    LK(193, "Sri Lanka", "Шри-Ланка", "LK"),
    SH(194, "St. Helena", "Остров святой Елены", "SH"),
    PM(195, "St. Pierre and Miquelon", "Сен-Пьер и Микелон", "PM"),
    SD(196, "Sudan", "Судан", "SD"),
    SR(197, "Suriname", "Суринам", "SR"),
    SZ(198, "Swaziland", "Свазиленд", "SZ"),
    SE(199, "Sweden", "Швеция", "SE"),
    CH(200, "Switzerland", "Швейцария", "CH"),
    SY(201, "Syria", "Сирия", "SY"),
    TW(202, "Taiwan", "Тайвань", "TW"),
    TJ(203, "Tajikistan", "Таджикистан", "TJ"),
    TZ(204, "Tanzania", "Танзания", "TZ"),
    TH(205, "Thailand", "Таиланд", "TH"),
    TG(206, "Togo", "Того", "TG"),
    TO(207, "Tonga", "Тонга", "TO"),
    TT(208, "Trinidad And Tobago", "Тринидад и Тобаго", "TT"),
    TN(209, "Tunisia", "Тунис", "TN"),
    TR(210, "Turkey", "Турция", "TR"),
    TM(211, "Turkmenistan", "Туркменистан", "TM"),
    TC(212, "Turks and Caicos Islands", "Теркс и Кайкос", "TC"),
    TV(213, "Tuvalu", "Тувалу", "TV"),
    UG(214, "Uganda", "Уганда", "UG"),
    UA(215, "Ukraine", "Украина", "UA"),
    AE(216, "United Arab Emirates", "ОАЭ", "AE"),
    GB(217, "United Kingdom", "Великобритания", "GB"),
    US(218, "United States", "США", "US"),
    UY(219, "Uruguay", "Уругвай", "UY"),
    UM(220, "US Minor Outlying Islands", "Внешние малые острова США", "UM"),
    VI(221, "US Virgin Islands", "Американские Виргинские острова", "VI"),
    UZ(222, "Uzbekistan", "Узбекистан", "UZ"),
    VU(223, "Vanuatu", "Вануату", "VU"),
    VE(224, "Venezuela", "Венесуэла", "VE"),
    VN(225, "Vietnam", "Вьетнам", "VN"),
    WF(226, "Wallis and Futuna Islands", "Острова Уоллис и Футуна", "WF"),
    EH(227, "Western Sahara", "Западная Сахара", "EH"),
    YE(228, "Yemen", "Йемен", "YE"),
    ZR(229, "Zaire", "Заир", "ZR"),
    ZM(230, "Zambia", "Замбия", "ZM"),
    ZW(231, "Zimbabwe", "Зимбабве", "ZW");

    private Integer id;
    private String engName;
    private String rusName;
    private String isoCode;

    CountryEnum(Integer id, String engName, String rusName, String isoCode) {
        this.id = id;
        this.engName = engName;
        this.rusName = rusName;
        this.isoCode = isoCode;
    }

    public Integer getId() {
        return id;
    }

    public String getEngName() {
        return engName;
    }

    public String getRusName() {
        return rusName;
    }

    public String getIsoCode() {
        return isoCode;
    }

    public static CountryEnum findById(int i) {
        return CountryEnum.values()[i - 1];
    }

    public static void main(String[] args) throws Exception {
        FileReader fileReader = new FileReader("D:/projects/java/airtransfer/server/src/main/resources/conf/flag.txt");
        BufferedReader reader = new BufferedReader(fileReader);
        String line = null;
        int count = 0;

        while ((line = reader.readLine()) != null) {
            CountryEnum country = search(line);
            if (country == null) {
                System.out.println("ERROR >> " + line);
                count++;
            } else {
                System.out.println(" .c_" + country.getIsoCode() + " .ui-selectmenu-item-icon { background: url(\"/images/flags/" + country.getEngName() + ".png\") 0 0 no-repeat;}");
//                System.out.println("{ find: '.c_" + country.getIsoCode() + "' },");
            }
        }

        System.out.println("Total : " + count);
    }

    public static CountryEnum search(String phrase) {
        CountryEnum[] list = CountryEnum.values();
        for (CountryEnum item : list) {
            if (phrase.contains(item.getEngName())) {
                return item;
            }
        }
        return null;
    }
}
