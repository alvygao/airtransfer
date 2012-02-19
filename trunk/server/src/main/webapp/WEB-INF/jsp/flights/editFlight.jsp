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
        <td><label>${i18n['label.flight.form.flight_number']}:</label></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
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
            <label>&nbsp;</label>
        </td>
    </tr>
    <tr>
        <td><label>${i18n['label.flight.form.term']}:</label></td>
        <td></td>
        <td><label>&nbsp;</label></td>
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
        <td><textarea rows="1" cols="20" id="flightComment" style="margin-left: 30px;"></textarea></td>
        <td></td>
    </tr>
</table>
<div class="cBlock"></div>
<div>
    <input id="flightId" type="hidden"/>
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
        terminalFrom:'${flight.terminalFrom}',
        terminalTo:'${flight.terminalTo}',
        fromAirportName:'${flight.fromAirport}',
        fromAirportId:'${flight.fromAirportId}',
        toAirportName:'${flight.toAirport}',
        toAirportId:'${flight.toAirportId}',
        backFlight:'${flight.backFlight}',
        flightNumber:'${flight.flightNumber}',
        comment:'${flight.comment}',
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
            $('#termTo').val(flight.terminalTo).selectmenu();
            $('#flightComment').val(flight.comment);
            $('#flightNumber').val(flight.flightNumber);

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
            realId: $('#flightId').val(),
            flightNumber: $('#flightNumber').val(),
            comment: $('#flightComment').val()
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

        dialog.close();
    }
</script>
</div>
