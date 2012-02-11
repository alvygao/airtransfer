<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
<jsp:attribute name="center">
        <jsp:include page="/WEB-INF/jsp/includes/topmenu.jsp"/>
        <div class="cPage">
        <div class="cBlock"></div>
        <h1>${i18n['label.flight.addFlight']}</h1>


        <div class="cFlight">
        <table id="flightFrom">
            <tr>
                <th rowspan="4" style="width: 60px; vertical-align: middle; padding-top: 10px;">
                    <div class="cFlightFrom"></div>
                </th>
                <td><label>${i18n['label.flight.form.from']}:</label></td>
                <td><label>${i18n['label.flight.form.departureDate']}:</label></td>
                <td>
                    <label>${i18n['label.flight.form.seat']}:</label>
                </td>
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
                <td>
                    <input type="text" id="seatFrom" maxlength="3"/>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><label>${i18n['label.flight.form.flight_number']}</label></td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <select class=" jSelect" id="termFrom" style="float:left;">
                        <option value="${i18n['label.flight.form.term']} A">${i18n['label.flight.form.term']} A</option>
                        <option value="${i18n['label.flight.form.term']} B">${i18n['label.flight.form.term']} B</option>
                        <option value="${i18n['label.flight.form.term']} C">${i18n['label.flight.form.term']} C</option>
                        <option value="${i18n['label.flight.form.term']} D">${i18n['label.flight.form.term']} D</option>
                        <option value="${i18n['label.flight.form.term']} E">${i18n['label.flight.form.term']} E</option>
                        <option value="${i18n['label.flight.form.term']} F">${i18n['label.flight.form.term']} F</option>
                        <option value="${i18n['label.flight.form.term']} G">${i18n['label.flight.form.term']} G</option>
                        <option value="${i18n['label.flight.form.term']} H">${i18n['label.flight.form.term']} H</option>
                        <option value="${i18n['label.flight.form.term']} I">${i18n['label.flight.form.term']} I</option>
                        <option value="${i18n['label.flight.form.term']} J">${i18n['label.flight.form.term']} J</option>
                        <option value="${i18n['label.flight.form.term']} K">${i18n['label.flight.form.term']} K</option>
                        <option value="${i18n['label.flight.form.term']} L">${i18n['label.flight.form.term']} L</option>
                        <option value="${i18n['label.flight.form.term']} M">${i18n['label.flight.form.term']} M</option>
                        <option value="${i18n['label.flight.form.term']} N">${i18n['label.flight.form.term']} N</option>
                        <option value="${i18n['label.flight.form.term']} O">${i18n['label.flight.form.term']} O</option>
                        <option value="${i18n['label.flight.form.term']} P">${i18n['label.flight.form.term']} P</option>
                        <option value="${i18n['label.flight.form.term']} Q">${i18n['label.flight.form.term']} Q</option>
                        <option value="${i18n['label.flight.form.term']} R">${i18n['label.flight.form.term']} R</option>
                        <option value="${i18n['label.flight.form.term']} S">${i18n['label.flight.form.term']} S</option>
                        <option value="${i18n['label.flight.form.term']} T">${i18n['label.flight.form.term']} T</option>
                        <option value="${i18n['label.flight.form.term']} U">${i18n['label.flight.form.term']} U</option>
                        <option value="${i18n['label.flight.form.term']} V">${i18n['label.flight.form.term']} V</option>
                        <option value="${i18n['label.flight.form.term']} W">${i18n['label.flight.form.term']} W</option>
                        <option value="${i18n['label.flight.form.term']} X">${i18n['label.flight.form.term']} X</option>
                        <option value="${i18n['label.flight.form.term']} Y">${i18n['label.flight.form.term']} Y</option>
                        <option value="${i18n['label.flight.form.term']} Z">${i18n['label.flight.form.term']} Z</option>
                    </select>
                </td>
                <td>
                    <input style="margin-left: 28px;" type="text" id="flightNumber"/>
                </td>
                <td></td>
                <td></td>
            </tr>
        </table>
        <div class="cBlock"></div>
        <table id="jFlightTo">
            <tr>
                <th rowspan="4" style="width: 60px; vertical-align: middle; padding-top: 10px;">
                    <div class="cFlightTo"></div>
                </th>
                <td><label>${i18n['label.flight.form.to']}:</label></td>
                <td><label>${i18n['label.flight.form.arriveDate']}:</label></td>
                <td>
                    <label>${i18n['label.flight.form.seat']}:</label>

                </td>
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
                    <input type="text" id="seatTo"/>
                </td>
            </tr>
            <tr>
                <td><label>&nbsp;</label></td>
                <td><label>${i18n['label.flight.form.comment']}:</label></td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <select class=" jSelect" id="termTo" style="float:left;">
                        <option value="${i18n['label.flight.form.term']} A">${i18n['label.flight.form.term']} A</option>
                        <option value="${i18n['label.flight.form.term']} B">${i18n['label.flight.form.term']} B</option>
                        <option value="${i18n['label.flight.form.term']} C">${i18n['label.flight.form.term']} C</option>
                        <option value="${i18n['label.flight.form.term']} D">${i18n['label.flight.form.term']} D</option>
                        <option value="${i18n['label.flight.form.term']} E">${i18n['label.flight.form.term']} E</option>
                        <option value="${i18n['label.flight.form.term']} F">${i18n['label.flight.form.term']} F</option>
                        <option value="${i18n['label.flight.form.term']} G">${i18n['label.flight.form.term']} G</option>
                        <option value="${i18n['label.flight.form.term']} H">${i18n['label.flight.form.term']} H</option>
                        <option value="${i18n['label.flight.form.term']} I">${i18n['label.flight.form.term']} I</option>
                        <option value="${i18n['label.flight.form.term']} J">${i18n['label.flight.form.term']} J</option>
                        <option value="${i18n['label.flight.form.term']} K">${i18n['label.flight.form.term']} K</option>
                        <option value="${i18n['label.flight.form.term']} L">${i18n['label.flight.form.term']} L</option>
                        <option value="${i18n['label.flight.form.term']} M">${i18n['label.flight.form.term']} M</option>
                        <option value="${i18n['label.flight.form.term']} N">${i18n['label.flight.form.term']} N</option>
                        <option value="${i18n['label.flight.form.term']} O">${i18n['label.flight.form.term']} O</option>
                        <option value="${i18n['label.flight.form.term']} P">${i18n['label.flight.form.term']} P</option>
                        <option value="${i18n['label.flight.form.term']} Q">${i18n['label.flight.form.term']} Q</option>
                        <option value="${i18n['label.flight.form.term']} R">${i18n['label.flight.form.term']} R</option>
                        <option value="${i18n['label.flight.form.term']} S">${i18n['label.flight.form.term']} S</option>
                        <option value="${i18n['label.flight.form.term']} T">${i18n['label.flight.form.term']} T</option>
                        <option value="${i18n['label.flight.form.term']} U">${i18n['label.flight.form.term']} U</option>
                        <option value="${i18n['label.flight.form.term']} V">${i18n['label.flight.form.term']} V</option>
                        <option value="${i18n['label.flight.form.term']} W">${i18n['label.flight.form.term']} W</option>
                        <option value="${i18n['label.flight.form.term']} X">${i18n['label.flight.form.term']} X</option>
                        <option value="${i18n['label.flight.form.term']} Y">${i18n['label.flight.form.term']} Y</option>
                        <option value="${i18n['label.flight.form.term']} Z">${i18n['label.flight.form.term']} Z</option>
                    </select>
                </td>
                <td><textarea rows="1" cols="26" id="flightComment" style="margin-left: 30px;"></textarea></td>
                <td></td>
            </tr>
        </table>
            <%--==============================================- BACK FLIGHT -==============================================--%>
        <div class="cBlock" style="height: 60px;"></div>
        <table id="backFlightFrom">
            <tr>
                <th rowspan="4" style="width: 60px; vertical-align: middle; padding-top: 10px;">
                    <div class="cFlightFrom"></div>
                </th>
                <td><label>${i18n['label.flight.form.from']}:</label></td>
                <td><label>${i18n['label.flight.form.departureDate']}:</label></td>
                <td>
                    <label>${i18n['label.flight.form.seat']}:</label>
                </td>
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
                <td>
                    <input type="text" id="backSeatFrom" maxlength="3"/>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><label>${i18n['label.flight.form.flight_number']}</label></td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <select class=" jSelect" id="backTermFrom" style="float:left;">
                        <option value="${i18n['label.flight.form.term']} A">${i18n['label.flight.form.term']} A</option>
                        <option value="${i18n['label.flight.form.term']} B">${i18n['label.flight.form.term']} B</option>
                        <option value="${i18n['label.flight.form.term']} C">${i18n['label.flight.form.term']} C</option>
                        <option value="${i18n['label.flight.form.term']} D">${i18n['label.flight.form.term']} D</option>
                        <option value="${i18n['label.flight.form.term']} E">${i18n['label.flight.form.term']} E</option>
                        <option value="${i18n['label.flight.form.term']} F">${i18n['label.flight.form.term']} F</option>
                        <option value="${i18n['label.flight.form.term']} G">${i18n['label.flight.form.term']} G</option>
                        <option value="${i18n['label.flight.form.term']} H">${i18n['label.flight.form.term']} H</option>
                        <option value="${i18n['label.flight.form.term']} I">${i18n['label.flight.form.term']} I</option>
                        <option value="${i18n['label.flight.form.term']} J">${i18n['label.flight.form.term']} J</option>
                        <option value="${i18n['label.flight.form.term']} K">${i18n['label.flight.form.term']} K</option>
                        <option value="${i18n['label.flight.form.term']} L">${i18n['label.flight.form.term']} L</option>
                        <option value="${i18n['label.flight.form.term']} M">${i18n['label.flight.form.term']} M</option>
                        <option value="${i18n['label.flight.form.term']} N">${i18n['label.flight.form.term']} N</option>
                        <option value="${i18n['label.flight.form.term']} O">${i18n['label.flight.form.term']} O</option>
                        <option value="${i18n['label.flight.form.term']} P">${i18n['label.flight.form.term']} P</option>
                        <option value="${i18n['label.flight.form.term']} Q">${i18n['label.flight.form.term']} Q</option>
                        <option value="${i18n['label.flight.form.term']} R">${i18n['label.flight.form.term']} R</option>
                        <option value="${i18n['label.flight.form.term']} S">${i18n['label.flight.form.term']} S</option>
                        <option value="${i18n['label.flight.form.term']} T">${i18n['label.flight.form.term']} T</option>
                        <option value="${i18n['label.flight.form.term']} U">${i18n['label.flight.form.term']} U</option>
                        <option value="${i18n['label.flight.form.term']} V">${i18n['label.flight.form.term']} V</option>
                        <option value="${i18n['label.flight.form.term']} W">${i18n['label.flight.form.term']} W</option>
                        <option value="${i18n['label.flight.form.term']} X">${i18n['label.flight.form.term']} X</option>
                        <option value="${i18n['label.flight.form.term']} Y">${i18n['label.flight.form.term']} Y</option>
                        <option value="${i18n['label.flight.form.term']} Z">${i18n['label.flight.form.term']} Z</option>
                    </select>
                </td>
                <td><input style="margin-left: 28px;" type="text" id="backFlightNumber"/></td>
                <td></td>
            </tr>
        </table>
        <div class="cBlock"></div>

        <table id="jFlightTo">
            <tr>
                <th rowspan="4" style="width: 60px; vertical-align: middle; padding-top: 10px;">
                    <div class="cFlightTo"></div>
                </th>
                <td><label>${i18n['label.flight.form.to']}:</label></td>
                <td><label>${i18n['label.flight.form.arriveDate']}:</label></td>
                <td>
                    <label>${i18n['label.flight.form.seat']}:</label>

                </td>
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
                    <input type="text" id="backSeatTo"/>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><label>${i18n['label.flight.form.comment']}:</label></td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <select class=" jSelect" id="backTermTo" style="float:left;">
                        <option value="${i18n['label.flight.form.term']} A">${i18n['label.flight.form.term']} A</option>
                        <option value="${i18n['label.flight.form.term']} B">${i18n['label.flight.form.term']} B</option>
                        <option value="${i18n['label.flight.form.term']} C">${i18n['label.flight.form.term']} C</option>
                        <option value="${i18n['label.flight.form.term']} D">${i18n['label.flight.form.term']} D</option>
                        <option value="${i18n['label.flight.form.term']} E">${i18n['label.flight.form.term']} E</option>
                        <option value="${i18n['label.flight.form.term']} F">${i18n['label.flight.form.term']} F</option>
                        <option value="${i18n['label.flight.form.term']} G">${i18n['label.flight.form.term']} G</option>
                        <option value="${i18n['label.flight.form.term']} H">${i18n['label.flight.form.term']} H</option>
                        <option value="${i18n['label.flight.form.term']} I">${i18n['label.flight.form.term']} I</option>
                        <option value="${i18n['label.flight.form.term']} J">${i18n['label.flight.form.term']} J</option>
                        <option value="${i18n['label.flight.form.term']} K">${i18n['label.flight.form.term']} K</option>
                        <option value="${i18n['label.flight.form.term']} L">${i18n['label.flight.form.term']} L</option>
                        <option value="${i18n['label.flight.form.term']} M">${i18n['label.flight.form.term']} M</option>
                        <option value="${i18n['label.flight.form.term']} N">${i18n['label.flight.form.term']} N</option>
                        <option value="${i18n['label.flight.form.term']} O">${i18n['label.flight.form.term']} O</option>
                        <option value="${i18n['label.flight.form.term']} P">${i18n['label.flight.form.term']} P</option>
                        <option value="${i18n['label.flight.form.term']} Q">${i18n['label.flight.form.term']} Q</option>
                        <option value="${i18n['label.flight.form.term']} R">${i18n['label.flight.form.term']} R</option>
                        <option value="${i18n['label.flight.form.term']} S">${i18n['label.flight.form.term']} S</option>
                        <option value="${i18n['label.flight.form.term']} T">${i18n['label.flight.form.term']} T</option>
                        <option value="${i18n['label.flight.form.term']} U">${i18n['label.flight.form.term']} U</option>
                        <option value="${i18n['label.flight.form.term']} V">${i18n['label.flight.form.term']} V</option>
                        <option value="${i18n['label.flight.form.term']} W">${i18n['label.flight.form.term']} W</option>
                        <option value="${i18n['label.flight.form.term']} X">${i18n['label.flight.form.term']} X</option>
                        <option value="${i18n['label.flight.form.term']} Y">${i18n['label.flight.form.term']} Y</option>
                        <option value="${i18n['label.flight.form.term']} Z">${i18n['label.flight.form.term']} Z</option>
                    </select>
                </td>
                <td><textarea rows="1" cols="26" id="backflightComment" style="margin-left: 30px;"></textarea></td>
                <td></td>
            </tr>
        </table>
        <div class="cBlock"></div>
        <div>
            <label for="termTo">Return:&nbsp;&nbsp;&nbsp;</label>
            <input type="checkbox" checked="true" value="Return" id="oneWay"/>
            <input id="submitFlight" type="button" value="Create Flight"/>
            <!-- Submit form after click Enter button -->
            <input type="submit" style="display: none;"/>
        </div>
        </div>
        </div>
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

        $('.jCalendar').datepicker({
                    showAnim: 'slideDown',
                    changeMonth: true,
                    changeYear: true,
                    dateFormat: 'yy.mm.dd',
                    yearRange: '2000:2100'
                });

        /*
         if ($('#oneWay').is(':checked')) {
         $('#jFlightTo').css('display', 'inline');
         } else {
         $('#jFlightTo').css('display', 'none');
         }

         $('#oneWay').click(function() {
         if ($(this).is(':checked')) {
         $('#jFlightTo').show(300);
         } else {
         $('#jFlightTo').hide(300);
         }

         });
         */

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
                        $('#fromCityHidden').val(data.item.id);
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

    function isValid_InputData(){

       var isBackFlight = $('#oneWay').is(':checked');

       if (isBackFlight){

       }

       return true;
    }

    function createFlight(){

       if (isValid_InputData()) {

          var directFlight = {
              departureDate:$('#departureDate').val(),
              arriveDate:$('#arriveDate').val(),
              fromAirport:$('#fromCityHidden').val(),
              toAirport:$('#toCityHidden').val(),
              flightCompanyFrom:'',
              flightCompanyTo:'',
              seatTo:$('#seatTo').val(),
              seatFrom:$('#seatFrom').val(),
              terminalFrom:$('#termFrom').val(),
              terminalTo:$('#termTo').val(),
              twoWays:$('#oneWay').is(':checked')
          };

          if ($('#oneWay').is(':checked')){
             var backFlight = {
                departureDate:$('#backDepartureDate').val(),
                arriveDate:$('#backArriveDate').val(),
                fromAirport:$('#backFromCityHidden').val(),
                toAirport:$('#backToCityHidden').val(),
                flightCompanyFrom:'',
                flightCompanyTo:'',
                seatTo:$('#backSeatTo').val(),
                seatFrom:$('#backSeatFrom').val(),
                terminalFrom:$('#backTermFrom').val(),
                terminalTo:$('#backTermTo').val()
             };

             directFlight.backFlight = backFlight;
          }

          $.ajax({
                      type: 'post',
                      url: "/rest/flights",
                      contentType: "application/json; charset=utf-8",
                      data : JSON.stringify(directFlight),
                      success:function(event) {
                          $('#fromCityHidden').val('');
                          $('#toCityHidden').val('');
                          $('#departureDate').val('');
                          $('#arriveDate').val('');
                          loadFlights();
                      }
          });

       }


    }

    function loadFlights() {
        $.ajax({
                    type: 'get',
                    url: "/rest/flights",
                    contentType: "application/json; charset=utf-8",
                    success:function(event) {
                        if (event.success == 'true' && !isEmpty(event.data)) {
                            var container = [];
                            if (event.data instanceof Array) {
                                $.each(event.data, function(key, value) {
                                    container.push('<div class="flight-div ">'
                                            + ' From <b>' + value.fromAirport + '</b> '
                                            + ' To <b>' + value.toAirport + '</b> '
                                            + ' Date <b>' + value.arriveDate + ' - '
                                            + value.departureDate + '</b> '
                                            + '</div>');
                                });
                            } else {
                                container.push('<div class="flight-div ">'
                                        + ' From <b>' + event.data.fromAirport + '</b> '
                                        + ' To <b>' + event.data.toAirport + '</b> '
                                        + ' Date <b>' + event.data.arriveDate + ' - '
                                        + event.data.departureDate + '</b> '
                                        + '</div>')
                            }
                            var test = container.join(' ');
                            $('#currentFlights').html(container.join(' '));
                            return;
                        }
                    }
                });

    }
</script>