<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/18/2022
  Time: 10:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Upload files</title>
</head>
<body>
<%--<div style="padding: 5px;">--%>
<%--    ${errorMessage}--%>

<%--</div>--%>
<h2>
    Upload file
</h2>
<form method="post" action = "${pageContext.request.contextPPath}  " enctype="multipart/form-data">
    Selec file to upload:
    <br/>
    <input type="file " name=" image" />
    <br/>
    name:
    <br/>
    <input type="text " name="name" size="100" />
        <br/>
        <br/>
    <input type="subit" value="Uppload"/>
</form>
</body>
</html>
