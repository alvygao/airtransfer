<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
<jsp:attribute name="center">
        <jsp:include page="/WEB-INF/jsp/includes/topmenu.jsp"/>
        <div class="cPage">

        <div class="home" id="searchcontrols"
             style="margin: auto; width: 670px; height: 200px; background: url('${appBaseUrl}/images/flightspanel/panel.png') left top  no-repeat">
        <div style="width: 650px; height: 300px; padding: 20px;">

        <div class="ui-widget" style="float: left; width: 350px;">
            <label for="fromCity">From:</label>
            <input id="fromCity"/>
            <input id="fromCityHidden" type="hidden"/>
        </div>

        <div class="ui-widget" style="float: left;">
            <label for="toCity">To:</label>
            <input id="toCity"/>
            <input id="toCityHidden" type="hidden"/>
        </div>
        <div style="width: 350px; clear: left; float: left;">
            <label for="departureDate">DepartureDate:</label>
            <input type="text" id="departureDate"/>
                        <span class="cClearBtn cCalendar">
                            <img src="/images/calendar.gif" alt="clear"/>
                        </span>
        </div>
        <div style="width: 300px; float: left;">
            <label for="arriveDate">ArriveDate:</label>
            <input type="text" id="arriveDate"/>
                        <span class="cClearBtn cCalendar">
                            <img src="/images/calendar.gif" alt="clear"/>
                        </span>
        </div>

        <div style="width: 350px; clear: left; float: left;">
            <label for="fltCompanyFrom">Flight.Company(From):</label>
            <input type="text" id="fltCompanyFrom"/>
        </div>
        <div style="width: 300px; float: left;">
            <label for="fltCompanyTo">Flight.Company(To):</label>
            <input type="text" id="fltCompanyTo"/>
        </div>

        <div style="width: 350px; clear: left; float: left;">
            <label for="seatFrom">Seat:</label>
            <input type="text" id="seatFrom"/>
        </div>
        <div style="width: 300px; float:left; ">
            <label for="seatTo">Seat:</label>
            <input type="text" id="seatTo"/>
        </div>

        <div style="width: 350px; clear: left; float: left;">
            <label for="termFrom">Term.:</label>
            <input type="text" id="termFrom"/>
        </div>
        <div style="width: 300px; float:left; ">
            <label for="termTo">Term.:</label>
            <input type="text" id="termTo"/>
        </div>

        <div style="width: 200px; clear: left; float: left;">
            <label for="termTo">Return:</label>
            <input type="checkbox" checked="true" value="Return" id="oneWay"/>
            <input id="submitFlight" type="button" value="Create Flight"/>
        </div>

        <script type="text/javascript">
            $(document).ready(function() {
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

                loadFlights();

            });
        </script>

        </div>
        </div>
        <div style="width: 500px; height: 300px; margin: auto;" id="currentFlights">


        </div>
        <div style="width: 500px; height: 200px;">
            <a href="/html/flights/create">Create Flight</a>
            <a href="/html/flights/current">Current Flight</a>
            <a href="/html/flights/future">Future Flight</a>
            <a href="/html/flights/removed">Removed Flight</a>
        </div>
        </div>
    </jsp:attribute>
</tags:main>