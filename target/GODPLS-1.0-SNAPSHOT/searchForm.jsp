<%--
  Created by IntelliJ IDEA.
  User: prash
  Date: 20/03/2022
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <li><a href="Controller?command=index">Home</a></li>
        <li><a class="huidigepagina" href="Controller?command=searchForm"> Zoek  </a> </li>
        <li><a  href="Controller?command=voegtoe">Voeg toe</a></li>
        <li ><a href="Controller?command=overzicht">Overzicht</a></li>
    </ul></nav>
</header>
<div class="middelbody">
    <form method="POST" action="Controller?command=showresult&naam=<%=request.getParameter("naamSearch")%>">
        <fieldset>
            <legend>
                <h2> Vul de naam in om informatie over de film te weten </h2></legend>
            <br>
            <br>
            <label for="naam"> Naam: </label>
            <input type="text" id="naam" name="naamSearch" value="naam">
            <input type="hidden" name="command" value="showresult">
            <label for="submit_fun">

                <input id="submit_fun" type="submit" value="search"> </label>
        </fieldset>
    </form>

</div>
</body>
<footer><p>The things that I watch to entertain myself</p></footer>

</html>