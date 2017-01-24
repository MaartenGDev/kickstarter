<%@ page import="java.util.ArrayList" %>
<%@ page import="me.maartendev.UserBean" %>
<%@ page import="java.time.temporal.ChronoUnit" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.util.concurrent.TimeUnit" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="../navigation.jsp"/>

<%
    ArrayList<String> projects = new ArrayList<>();
    projects.add("Compass 3.0");
    projects.add("FastHttp");
    projects.add("BreadMachine");
    projects.add("Qoute Drone");

    Integer project = Integer.parseInt(request.getParameter("project"));

    String name = projects.get(project - 1);


    String inputString = "27-01-2017";
    DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
    Date endDate = dateFormat.parse(inputString);

    Date startDate = new Date();

    long diff = endDate.getTime() - startDate.getTime();
    long daysLeft = TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS);

    int topDonation = 0;
    if (session.getAttribute("user") != null) {
        UserBean user = (UserBean) session.getAttribute("user");
//
        topDonation = user.getTopDonation();
    }


%>
<main>
    <section class="hero">
        <h1 class="hero__title"><%= name %>
        </h1>
        <section class="hero__overlay"></section>
        <img class="hero__image" src="/kickstarter/assets/img/projects/code.jpg"/>
    </section>
    <section class="intro">
        <section class="intro__container">
            <section class="intro__block intro__block--left">
                <span class="intro__text"><%= topDonation %></span>
            </section>
            <section class="intro__block intro__block--right">
                <span class="intro__text"><%= daysLeft %> Days</span>
            </section>
        </section>
    </section>
    <section class="container container--compact">
        <article class="article">
            <p class="article__text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores at, beatae
                cum,
                cupiditate distinctio
                fugiat incidunt mollitia obcaecati officia praesentium quidem rem reprehenderit sed sint tempora vero
                voluptatem. Id, iusto.</p>
        </article>
    </section>

    <footer class="footer">
        <section class="footer__form">
            <form action="../handleDonation.jsp" method="POST">
                <input type="text" class="form__input" name="name" placeholder="Project Name" value="<%= name %>">
                <input type="text" class="form__input" name="email" placeholder="Email">
                <input type="text" class="form__input" name="amount" placeholder="Amount">

                <button type="submit" class="btn btn--success">Donate</button>
            </form>
        </section>

    </footer>
</main>
</body>
</html>
