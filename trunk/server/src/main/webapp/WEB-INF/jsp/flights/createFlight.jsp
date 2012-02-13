<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
<jsp:attribute name="center">
        <jsp:include page="/WEB-INF/jsp/includes/topmenu.jsp"/>
        <div class="cPage">
        <div class="cBlock"></div>
        <h1>${i18n['label.flight.addFlight']}</h1>


        <div class="cFlight">
        <div class="cBackFlight">
            <input id="twoWays" type="checkbox" style="display: none;">
            <a style="float: right;" class="cReturn" href="javascript:void(0)">
            </a>
        </div>
        <div class="cClear"></div>
        <div class="cFlightFromBlock" style="width: 100%; position: relative;">
            <table id="flightFrom">
                <tr>
                    <th rowspan="4" style="width: 60px; vertical-align: middle; padding-top: 10px;">
                        <div class="cFlightFrom"></div>
                    </th>
                    <td><label>${i18n['label.flight.form.from']}:</label></td>
                    <td><label>${i18n['label.flight.form.departureDate']}:</label></td>
                    <td></td>

                </tr>
                <tr>
                    <td>
                        <input id="fromCity" type="text" name="fromCity"/>
                        <input id="fromCityHidden" type="hidden"/>
                    </td>
                    <td>
                        <input name="departureDate" type="text" id="departureDate" class="jCalendar"/>
                            <span class="cClearBtn cCalendar">
                                <img alt="clear" src="/images/calendar.gif"/>
                            </span>
                    </td>
                    <td></td>

                </tr>
                <tr>

                    <td>
                        <label>${i18n['label.flight.form.seat']}:</label>
                    </td>
                    <td></td>
                    <td><label>${i18n['label.flight.form.flight_number']}</label></td>
                </tr>
                <tr>
                    <td>
                        <input type="text" id="seatFrom" maxlength="3"/>
                    </td>
                    <td>
                        <input style="" type="text" id="flightNumber"/>
                    </td>
                    <td>
                        <select class=" jSelect" id="termFrom" style="float:left;">
                            <option value="${i18n['label.flight.form.term']} A">${i18n['label.flight.form.term']} A
                            </option>
                            <option value="${i18n['label.flight.form.term']} B">${i18n['label.flight.form.term']} B
                            </option>
                            <option value="${i18n['label.flight.form.term']} C">${i18n['label.flight.form.term']} C
                            </option>
                            <option value="${i18n['label.flight.form.term']} D">${i18n['label.flight.form.term']} D
                            </option>
                            <option value="${i18n['label.flight.form.term']} E">${i18n['label.flight.form.term']} E
                            </option>
                            <option value="${i18n['label.flight.form.term']} F">${i18n['label.flight.form.term']} F
                            </option>
                            <option value="${i18n['label.flight.form.term']} G">${i18n['label.flight.form.term']} G
                            </option>
                            <option value="${i18n['label.flight.form.term']} H">${i18n['label.flight.form.term']} H
                            </option>
                            <option value="${i18n['label.flight.form.term']} I">${i18n['label.flight.form.term']} I
                            </option>
                            <option value="${i18n['label.flight.form.term']} J">${i18n['label.flight.form.term']} J
                            </option>
                            <option value="${i18n['label.flight.form.term']} K">${i18n['label.flight.form.term']} K
                            </option>
                            <option value="${i18n['label.flight.form.term']} L">${i18n['label.flight.form.term']} L
                            </option>
                            <option value="${i18n['label.flight.form.term']} M">${i18n['label.flight.form.term']} M
                            </option>
                            <option value="${i18n['label.flight.form.term']} N">${i18n['label.flight.form.term']} N
                            </option>
                            <option value="${i18n['label.flight.form.term']} O">${i18n['label.flight.form.term']} O
                            </option>
                            <option value="${i18n['label.flight.form.term']} P">${i18n['label.flight.form.term']} P
                            </option>
                            <option value="${i18n['label.flight.form.term']} Q">${i18n['label.flight.form.term']} Q
                            </option>
                            <option value="${i18n['label.flight.form.term']} R">${i18n['label.flight.form.term']} R
                            </option>
                            <option value="${i18n['label.flight.form.term']} S">${i18n['label.flight.form.term']} S
                            </option>
                            <option value="${i18n['label.flight.form.term']} T">${i18n['label.flight.form.term']} T
                            </option>
                            <option value="${i18n['label.flight.form.term']} U">${i18n['label.flight.form.term']} U
                            </option>
                            <option value="${i18n['label.flight.form.term']} V">${i18n['label.flight.form.term']} V
                            </option>
                            <option value="${i18n['label.flight.form.term']} W">${i18n['label.flight.form.term']} W
                            </option>
                            <option value="${i18n['label.flight.form.term']} X">${i18n['label.flight.form.term']} X
                            </option>
                            <option value="${i18n['label.flight.form.term']} Y">${i18n['label.flight.form.term']} Y
                            </option>
                            <option value="${i18n['label.flight.form.term']} Z">${i18n['label.flight.form.term']} Z
                            </option>
                        </select>
                    </td>

                    <td></td>
                    <td></td>
                </tr>
            </table>
            <div class="cBlock"></div>
            <table>
                <tr>
                    <th rowspan="4" style="width: 60px; vertical-align: middle; padding-top: 10px;">
                        <div class="cFlightTo"></div>
                    </th>
                    <td><label>${i18n['label.flight.form.to']}:</label></td>
                    <td><label>${i18n['label.flight.form.arriveDate']}:</label></td>
                </tr>
                <tr>
                    <td>
                        <input id="toCity" type="text" name="toCity"/>
                        <input id="toCityHidden" type="hidden"/>
                    </td>
                    <td>
                        <input name="arriveDate" type="text" id="arriveDate" class="jCalendar"/>
                    <span class="cClearBtn cCalendar">
                        <img alt="clear" src="/images/calendar.gif"/>
                    </span>
                    </td>
                    <td>
                        <select class=" jSelect" id="termTo" style="float:left;">
                            <option value="${i18n['label.flight.form.term']} A">${i18n['label.flight.form.term']} A
                            </option>
                            <option value="${i18n['label.flight.form.term']} B">${i18n['label.flight.form.term']} B
                            </option>
                            <option value="${i18n['label.flight.form.term']} C">${i18n['label.flight.form.term']} C
                            </option>
                            <option value="${i18n['label.flight.form.term']} D">${i18n['label.flight.form.term']} D
                            </option>
                            <option value="${i18n['label.flight.form.term']} E">${i18n['label.flight.form.term']} E
                            </option>
                            <option value="${i18n['label.flight.form.term']} F">${i18n['label.flight.form.term']} F
                            </option>
                            <option value="${i18n['label.flight.form.term']} G">${i18n['label.flight.form.term']} G
                            </option>
                            <option value="${i18n['label.flight.form.term']} H">${i18n['label.flight.form.term']} H
                            </option>
                            <option value="${i18n['label.flight.form.term']} I">${i18n['label.flight.form.term']} I
                            </option>
                            <option value="${i18n['label.flight.form.term']} J">${i18n['label.flight.form.term']} J
                            </option>
                            <option value="${i18n['label.flight.form.term']} K">${i18n['label.flight.form.term']} K
                            </option>
                            <option value="${i18n['label.flight.form.term']} L">${i18n['label.flight.form.term']} L
                            </option>
                            <option value="${i18n['label.flight.form.term']} M">${i18n['label.flight.form.term']} M
                            </option>
                            <option value="${i18n['label.flight.form.term']} N">${i18n['label.flight.form.term']} N
                            </option>
                            <option value="${i18n['label.flight.form.term']} O">${i18n['label.flight.form.term']} O
                            </option>
                            <option value="${i18n['label.flight.form.term']} P">${i18n['label.flight.form.term']} P
                            </option>
                            <option value="${i18n['label.flight.form.term']} Q">${i18n['label.flight.form.term']} Q
                            </option>
                            <option value="${i18n['label.flight.form.term']} R">${i18n['label.flight.form.term']} R
                            </option>
                            <option value="${i18n['label.flight.form.term']} S">${i18n['label.flight.form.term']} S
                            </option>
                            <option value="${i18n['label.flight.form.term']} T">${i18n['label.flight.form.term']} T
                            </option>
                            <option value="${i18n['label.flight.form.term']} U">${i18n['label.flight.form.term']} U
                            </option>
                            <option value="${i18n['label.flight.form.term']} V">${i18n['label.flight.form.term']} V
                            </option>
                            <option value="${i18n['label.flight.form.term']} W">${i18n['label.flight.form.term']} W
                            </option>
                            <option value="${i18n['label.flight.form.term']} X">${i18n['label.flight.form.term']} X
                            </option>
                            <option value="${i18n['label.flight.form.term']} Y">${i18n['label.flight.form.term']} Y
                            </option>
                            <option value="${i18n['label.flight.form.term']} Z">${i18n['label.flight.form.term']} Z
                            </option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
            <div style="position: absolute; top: 0px; right: 0px; width: 200px; height: 200px;">
                <textarea rows="8" cols="23" id="flightComment" style=""></textarea>
            </div>
        </div>
            <%--==============================================- BACK FLIGHT -==============================================--%>
        <div class="cBlock" style="height: 60px;"></div>
        <div id="jBackFlight" style="display: none; width: 100%; position: relative;">
            <table id="backFlightFrom">
                <tr>
                    <th rowspan="4" style="width: 60px; vertical-align: middle; padding-top: 10px;">
                        <div class="cFlightFrom"></div>
                    </th>
                    <td><label>${i18n['label.flight.form.from']}:</label></td>
                    <td><label>${i18n['label.flight.form.departureDate']}:</label></td>

                </tr>
                <tr>
                    <td>
                        <input id="backFromCity" type="text" name="fromCity"/>
                        <input id="backFromCityHidden" type="hidden"/>
                    </td>
                    <td>
                        <input name="departureDate" type="text" id="backDepartureDate" class="jCalendar"/>
                            <span class="cClearBtn cCalendar">
                                <img alt="clear" src="/images/calendar.gif"/>
                            </span>
                    </td>
                    <td></td>
                </tr>
                <tr>

                    <td>
                        <label>${i18n['label.flight.form.seat']}:</label>
                    </td>
                    <td><label>${i18n['label.flight.form.flight_number']}</label></td>
                    <td>&nbsp;</td>

                    <td></td>
                </tr>
                <tr>
                    <td>
                        <input type="text" id="backSeatFrom" maxlength="3"/>
                    </td>
                    <td><input style="" type="text" id="backFlightNumber"/></td>
                    <td>
                        <select class=" jSelect" id="backTermFrom" style="float:left;">
                            <option value="${i18n['label.flight.form.term']} A">${i18n['label.flight.form.term']} A
                            </option>
                            <option value="${i18n['label.flight.form.term']} B">${i18n['label.flight.form.term']} B
                            </option>
                            <option value="${i18n['label.flight.form.term']} C">${i18n['label.flight.form.term']} C
                            </option>
                            <option value="${i18n['label.flight.form.term']} D">${i18n['label.flight.form.term']} D
                            </option>
                            <option value="${i18n['label.flight.form.term']} E">${i18n['label.flight.form.term']} E
                            </option>
                            <option value="${i18n['label.flight.form.term']} F">${i18n['label.flight.form.term']} F
                            </option>
                            <option value="${i18n['label.flight.form.term']} G">${i18n['label.flight.form.term']} G
                            </option>
                            <option value="${i18n['label.flight.form.term']} H">${i18n['label.flight.form.term']} H
                            </option>
                            <option value="${i18n['label.flight.form.term']} I">${i18n['label.flight.form.term']} I
                            </option>
                            <option value="${i18n['label.flight.form.term']} J">${i18n['label.flight.form.term']} J
                            </option>
                            <option value="${i18n['label.flight.form.term']} K">${i18n['label.flight.form.term']} K
                            </option>
                            <option value="${i18n['label.flight.form.term']} L">${i18n['label.flight.form.term']} L
                            </option>
                            <option value="${i18n['label.flight.form.term']} M">${i18n['label.flight.form.term']} M
                            </option>
                            <option value="${i18n['label.flight.form.term']} N">${i18n['label.flight.form.term']} N
                            </option>
                            <option value="${i18n['label.flight.form.term']} O">${i18n['label.flight.form.term']} O
                            </option>
                            <option value="${i18n['label.flight.form.term']} P">${i18n['label.flight.form.term']} P
                            </option>
                            <option value="${i18n['label.flight.form.term']} Q">${i18n['label.flight.form.term']} Q
                            </option>
                            <option value="${i18n['label.flight.form.term']} R">${i18n['label.flight.form.term']} R
                            </option>
                            <option value="${i18n['label.flight.form.term']} S">${i18n['label.flight.form.term']} S
                            </option>
                            <option value="${i18n['label.flight.form.term']} T">${i18n['label.flight.form.term']} T
                            </option>
                            <option value="${i18n['label.flight.form.term']} U">${i18n['label.flight.form.term']} U
                            </option>
                            <option value="${i18n['label.flight.form.term']} V">${i18n['label.flight.form.term']} V
                            </option>
                            <option value="${i18n['label.flight.form.term']} W">${i18n['label.flight.form.term']} W
                            </option>
                            <option value="${i18n['label.flight.form.term']} X">${i18n['label.flight.form.term']} X
                            </option>
                            <option value="${i18n['label.flight.form.term']} Y">${i18n['label.flight.form.term']} Y
                            </option>
                            <option value="${i18n['label.flight.form.term']} Z">${i18n['label.flight.form.term']} Z
                            </option>
                        </select>
                    </td>

                    <td></td>
                </tr>
            </table>
            <div class="cBlock"></div>

            <table>
                <tr>
                    <th rowspan="4" style="width: 60px; vertical-align: middle; padding-top: 10px;">
                        <div class="cFlightTo"></div>
                    </th>
                    <td><label>${i18n['label.flight.form.to']}:</label></td>
                    <td><label>${i18n['label.flight.form.arriveDate']}:</label></td>
                </tr>
                <tr>
                    <td>
                        <input id="backToCity" type="text" name="toCity"/>
                        <input id="backToCityHidden" type="hidden"/>
                    </td>
                    <td>
                        <input name="arriveDate" type="text" id="backArriveDate" class="jCalendar"/>
                            <span class="cClearBtn cCalendar">
                                <img alt="clear" src="/images/calendar.gif"/>
                            </span>
                    </td>
                    <td>
                        <select class=" jSelect" id="backTermTo" style="float:left;">
                            <option value="${i18n['label.flight.form.term']} A">${i18n['label.flight.form.term']} A
                            </option>
                            <option value="${i18n['label.flight.form.term']} B">${i18n['label.flight.form.term']} B
                            </option>
                            <option value="${i18n['label.flight.form.term']} C">${i18n['label.flight.form.term']} C
                            </option>
                            <option value="${i18n['label.flight.form.term']} D">${i18n['label.flight.form.term']} D
                            </option>
                            <option value="${i18n['label.flight.form.term']} E">${i18n['label.flight.form.term']} E
                            </option>
                            <option value="${i18n['label.flight.form.term']} F">${i18n['label.flight.form.term']} F
                            </option>
                            <option value="${i18n['label.flight.form.term']} G">${i18n['label.flight.form.term']} G
                            </option>
                            <option value="${i18n['label.flight.form.term']} H">${i18n['label.flight.form.term']} H
                            </option>
                            <option value="${i18n['label.flight.form.term']} I">${i18n['label.flight.form.term']} I
                            </option>
                            <option value="${i18n['label.flight.form.term']} J">${i18n['label.flight.form.term']} J
                            </option>
                            <option value="${i18n['label.flight.form.term']} K">${i18n['label.flight.form.term']} K
                            </option>
                            <option value="${i18n['label.flight.form.term']} L">${i18n['label.flight.form.term']} L
                            </option>
                            <option value="${i18n['label.flight.form.term']} M">${i18n['label.flight.form.term']} M
                            </option>
                            <option value="${i18n['label.flight.form.term']} N">${i18n['label.flight.form.term']} N
                            </option>
                            <option value="${i18n['label.flight.form.term']} O">${i18n['label.flight.form.term']} O
                            </option>
                            <option value="${i18n['label.flight.form.term']} P">${i18n['label.flight.form.term']} P
                            </option>
                            <option value="${i18n['label.flight.form.term']} Q">${i18n['label.flight.form.term']} Q
                            </option>
                            <option value="${i18n['label.flight.form.term']} R">${i18n['label.flight.form.term']} R
                            </option>
                            <option value="${i18n['label.flight.form.term']} S">${i18n['label.flight.form.term']} S
                            </option>
                            <option value="${i18n['label.flight.form.term']} T">${i18n['label.flight.form.term']} T
                            </option>
                            <option value="${i18n['label.flight.form.term']} U">${i18n['label.flight.form.term']} U
                            </option>
                            <option value="${i18n['label.flight.form.term']} V">${i18n['label.flight.form.term']} V
                            </option>
                            <option value="${i18n['label.flight.form.term']} W">${i18n['label.flight.form.term']} W
                            </option>
                            <option value="${i18n['label.flight.form.term']} X">${i18n['label.flight.form.term']} X
                            </option>
                            <option value="${i18n['label.flight.form.term']} Y">${i18n['label.flight.form.term']} Y
                            </option>
                            <option value="${i18n['label.flight.form.term']} Z">${i18n['label.flight.form.term']} Z
                            </option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
            <div style="position: absolute; top: 0px; right: 0px; width: 200px; height: 150px;">
                <textarea rows="8" cols="23" id="backflightComment"></textarea>
            </div>
        </div>
        <div class="cBlock"></div>
        <div style="height: 40px;">
                <%-- <label for="termTo">Return:&nbsp;&nbsp;&nbsp;</label>
           <input type="checkbox" checked="true" value="Return" id="oneWay"/> --%>
            <input id="submitFlight" type="button" value="Create Flight"/>
            <!-- Submit form after click Enter button -->
            <input type="submit" style="display: none;"/>
        </div>
        </div>
        </div>
        <div class="cClear"></div>
    </jsp:attribute>
