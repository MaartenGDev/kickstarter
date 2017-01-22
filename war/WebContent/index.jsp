<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>IdeaBakery</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,800i,300i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" type="text/css" media="all" href="assets/css/vendor/pure-min.css"/>
</head>
<body>
<jsp:include page="header.jsp"/>

<main>
    <section class="container container--fluid">
        <jsp:include page="projectList.jsp"/>
    </section>
</main>
</body>
</html>
