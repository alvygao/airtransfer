<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
<jsp:attribute name="center">
        <jsp:include page="/WEB-INF/jsp/includes/topmenu.jsp"/>
        <div class="cPage">
            <div class="cBlock"></div>
            <h1>${i18n['label.flight.currentFlight']}</h1>
            <div class="cFlight" id="currentFlights">
                <table class="cList">
                    
                </table>
            </div>
            </div>
            
            <div style="display: none" id="jFlight">
            <table>
                <tr>
                    <th></th>
                    <td>
                        <div class="cBlockF cDate jDateFrom"></div>
                    </td>
                    <th></th>
                    <td>
                        <div class="cBlockF cDate jDateTo"></div>
                    </td>
                </tr>
                <tr>
                    <th>
                        <div class="cFlightFromMin"></div>
                    </th>
                    <td>
                        <div class="cBlockF cCountry jCountryFrom"></div>
                    </td>
                    <th>
                        <div class="cFlightToMin"></div>
                    </th>
                    <td>
                        <div class="cBlockF cCountry jCountryTo"></div>
                    </td>
                </tr>
                <tr>
                    <th></th>
                    <td>
                        <div class="cBlockF jFlightCompanyFrom"></div>
                        <div class="cBlockF jTerminalFrom"></div>
                    </td>
                    <th></th>
                    <td>
                        <div class="cBlockF jFlightCompanyTo"></div>
                        <div class="cBlockF jTerminalTo"></div>
                    </td>
                </tr>
                <tr>
                    <th></th>
                    <td>
                        <div class="cBlockF jSeatFrom"></div>
                    </td>
                    <th></th>
                    <td>
                        <div class="cBlockF jSeatTo"></div>
                    </td>
                </tr>
                <tr>
                    <th></th>
                    <td></td>
                    <th></th>
                    <td>
                        <a href="/html/flights/edit" class="cEdit jEditFlight"></a>
                        <a href="javascript:void(0)" class="cGPlus"></a>

                        <a href="javascript:void(0)" class="cTwitter"></a>
                        <a href="javascript:void(0)" class="cFacebook"></a>
                        <a href="javascript:void(0)" class="cVK"></a>

                    </td>
                </tr>
                </table>
            </div>
            <script type="text/javascript">
                $(document).ready(function(){
                    $('.jEditFlight').click(function(){
                        var url = this.href, title = this.title;
                        var dialog = $('<div class="cDialog" style="display:none"></div>').appendTo('body');
                        // load remote content
                        dialog.load(
                            url,
                            function (responseText, textStatus, XMLHttpRequest) {
                                dialog.dialog({
                                    resizable: false,
                                    title: title,
                                    width: 400,
                                    modal: true,
                                    close: function(event, ui) {
                                        dialog.remove();
                                    }
                                });
                            }
                        );
                        return false;
                    });
                });
                function loadFlights() {
                    $.ajax({
                                type: 'get',
                                url: "/rest/flights/current",
                                contentType: "application/json; charset=utf-8",
                                error: function(event) {
                                    alert(event);
                                },
                                success:function(event) {
                                    if (event.success == 'true' && !isEmpty(event.data)) {
                                        var container = [];
                                        if (event.data instanceof Array) {
                                            $.each(event.data, function(key, value) {
                                                $('#jFlight table .jDateFrom').html(value.arriveDate);
                                                $('#jFlight table .jDateTo').html(value.departureDate);
                                                
                                                $('#jFlight table .jCountryFrom').html(value.fromAirport);
                                                $('#jFlight table .jCountryTo').html(value.toAirport);
                                                
                                                $('#jFlight table .jFlightCompanyFrom').html(value.flightCompanyFrom);
                                                $('#jFlight table .jTerminalFrom').html(value.terminalFrom);
                                                $('#jFlight table .jFlightCompanyTo').html(value.flightCompanyTo);
                                                $('#jFlight table .jTerminalTo').html(value.terminalTo);
                                                
                                                $('#jFlight table .jSeatFrom').html(value.seatFrom);
                                                $('#jFlight table .jSeatTo').html(value.seatTo);
                                                
                                                var content = $('#jFlight table').html();
                                                $('.cList').append(content);
                                                
                                                /*container.push('<div class="flight-div ">'
                                                        + ' From <b>' + value.fromAirport + '</b> '
                                                        + ' To <b>' + value.toAirport + '</b> '
                                                        + ' Date <b>' + value.arriveDate + ' - '
                                                        + value.departureDate + '</b> '
                                                        + '</div>');
                                                        */
                                            });
                                        } else {
                                            
                                            $('#jFlight table .jDateFrom').html(event.data.arriveDate);
                                            $('#jFlight table .jDateTo').html(event.data.departureDate);

                                            $('#jFlight table .jCountryFrom').html(event.data.fromAirport);
                                            $('#jFlight table .jCountryFrom').html(event.data.toAirport);

                                            $('#jFlight table .jFlightCompanyFrom').html(event.data.flightCompanyFrom);
                                            $('#jFlight table .jTerminalFrom').html(event.data.terminalFrom);
                                            $('#jFlight table .jFlightCompanyTo').html(event.data.flightCompanyTo);
                                            $('#jFlight table .jTerminalTo').html(event.data.terminalTo);

                                            $('#jFlight table .jSeatFrom').html(event.data.seatFrom);
                                            $('#jFlight table .jSeatTo').html(event.data.seatTo);

                                            var content = $('#jFlight table');
                                            $('.cList').append(content);
                                            
                                            /*container.push('<div class="flight-div ">'
                                                    + ' From <b>' + event.data.fromAirport + '</b> '
                                                    + ' To <b>' + event.data.toAirport + '</b> '
                                                    + ' Date <b>' + event.data.arriveDate + ' - '
                                                    + event.data.departureDate + '</b> '
                                                    + '</div>')
                                                    */
                                        }
                                        //var test = container.join(' ');
                                        //$('#currentFlights').html(container.join(' '));
                                        return;
                                    }
                                }
                            });
                }
                loadFlights();
            </script>
        
    </jsp:attribute>
</tags:main>