</tags:main>
<script type="text/javascript">

function findAirport(request, response) {
    $.ajax({
                url: "/rest/search/findairports?term=" + request.term,
                success: function(data) {
                    if (data.data instanceof Array) {
                        response(data.data);
                    } else {
                        if (isEmpty(data.data)) {
                            response([]);
                        } else {
                            response([
                                {
                                    id :  data.data.id,
                                    label: data.data.label,
                                    value: data.data.label
                                }
                            ]);
                        }
                    }
                    return;
                }
            });

}
$(document).ready(function() {

    $('#termFrom').selectmenu({});
    $('#termTo').selectmenu({});
    $('#backTermFrom').selectmenu({});
    $('#backTermTo').selectmenu({});
    $('.cReturn').click(function() {
        if ($("#twoWays").is(':checked')) {
            $("#twoWays").removeAttr("checked");
        } else {
            $("#twoWays").attr("checked", "checked");
        }
        $('#jBackFlight').slideToggle();
    });
    $('.jCalendar').datepicker({
                showAnim: 'slideDown',
                changeMonth: true,
                changeYear: true,
                dateFormat: 'yy.mm.dd',
                yearRange: '2000:2100'
            });

    $('#fromCity').autocomplete({
                source: function(request, response) {
                    findAirport(request, response);
                },
                minChars:2,
                maxHeight:400,
                width:300,
                zIndex: 1,
                deferRequestBy: 0,
                noCache: false,
                select: function(value, data) {
                    $('#fromCityHidden').val(data.item.id);
                    return;
                }
            });
    $('#backFromCity').autocomplete({
                source: function(request, response) {
                    findAirport(request, response);
                },
                minChars:2,
                maxHeight:400,
                width:300,
                zIndex: 1,
                deferRequestBy: 0,
                noCache: false,
                select: function(value, data) {
                    $('#backFromCityHidden').val(data.item.id);
                    return;
                }
            });

    $('#toCity').autocomplete({
                source: function(request, response) {
                    findAirport(request, response);
                },
                minChars:2,
                maxHeight:400,
                width:300,
                zIndex: 1,
                deferRequestBy: 0,
                noCache: false,
                // callback function:
                select: function(value, data) {
                    $('#toCityHidden').val(data.item.id);
                    return;
                }
            });

    $('#backToCity').autocomplete({
                source: function(request, response) {
                    findAirport(request, response);
                },
                minChars:2,
                maxHeight:400,
                width:300,
                zIndex: 1,
                deferRequestBy: 0,
                noCache: false,
                // callback function:
                select: function(value, data) {
                    $('#backToCityHidden').val(data.item.id);
                    return;
                }
            });

    $('#submitFlight').click(function() {
        createFlight();
    });
});

