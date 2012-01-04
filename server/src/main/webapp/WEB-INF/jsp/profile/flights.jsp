<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
<jsp:attribute name="center">
        <jsp:include page="/WEB-INF/jsp/includes/topmenu.jsp"/>
        <div class="cPage">

            <div class="home" id="searchcontrols"
                 style="margin: auto; width: 670px; height: 450px; background: url('${appBaseUrl}/images/flightspanel/panel.png') left top  no-repeat">
                <div style="width: 600px; height: 40px; padding: 20px;">

                    <div class="ui-widget" style="float: left;">
                        <label for="fromCity">From:</label>
                        <input id="fromCity"/> <input id="fromCityHidden" type="hidden"/>
                    </div>

                    <div class="ui-widget" style="float: left;">
                        <label for="toCity">To:</label>
                        <input id="toCity"/> <input id="toCityHidden" type="hidden"/>
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


                    <script>
                        $(function() {

                            $("#fromCity").autocomplete({
                                        source: function(request, response) {
                                            $.ajax({
                                                        url: '/rest/search/airports?term=' + request.term + '&limit=' + 15,
                                                        dataType: "json",
                                                        contentType: "application/json; charset=utf-8",
                                                        headers: {
                                                            "Content-Type": "application/json",
                                                            "Accept":"application/json"
                                                        },
                                                        success: function(data) {
                                                            try {
                                                                response($.map(data.data, function(item) {
                                                                    return {
                                                                        label: item.name + " (" + item.countryCode + ") " ,
                                                                        value: item.iataCode,
                                                                        iataCode: item.iataCode
                                                                    }
                                                                }));
                                                            } catch(e) {
                                                                alert(e);
                                                            }
                                                        },
                                                        error: function(data) {
                                                            response({});
                                                        }

                                                    });
                                        },
                                        minLength
                                                :
                                                2,
                                        select
                                                :
                                                function(event, ui) {
                                                    $('#fromCity').val(ui.item.label);
                                                    $('#fromCityHidden').val(ui.item.value);
//                                            alert(ui.item.iataCode);
                                                }
                                        ,
                                        open: function() {
                                            $(this).removeClass("ui-corner-all").addClass("ui-corner-top");
                                        }
                                        ,
                                        close: function() {
                                            $(this).removeClass("ui-corner-top").addClass("ui-corner-all");
                                        }
                                    })
                                    ;
                            $("#toCity").autocomplete({
                                        source: function(request, response) {
                                            $.ajax({
                                                        url: '/rest/search/airports?term=' + request.term + '&limit=' + 15,
                                                        dataType: "json",
                                                        contentType: "application/json; charset=utf-8",
                                                        success: function(data) {
                                                            try {
                                                                response($.map(data.data, function(item) {
                                                                    return {
                                                                        label: item.name + " (" + item.countryCode + ") " ,
                                                                        value: item.iataCode,
                                                                        iataCode: item.iataCode
                                                                    }
                                                                }));
                                                            } catch(e) {
                                                                alert(e);
                                                            }
                                                        },
                                                        error: function(data) {
                                                            response({});
                                                        }

                                                    });
                                        },
                                        minLength: 2,
                                        select: function(event, ui) {
                                            $('#fromCity').val(ui.item.label);
                                            $('#fromCityHidden').val(ui.item.value);
//                                            alert(ui.item.iataCode);
                                        },
                                        open: function() {
                                            $(this).removeClass("ui-corner-all").addClass("ui-corner-top");
                                        },
                                        close: function() {
                                            $(this).removeClass("ui-corner-top").addClass("ui-corner-all");
                                        }
                                    });
                        })
                                ;
                    </script>


                </div>
            </div>
        </div>
    </jsp:attribute>
</tags:main>