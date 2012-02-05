<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
<jsp:attribute name="center">
        <jsp:include page="/WEB-INF/jsp/includes/topmenu.jsp"/>
        <div class="cPage">
            <div class="cBlock"></div>
            <h1>${i18n['label.flight.myFlight']}</h1>

            <div class="cFlight">
                <div class="cFlightActions">
                    <a href="/html/flights/create" title="${i18n['label.flight.link.add']}">
                        <div class="cFlightActionAdd">
                            <div class="cFlightActionsTitle">${i18n['label.flight.link.add']}</div>
                        </div>
                    </a>
                    <a href="/html/flights/current" title="${i18n['label.flight.link.current']}">
                        <div class="cFlightActionCurrent">
                            <div class="cFlightActionsTitle">${i18n['label.flight.link.current']}</div>
                        </div>
                    </a>
                    <a href="/html/flights/future" title="${i18n['label.flight.link.future']}">
                        <div class="cFlightActionFuture">
                            <div class="cFlightActionsTitle">${i18n['label.flight.link.future']}</div>
                        </div>
                    </a>
                    <a href="/html/flights/removed" title="${i18n['label.flight.link.past']}">
                        <div class="cFlightActionPast">
                            <div class="cFlightActionsTitle">${i18n['label.flight.link.past']}</div>
                        </div>
                    </a>
                </div>
            </div>
        </div>

        <script type="text/javascript">
            $(document).ready(function() {
                $('.jCalendar').datepicker({
                            yearRange: '2000:2100',
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
                        twoWays:$('#oneWay:checked').val() == 'true' ? true : false
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
            });
        </script>


    </jsp:attribute>
</tags:main>