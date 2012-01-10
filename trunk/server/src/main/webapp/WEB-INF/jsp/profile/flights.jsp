<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
<jsp:attribute name="center">
        <jsp:include page="/WEB-INF/jsp/includes/topmenu.jsp"/>
        <div class="cPage">

            <div class="home" id="searchcontrols"
                 style="margin: auto; width: 670px; height: 200px; background: url('${appBaseUrl}/images/flightspanel/panel.png') left top  no-repeat">
                <div style="width: 600px; height: 40px; padding: 20px;">

                    <div class="ui-widget" style="float: left;">
                        <label for="fromCity">From:</label>
                        <input id="fromCity"/>
                        <input id="fromCityHidden" type="hidden"/>
                    </div>

                    <div class="ui-widget" style="float: left;">
                        <label for="toCity">To:</label>
                        <input id="toCity"/>
                        <input id="toCityHidden" type="hidden"/>
                    </div>
                    <div style="width: 200px; clear: left; float: left;">
                        <label for="departureDate">DepartureDate:</label>
                        <input type="text" id="departureDate"/>
                        <span class="cClearBtn cCalendar">
                            <img src="/images/calendar.gif" alt="clear"/>
                        </span>
                    </div>
                    <div style="width: 200px; float: left;">
                        <label for="arriveDate">ArriveDate:</label>
                        <input type="text" id="arriveDate"/>
                        <span class="cClearBtn cCalendar">
                            <img src="/images/calendar.gif" alt="clear"/>
                        </span>
                    </div>
                    <div style="width: 200px;">
                        <input id="submitFlight" type="button" value="Create Flight"/>
                    </div>
                        <%--            <div style="width: 200px;">
                            <input id="lastFlights" type="button" value="Last flights"/>
                        </div>--%>

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
                                    toAirport:$('#toCityHidden').val()
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

                            /*    $('#lastFlights').click(function() {
                             loadFlights();
                             });
                             */
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
            <div style="width: 500px; height: 600px; margin: auto;" id="currentFlights">


            </div>
        </div>
    </jsp:attribute>
</tags:main>