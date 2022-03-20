<%@ page import="be.ucll.domain.model.Entertainment" %><%--
  Created by IntelliJ IDEA.
  User: prash
  Date: 20/03/2022
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Entertainment</title>
    <link rel="icon" href="afbeelding/photo.jpg">



</head>

<body>
<div class="images"><h1 class="title">  Entertainment</h1></div>
<header>
    <nav><ul>
        <li><a  href="Controller?command=index">Home</a></li>
        <li><a href="Controller?command=searchForm"> Zoek  </a> </li>
        <li><a  href="Controller?command=voegtoe">Voeg toe</a></li>
        <li ><a href="Controller?command=overzicht">Overzicht</a></li>
    </ul></nav>

</header>
<div class="middelbody">
    <h2>Zoekresultaat</h2>
    <% if (request.getAttribute("entertainment")!=null) {%>
    <% Entertainment found = (Entertainment) request.getAttribute("entertainment");%>
    <p>We hebben het <%= found.getType() %> <%= found.getNaam()%> voor je opgezocht: </p>

    <ul>
        <li>Naam: <%= found.getNaam()%></li>
        <li>Type:<%= found.getType()%></li>
        <li>Genre:  <%= found.getGenre()%> </li>
        <li>Seizonen: <%= found.getSeizoenen()%></li>
    </ul>

    <%}
    else {%>
    <p>Er is geen informatie over <%= request.getParameter("naamSearch")%> in ons website. </p>
    <%}%>

</div>
</body>
<footer><p>The things that I watch to entertain myself</p></footer>

</html>
