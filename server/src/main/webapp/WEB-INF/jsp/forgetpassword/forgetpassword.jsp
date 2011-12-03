<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
    <jsp:attribute name="center">
                <div>
                    <form action="${appBaseUrl}/html/forgetpassword/reset" method="POST"
                          style="width: 240px; height: 240px;">
                <span>
                    <label>
                        <input type="text" name="email"></label>
                </span>
                <span>
                    <label>
                        <input type="submit">
                    </label>
                </span>
                    </form>
                </div>
    </jsp:attribute>
</tags:main>