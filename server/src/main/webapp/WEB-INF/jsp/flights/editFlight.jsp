<div class="cFlight" style="background-color: #B8D8ED; height: 230px; width: 750px;">
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
            <input type="text" id="seatTo" maxlength="3"/>
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
    <input id="flightId" type="hidden"/>
    <label for="termTo">Return:&nbsp;&nbsp;&nbsp;</label>
    <input type="checkbox" checked="true" value="Return" id="oneWay"/>
    <input id="submitFlight" type="button" value="Update Flight"/>
    <!-- Submit form after click Enter button -->
    <input type="submit" style="display: none;"/>
</div>
<script type="text/javascript">

    var flight = {
        departureDate: '${flight.departureDate}',
        arriveDate: '${flight.arriveDate}',
        flightCompanyFrom:'${flight.flightCompanyFrom}',
        flightCompanyTo:'${flight.flightCompanyTo}',
        seatFrom:'${flight.seatFrom}',
        seatTo:'${flight.seatTo}',
        terminalFrom:'${flight.terminalFrom}',
        terminalTo:'${flight.terminalTo}',
        fromAirportName:'${flight.fromAirport}',
        fromAirportId:'${flight.fromAirportId}',
        toAirportName:'${flight.toAirport}',
        toAirportId:'${flight.toAirportId}',
        backFlight:'${flight.backFlight}',
        realId:'${flight.realId}'

    };

    $(document).ready(function() {

        try {
            $('#termFrom').selectmenu({});
            $('#termTo').selectmenu({});

            $('.jCalendar').datepicker({
                        showAnim: 'slideDown',
                        changeMonth: true,
                        changeYear: true,
                        dateFormat: 'yy-mm-dd',
                        yearRange: '2000:2100'
                    });

            $('#departureDate').datepicker('setDate', flight.departureDate);
            $('#arriveDate').datepicker('setDate', flight.arriveDate);
            $('#fromCity').val(flight.fromAirportName);
            $('#fromCityHidden').val(flight.fromAirportId);
            $('#toCity').val(flight.toAirportName);
            $('#toCityHidden').val(flight.toAirportId);
            $('#seatFrom').val(flight.seatFrom);
            $('#seatTo').val(flight.seatTo);
            $('#termFrom').val(flight.terminalFrom).selectmenu();
            $('#termTo').val(flight.terminalFrom).selectmenu();

            $('#oneWay').attr('checked', flight.backFlight);
            $('#flightId').val(flight.realId);

            $('#submitFlight').click(updateFlight);


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


        } catch(e) {
            alert(e);
        }


    });

    function updateFlight() {

        var updatedFlight = {
            departureDate: $('#departureDate').val(),
            arriveDate: $('#arriveDate').val(),
            fromAirportId: $('#fromCityHidden').val(),
            toAirportId: $('#toCityHidden').val(),
            seatFrom: $('#seatFrom').val(),
            seatTo: $('#seatTo').val(),
            terminalFrom: $('#termFrom').val(),
            terminalTo: $('#termTo').val(),
            backFlight: $('#oneWay').is(':checked'),
            realId: $('#flightId').val()
        };

        $.ajax({
                    type: 'put',
                    url: "/rest/flights/update/" + updatedFlight.realId,
                    contentType: "application/json; charset=utf-8",
                    data : JSON.stringify(updatedFlight),
                    success:function(event) {
                        loadFlights();
                    }
                });
    }
</script>
</div>
