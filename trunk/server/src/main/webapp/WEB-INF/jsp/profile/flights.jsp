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

    </jsp:attribute>
</tags:main>