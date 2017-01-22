<%@ page import="me.maartendev.UserBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="navigation.jsp"/>

<main>
    <section class="container container--fluid">
        <h1>Uw heeft de volgende boekingen gemaakt</h1>

        <ul>
            <%
                UserBean user = (UserBean) session.getAttribute("user");

                for (Object donation : user.getDonations()) {
                    out.print("<li>" + donation+ "</li>");
                }
            %>
        </ul>
    </section>
</main>
</body>
</html>