function isValid_InputData() {

    var isBackFlight = $('#twoWays').is(':checked');
    if (isBackFlight) {
        if ($('#backFromCityHidden').val() == undefined || $('#backToCityHidden').val() == undefined) {
            return false;
        }
        if ($('#backDepartureDate').val() == undefined || $('#backDepartureDate').val() == ''
                || $('#backArriveDate').val() == undefined || $('#backArriveDate').val() == '') {
            return false;
        }
    }
    if ($('#fromCityHidden').val() == undefined || $('#toCityHidden').val() == undefined) {
        return false;
    }
    if ($('#departureDate').val() == undefined || $('#departureDate').val() == ''
            || $('#arriveDate').val() == undefined || $('#arriveDate').val() == '') {
        return false;
    }
    return true;
}

function clearFields() {
    $('#fromCity').val('');
    $('#fromCityHidden').val('');
    $('#departureDate').val('');
    $('#seatFrom').val('');
    $('#termFrom').val('');
    $('#flightNumber').val('');

    $('#toCity').val('');
    $('#toCityHidden').val('');
    $('#arriveDate').val('');
    $('#termTo').val('');
    $('#flightComment').val('');

    if ($('#twoWays').is(':checked')) {
        $("#twoWays").removeAttr("checked");
        $('#jBackFlight').slideToggle();
    }

    $('#backFromCity').val('');
    $('#backFromCityHidden').val('');
    $('#backDepartureDate').val('');
    $('#backSeatFrom').val('');
    $('#backTermFrom').val('');
    $('#backFlightNumber').val('');

    $('#backToCity').val('');
    $('#backToCityHidden').val('');
    $('#backArriveDate').val('');
    $('#backTermTo').val('');
    $('#backFlightComment').val('');


}

