<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
<jsp:attribute name="center">
        <jsp:include page="/WEB-INF/jsp/includes/topmenu.jsp"/>
        <div class="cPage">
            Removed Flights
            <script type="text/javascript">
                function loadFlights() {
                    $.ajax({
                                type: 'get',
                                url: "/rest/flights/removed",
                                contentType: "application/json; charset=utf-8",
                                error: function(event) {
                                    alert(event);
                                },
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
            </script>
            <div style="width: 500px; height: 300px; margin: auto;" id="currentFlights">

            </div>
        </div>
    </jsp:attribute>
</tags:main>