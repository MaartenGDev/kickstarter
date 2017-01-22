<%@ page import="me.maartendev.UserBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="navigation.jsp"/>
<%
    UserBean user = new UserBean();
    user.addDonation(request.getParameter("name"), Integer.parseInt(request.getParameter("amount")));

    session.setAttribute("user", user);
%>
<main>
    <section class="container container--fluid">
        <h1>Uw heeft de volgende boekingen gemaakt</h1>

        <ul>
            <%
                for (Object donation : user.getDonations()) {
                    out.print("<li>" + donation + "</li>");
                }
            %>
        </ul>
    </section>
</main>
</body>
</html>
