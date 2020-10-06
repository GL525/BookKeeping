<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2020/9/28
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/doadd" method="post">
<table border="1" align="center" style="margin-top: 70px">
    <tr>
        <td colspan="2">添加人员</td>
    </tr>
    <tr>
        <td>
            姓名

        </td>
        <td><input type="text" name="name"></td>
    </tr>
    <tr>
        <td>
            性别

        </td>
        <td>
            <select class="name" id="gender" name="gender">
                <option value="无">请选择</option>
                <option value="1">男</option>
                <option value="0">女</option>
            </select>
        </td>
    </tr>
    <tr>
        <td>
            年龄
        </td>
        <td>
            <input type="text" id="age" name="age" >
        </td>
    </tr> <tr>
    <td>
        等级
    </td>
    <td>
        <select class="name" id="rank" name="rank">
            <option value="无">--请选择--</option>
            <option value="1">1级</option>
            <option value="2">2级</option>
            <option value="3">3级</option>
            <option value="4">4级</option>
            <option value="5">5级</option>
            <option value="6">6级</option>
        </select>
    </td>
</tr>
    <tr>
    <td>
        部门
    </td>
    <td>
        <select class="name" id="department" name="department">
            <option value="无">--请选择--</option>
            <option value="开发部">开发部</option>
            <option value="支持部">支持部</option>
            <option value="工程质量部">工程质量部</option>
        </select>
    </td>
</tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <button type="submit">保存</button>

        </td>
    </tr>
</table>
</form>
</div>
</body>
</html>
