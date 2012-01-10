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
                        <input id="fromCity"/>
                        <input id="fromCityHidden"/>
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
                                                                    response([
                                                                        {
                                                                            id :  data.data.id ,
                                                                            label: data.data.label,
                                                                            value: data.data.label
                                                                        }
                                                                    ]);
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
                            });
                        </script>
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

                </div>
            </div>
        </div>
    </jsp:attribute>
</tags:main>