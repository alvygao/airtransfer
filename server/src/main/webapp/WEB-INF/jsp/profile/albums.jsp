<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
<jsp:attribute name="center">
        <jsp:include page="/WEB-INF/jsp/includes/topmenu.jsp"/>
        <div class="cPage">
            <div class="cBlock"></div>
            <h1>Albums</h1>

            <div class="cFlight">
                <h1>Create album:</h1>
                <input type="text">
                <input type="button" value="create">
            </div>
            <div class="cFlight">
                <h1>Upload single photo</h1>
                <label for="albums">
                    Album name:
                    <select id="albums">
                    </select>
                </label>
                <input type="button" value="select">
            </div>
            <div class="cFlight">
                <h1>Upload multiple files</h1>
                <label for="albums">
                    Album name:
                    <select id="albums">
                    </select>
                </label>
                <input type="button" value="select">
            </div>
            <div class="cFlight">
                <h1>Available albums:</h1>
            </div>
        </div>
    </jsp:attribute>
</tags:main>