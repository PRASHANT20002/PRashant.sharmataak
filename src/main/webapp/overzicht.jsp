<%@ page import="be.ucll.domain.model.Entertainment" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: prash
  Date: 27/02/2022
  Time: 13:17
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

<h1 class="title">  Entertainment</h1>
<header>
    <nav><ul>
        <li><a href="Controller?command=index">Home</a></li>
        <li><a href="Controller?command=searchForm"> Zoek  </a> </li>
        <li><a href="Controller?command=voegtoe">Voeg toe</a></li>
        <li class="huidigepagina"><a href="Controller?command=overzicht">Overzicht</a></li>
    </ul></nav>
</header>
<div style="overflow-x:auto" class="middelbody">

<table >
<thead><tr class="tabletitle">
    <th>Naam</th>
    <th>Type</th>
    <th>Genre</th>
    <th>Aantal seizoenen</th>
    <th>Pas aan</th>
    <th>Verwijder</th>
</tr>
</thead>
    <tbody>
    <% ArrayList<Entertainment> entertainments= (ArrayList<Entertainment>) request.getAttribute("entertainments") ; %>
    <%  for ( Entertainment s : entertainments) {    %>
<tr>
    <td><%= s.getNaam() %></td>
    <td><%= s.getType() %></td>
    <td><%= s.getGenre() %></td>
    <td><%= s.getSeizoenen() %></td>
    <td><u>Pas aan</u></td>
    <td>X</td>
</tr>
    <%} %>
    </tbody>


</table>
    </div>

<footer><p>The things that I watch to entertain myself</p></footer>

</html>