function createFlight() {

    if (isValid_InputData()) {

        var directFlight = {
            fromAirport:$('#fromCityHidden').val(),
            departureDate:$('#departureDate').val(),
            seatTo:$('#seatFrom').val(),
            terminalFrom:$('#termFrom').val(),
            flightNumber:$('#flightNumber').val(),

            toAirport:$('#toCityHidden').val(),
            arriveDate:$('#arriveDate').val(),
            terminalTo:$('#termTo').val(),
            flightComment:$('#flightComment').val(),
            twoWays:$('#twoWays').is(':checked')
        };

        if ($('#twoWays').is(':checked')) {
            var backFlight = {
                fromAirport:$('#backFromCityHidden').val(),
                departureDate:$('#backDepartureDate').val(),
                seatTo:$('#backSeatFrom').val(),
                terminalFrom:$('#backTermFrom').val(),
                flightNumber:$('#backFlightNumber').val(),

                toAirport:$('#backToCityHidden').val(),
                arriveDate:$('#backArriveDate').val(),
                terminalTo:$('#backTermTo').val(),
                flightComment:$('#backFlightComment').val()
            };

            directFlight.backFlight = backFlight;
        }

        $.ajax({
                    type: 'post',
                    url: "/rest/flights",
                    contentType: "application/json; charset=utf-8",
                    data : JSON.stringify(directFlight),
                    success:function(event) {
                        if (event.success == 'true') {
                            clearFields();
                        } else {
                            alert(event.message);
                        }
                    }
                });

    } else {
        alert("Not all required fields are filled !");
    }
}

</script>
<style type="text/css">
    .cFlight td {
        width: 160px;
    }

    .ui-selectmenu {
        height: 24px;
        width: 135px !important;
    }

    .ui-selectmenu-menu li a, .ui-selectmenu-status {
        padding: 0.105em 1em;
    }

    .ui-selectmenu-menu {
        width: 165px !important;
    }
</style>