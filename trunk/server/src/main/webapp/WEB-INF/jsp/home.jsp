<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>

    <jsp:attribute name="center">
        <div style="width: 300px; height: 250px; margin-left: 300px; margin-top: 400px;">
            <form action="${baseAppUrl}/html/singin">
                <div align="left" style=" ">
                    <label><input type="text"/></label>
                    <input type="button" value="${i18n['label.registration.link_title']}"/>
                </div>
                <div align="left" style=" ">
                    <label><input type="text"/></label>
                </div>
                <div align="left" style=" ">
                    <span><a href="">${i18n['label.registration.link_title']}</a></span>
                    <span><a href="">${i18n['forget_password.link.label']}</a></span>

                </div>

            </form>
        </div>
    </jsp:attribute>

</tags:main>


