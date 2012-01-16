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
                        <th rowspan="4" style="width: 60px; vertical-align: middle; padding-top: 10px;"><div class="cFlightFrom"></div></th>
                        <td><label for="fromCity">${i18n['label.flight.form.from']}:</label></td>
                        <td><label for="fromCity">${i18n['label.flight.form.departureDate']}:</label></td>
                        <td><label for="fromCity">${i18n['label.flight.form.companyFrom']}:</label></td>
                    </tr>
                    <tr>
                        <td>
                            <input id="fromCity" type="text" name="fromCity" />
                            <input id="fromCityHidden" type="hidden"/>
                        </td>
                        <td>
                            <input name="departureDate" type="text" id="departureDate" class="jCalendar" />
                            <span class="cClearBtn cCalendar">
                                <img alt="clear" src="/images/calendar.gif" />
                            </span>
                        </td>
                        <td><input type="text" id="fltCompanyFrom" /></td>
                    </tr>
                    <tr>
                        <td><label for="fromCity">${i18n['label.flight.form.seat']}:</label></td>
                        <td><label for="fromCity">${i18n['label.flight.form.term']}:</label></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><input type="text" id="seatFrom" /></td>
                        <td><input type="text" id="termFrom"/></td>
                        <td></td>
                    </tr>
                </table>
                <div class="cBlock"></div>
                <table>
                    <tr>
                        <th rowspan="4" style="width: 60px; vertical-align: middle; padding-top: 10px;"><div class="cFlightTo"></div></th>
                        <td><label for="fromCity">${i18n['label.flight.form.to']}:</label></td>
                        <td><label for="fromCity">${i18n['label.flight.form.arriveDate']}:</label></td>
                        <td><label for="fromCity">${i18n['label.flight.form.companyTo']}:</label></td>
                    </tr>
                    <tr>
                        <td>
                            <input id="toCity" type="text" name="toCity" />
                            <input id="toCityHidden" type="hidden"/>
                        </td>
                        <td>
                            <input name="arriveDate" type="text" id="arriveDate" class="jCalendar" />
                            <span class="cClearBtn cCalendar">
                                <img alt="clear" src="/images/calendar.gif" />
                            </span>
                        </td>
                        <td><input type="text" id="fltCompanyTo" /></td>
                    </tr>
                    <tr>
                        <td><label for="fromCity">${i18n['label.flight.form.seat']}:</label></td>
                        <td><label for="fromCity">${i18n['label.flight.form.term']}:</label></td>
                    </tr>
                    <tr>
                        <td><input type="text" id="seatTo"/></td>
                        <td><input type="text" id="termTo"/></td>
                    </tr>
                </table>
                <div class="cBlock"></div>
                <div>
                    <label for="termTo">Return:&nbsp;&nbsp;&nbsp;</label>
                    <input type="checkbox" checked="true" value="Return" id="oneWay"/>
                    <input id="submitFlight" type="button" value="Create Flight"/>
                    <!-- Submit form after click Enter button -->
                    <input type="submit" style="display: none;" />
                </div>
            </div>
        </div>
    </jsp:attribute>
</tags:main>
<script type="text/javascript">
$(document).ready(function() {
    $('.jCalendar').datepicker({
        yearRange: '1930:2000',
        showAnim: 'slideDown',
        changeMonth: true,
        changeYear: true,
        dateFormat: 'dd.mm.yy'
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
//                                                                value: data.data.value,
                                    country: data.data.country
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
        zIndex: 9999,
        deferRequestBy: 0, //miliseconds
        noCache: false, //default is false, set to true to disable caching
        // callback function:
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
                                            label: data.data.label,
                                            value: data.data.label
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
        zIndex: 9999,
        deferRequestBy: 0, //miliseconds
        noCache: false, //default is false, set to true to disable caching
        // callback function:
        select: function(value, data) {
            $('#toCityHidden').val(data.item.id);
            return;
        }
    });

    $('#submitFlight').click(function() {
        if (isEmpty($('#fromCityHidden').val())
                || isEmpty($('#toCityHidden').val())
                || isEmpty($('#departureDate').val())
                || isEmpty($('#arriveDate').val())
                ) {
            alert("You have to specify all values!");
            return;
        }
        var flight = {
            departureDate:$('#departureDate').val(),
            arriveDate:$('#arriveDate').val(),
            fromAirport:$('#fromCityHidden').val(),
            toAirport:$('#toCityHidden').val(),
            flightCompanyFrom:$('#fltCompanyFrom').val(),
            flightCompanyTo:$('#fltCompanyTo').val(),
            seatTo:$('#seatTo').val(),
            seatFrom:$('#seatFrom').val(),
            terminalFrom:$('#termFrom').val(),
            terminalTo:$('#termTo').val(),
            oneWay:$('#oneWay:checked').val() == 'true' ? true : false
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
</script>