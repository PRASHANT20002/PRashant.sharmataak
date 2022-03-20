<%@ page import="be.ucll.domain.model.Entertainment" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
        <li><a class="huidigepagina" href="Controller?command=index">Home</a></li>
        <li><a href="Controller?command=searchForm"> Zoek  </a> </li>
        <li><a  href="Controller?command=voegtoe">Voeg toe</a></li>
        <li ><a href="Controller?command=overzicht">Overzicht</a></li>
    </ul></nav>
</header>
<div class="middelbody">
    <h2>Alle films, series en anime die ik gekeken heb</h2>

    <p>Hier in kan je alles zien over de films, series en animes die ik gekeken, je kan ook nog lezen welke genre ze zijn en hoeveel seizoenen er zijn.</p>
    <p><u><%= ((Entertainment) request.getAttribute("meesteSeizoenen")).getNaam() %></u> heeft meeste seizoenen. </p>


</div>
</body>
<footer><p>The things that I watch to entertain myself</p></footer>

</html>