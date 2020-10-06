<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2020/10/1
  Time: 22:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/" method="post">
    <table align="center" class="tableb" width="550px">
        <tr>
            <th colspan="5">记账管理</th>
        </tr>
        <c:forEach items="${types}" var="types">
        <%--<tr>--%>
            <%--<th colspan="5">--%>
                <%--<p>--%>
                <%--类型:<select >--%>
                        <%--<option value="${types.name}"></option>--%>
                    <%--</select>--%>
                <%--</p>--%>
            <%--</th>--%>
        <%--</tr>--%>
        </c:forEach>
        <tr>
            <th>标题</th>
            <th>记账时间</th>
            <th>类型</th>
            <th>金额</th>
            <th>说明</th>
        </tr>
        <c:forEach items="${bills}" var="bills">
            <tr>

                <td>${bills.title}</td>
                <td>${bills.billTime}</td>
                <td>${bills.typeId}</td>
                <td>${bills.price}元</td>
                <td>${bills.explain}</td>
            </tr>
        </c:forEach>

    </table>
    <p  align="center" ><a  href="/toadd"  style="text-align: center">考勤登记</a></p>
</form>
<script>
    $(function () {
        $("tr:first").css("background-color", "red");
        $("tr:odd").css("background-color", "pink");

    })
</script>
</body>
</html>
