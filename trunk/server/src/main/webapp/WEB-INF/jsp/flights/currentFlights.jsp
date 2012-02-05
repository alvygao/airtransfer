<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
<jsp:attribute name="center">
        <jsp:include page="/WEB-INF/jsp/includes/topmenu.jsp"/>
        <div class="cPage">
            <div class="cBlock"></div>
            <h1>${i18n['label.flight.pastFlights']}</h1>

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
                            <a href="/html/flights/edit/1" class="cEdit jEditFlight"></a>
                            <a href="javascript:void(0)" class="cGPlus"></a>

                            <a href="javascript:void(0)" class="cTwitter"></a>
                            <a href="javascript:void(0)" class="cFacebook"></a>
                            <a href="javascript:void(0)" class="cVK"></a>

                        </td>
                    </tr>
                </table>
            </div>
            <script type="text/javascript">

                function editFlight(cmp) {
                    var test = cmp;
                    try {
                        var url = cmp.href;
                        var dialog = $('<div class="cDialog" style="display:none; "></div>').appendTo('body');

                        dialog.load(
                                url,
                                function (responseText, textStatus, XMLHttpRequest) {
                                    dialog.dialog({
                                                resizable: false,
                                                title: "Edit flight",
                                                width: 790,
                                                height: 275,
                                                modal: true,
                                                close: function(event, ui) {
                                                    dialog.remove();
                                                }
                                            });
                                }
                        );

                    } catch(e) {
                        alert(e);
                    }
                    return false;
                }
                $(document).ready(function() {

                    function processEdit(cmp) {
                        try {
                            alert('aaaaaaaa');
                            dialog.dialog({
                                        resizable: false,
                                        title: title,
                                        width: 400,
                                        modal: true,
                                        close: function(event, ui) {
                                            dialog.remove();
                                        }
                                    });
                        } catch(e) {
                            alert(e.toString());
                        }
                        return false;
                    }

                });
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
                                                $('#jFlight table .jDateFrom').html(value.departureDate);
                                                $('#jFlight table .jDateTo').html(value.arriveDate);

                                                $('#jFlight table .jCountryFrom').html(value.fromAirport);
                                                $('#jFlight table .jCountryTo').html(value.toAirport);

                                                $('#jFlight table .jFlightCompanyFrom').html(value.flightCompanyFrom);
                                                $('#jFlight table .jTerminalFrom').html(value.terminalFrom);
                                                $('#jFlight table .jFlightCompanyTo').html(value.flightCompanyTo);
                                                $('#jFlight table .jTerminalTo').html(value.terminalTo);

                                                $('#jFlight table .jSeatFrom').html(value.seatFrom);
                                                $('#jFlight table .jSeatTo').html(value.seatTo);

                                                $('#jFlight table .jEditFlight')
                                                        .attr('href', '/html/flights/edit/' + value.realId)
                                                        .attr('onClick', 'return editFlight(this);');

                                                var content = $('#jFlight table').html();
                                                $('.cList').html('');
                                                $('.cList').append(content);

                                            });
                                        } else {

                                            $('#jFlight table .jDateFrom').html(event.data.departureDate);
                                            $('#jFlight table .jDateTo').html(event.data.arriveDate);

                                            $('#jFlight table .jCountryFrom').html(event.data.fromAirport);
                                            $('#jFlight table .jCountryFrom').html(event.data.toAirport);

                                            $('#jFlight table .jFlightCompanyFrom').html(event.data.flightCompanyFrom);
                                            $('#jFlight table .jTerminalFrom').html(event.data.terminalFrom);
                                            $('#jFlight table .jFlightCompanyTo').html(event.data.flightCompanyTo);
                                            $('#jFlight table .jTerminalTo').html(event.data.terminalTo);

                                            $('#jFlight table .jSeatFrom').html(event.data.seatFrom);
                                            $('#jFlight table .jSeatTo').html(event.data.seatTo);

                                            $('#jFlight table .jEditFlight')
                                                    .attr('href', '/html/flights/edit/' + event.data.realId)
                                                    .attr('onClick', 'return editFlight(this);');


                                            var content = $('#jFlight table');
                                            $('.cList').html('');
                                            $('.cList').append(content);

                                        }
                                        return;
                                    }
                                }
                            });
                }
                loadFlights();
            </script>

    </jsp:attribute>
</tags:main>