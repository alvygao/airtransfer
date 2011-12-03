<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt" %>
<tags:main>
    <jsp:attribute name="center">
        <div>
            <form action="${appBaseUrl}/html/registration" method="POST" style="width: 160px; height: 240px;">
                <span>
                    <label><f:message key="label.registration.form.emailTitle"/>
                        <input type="text" name="email"></label>
                </span>
                <span>
                    <label><f:message key="label.registration.form.password"/>
                        <input type="text" name="password"></label>
                </span>
                <span>
                    <label><f:message key="label.registration.form.password_repeat"/>
                        <input type="text" name="password_repeat">
                    </label>
                </span>
                <span>
                    <label>
                        <f:message key="label.registration.form.submit_btn" var="btn_text"/>
                        <input type="submit" value="${btn_text}">
                    </label>
                </span>
            </form>
        </div>
    </jsp:attribute>
</tags:main>