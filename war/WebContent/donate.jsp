<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="navigation.jsp"/>

<main>
    <section class="container container--compact">
        <section class="card card--fluid">
            <h3 class="card__title">Donate</h3>
            <form action="handleDonation.jsp" method="POST">
                <input type="text" class="form__input" name="name" placeholder="Name">
                <input type="email" class="form__input" name="email" placeholder="email">
                <input type="number" class="form__input" name="amount" placeholder="Amount">

                <button type="submit" class="btn btn--primary">Save</button>
            </form>
        </section>
    </section>
</main>
</body>
</html>
