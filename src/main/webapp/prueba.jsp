<%--
  Created by IntelliJ IDEA.
  User: mirakel
  Date: 28/06/2015
  Time: 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title></title>
</head>
<body>
<h3>Subir imagen</h3>
<form action="upload" method="post" enctype="multipart/form-data">
    <input type="file" name="imagen"/>
    <input type="text" name="minombre"/>
    <input type="submit" value="Enviar"/>
</form>

<div id="result">
    <h3>${requestScope["mensaje"]}</h3>
</div>
</body>
</html>
