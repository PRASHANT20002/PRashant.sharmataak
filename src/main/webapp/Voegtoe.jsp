<%--
  Created by IntelliJ IDEA.
  User: prash
  Date: 27/02/2022
  Time: 13:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Entertainment</title>
    <title>Title</title>
    <link rel="icon" href="afbeelding/photo.jpg">
    <link rel="icon" href="afbeelding/hnet.com-image%20(1).ico">
</head>
<body>
<h1 class="title"> Entertainment</h1>
<header>
    <nav>
        <ul>
            <li><a href="Controller?command=index">Home</a></li>
            <li><a href="Controller?command=searchForm"> Zoek  </a> </li>
            <li><a class="huidigepagina" href="Controller?command=voegtoe">Voeg toe</a></li>
            <li><a href="Controller?command=overzicht">Overzicht</a></li>
        </ul>
    </nav>
</header>

<div class="middelbody">
    <form method="POST" action="Controller?command=submit">
        <fieldset>
            <legend>
                <h2> Wat je gekeken heb voeg je hier </h2></legend>
            <br>
            <br>
            <label for="naam"> Naam: </label>
            <input type="text" id="naam" name="naam1" value="naam">
            <br>
            <label for="type"> Type: </label>
            <input type="text" id="type" name="type1" value="type">
            <br>
            <label for="genre">Genre: </label>
            <input type="text" id="genre" name="genre1" value="genre">
            <br>
            <label for="seizoenen">Aantal Seizoenen: </label>
            <input type="number" id="seizoenen" name="seizoenen1">
            <br>

            <input type="hidden" name="command" value="overzicht">
            <label for="submit">
                <input id="submit" type="submit" value="Verzenden"> </label>
        </fieldset>
    </form>
</div>
</body>
<footer><p>The things that I watch to entertain myself</p></footer>

</html>
