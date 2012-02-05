<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
<jsp:attribute name="center">
        <jsp:include page="/WEB-INF/jsp/includes/topmenu.jsp"/>
        <div class="cPage">
            <div class="cBlock"></div>
            <h1>${i18n['label.flight.addFlight']}</h1>


            <div class="cFlight">
                <table>
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
                        <td><label>${i18n['label.flight.form.term']}:</label></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <select class=" jSelect" id="termFrom" style="float:left;">
                                <option value="A">A</option>
                                <option value="B">B</option>
                                <option value="C">C</option>
                                <option value="D">D</option>
                                <option value="E">E</option>
                                <option value="F">F</option>
                                <option value="G">G</option>
                                <option value="H">H</option>
                                <option value="I">I</option>
                                <option value="J">J</option>
                                <option value="K">K</option>
                                <option value="L">L</option>
                                <option value="M">M</option>
                                <option value="N">N</option>
                                <option value="O">O</option>
                                <option value="P">P</option>
                                <option value="Q">Q</option>
                                <option value="R">R</option>
                                <option value="S">S</option>
                                <option value="T">T</option>
                                <option value="U">U</option>
                                <option value="V">V</option>
                                <option value="W">W</option>
                                <option value="X">X</option>
                                <option value="Y">Y</option>
                                <option value="Z">Z</option>
                            </select>
                        </td>
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
                        <td><label>${i18n['label.flight.form.term']}:</label></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            <select class=" jSelect" id="termTo" style="float:left;">
                                <option value="A">A</option>
                                <option value="B">B</option>
                                <option value="C">C</option>
                                <option value="D">D</option>
                                <option value="E">E</option>
                                <option value="F">F</option>
                                <option value="G">G</option>
                                <option value="H">H</option>
                                <option value="I">I</option>
                                <option value="J">J</option>
                                <option value="K">K</option>
                                <option value="L">L</option>
                                <option value="M">M</option>
                                <option value="N">N</option>
                                <option value="O">O</option>
                                <option value="P">P</option>
                                <option value="Q">Q</option>
                                <option value="R">R</option>
                                <option value="S">S</option>
                                <option value="T">T</option>
                                <option value="U">U</option>
                                <option value="V">V</option>
                                <option value="W">W</option>
                                <option value="X">X</option>
                                <option value="Y">Y</option>
                                <option value="Z">Z</option>
                            </select>
                        </td>
                        <td></td>
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
    $(document).ready(function() {

        $('#termFrom').selectmenu({});
        $('#termTo').selectmenu({});

        $('.jCalendar').datepicker({
                    showAnim: 'slideDown',
                    changeMonth: true,
                    changeYear: true,
                    dateFormat: 'yy.mm.dd',
                    yearRange: '2000:2100'
                });

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

        $('#fromCity').autocomplete({
                    source: function(request, response) {
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
                        $.ajax({
                                    url: "/rest/search/findairports?term=" + request.term,
                                    success: function(data) {
                                        if (data.data instanceof Array) {
                                            response(data.data);
                                        } else {
                                            if (!isEmpty(data.data) && data.data.id != undefined && data.data.id != null) {
                                                response([
                                                    {
                                                        id :  data.data.id,
                                                        label: data.data.label ,
                                                        value : data.data.label
                                                    }
                                                ]);
                                            } else {
                                                response([]);
                                            }
                                        }
                                        return;
                                    }
                                });
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

        $('#submitFlight').click(function() {
            if (isEmpty($('#fromCityHidden').val())
                    || isEmpty($('#departureDate').val())
                    ) {
                alert("You have to specify all values!");
                return;
            }
            var flight = {
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
            $.ajax({
                        type: 'post',
                        url: "/rest/flights",
                        contentType: "application/json; charset=utf-8",
                        data : JSON.stringify(flight),
                        success:function(event) {
                            $('#fromCityHidden').val('');
                            $('#toCityHidden').val('');
                            $('#departureDate').val('');
                            $('#arriveDate').val('');
                            loadFlights();
                        }
                    });

        });
    });

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