<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/24/2022
  Time: 10:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Currency Converter</title>
  <link>
</head>
<body>
<thead style="font-size: 23px; color: #555d2f;">
<tr>
  <th>ID</th>
  <th>Name</th>
  <th>PRICE</th>
  <th>INFORMATION</th>
  <th>CreatedAt</th>
  <th>UpdatedAt</th>
  <th>ACTION</th>
</tr>

</thead>
<tbody style="font-style: oblique;">
<c:forEach items="${requestScope['productList']}" var="item">
  <tr>
    <td>
      <img  src="/images/erd.png"></img>${item.getImg()}</td>
    <td>${item.getName()}</td>
    <td>${item.getPrice()}</td>
    <td>${item.getQuantity()}</td>
    <td>${item.getQuantity()}</td>
    <td>${item.getQuantity()}</td>
    <td>${item.getQuantity()}</td>
    <td></td>
    <td></td>
    <td>
<%--      <a href="/product?action=edit&id=${item.getId()}">--%>
<%--        <button type="button" class="btn btn-outline-primary"> <i class="fa-solid fa-pen-to-square"></i></button>--%>
<%--      </a>--%>
<%--      <a href="/product?action=delete&id=${item.getId()}">--%>
<%--        <button type="button" class="btn btn-outline-primary"><i class="fa-solid fa-trash-can"></i></button>--%>
<%--      </a>--%>
    </td>
  </tr>
</c:forEach>
</tbody>
</table>
</body>
</html>