<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>商品管理</title>
</head>
<body>
        <table width="600px" height="400px" align="center" cellspacing="0" border="1px">
            <tr>
                <th>商品编号</th>
                <th>商品名称</th>
                <th>商品价格</th>
                <th>商品介绍</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${list}" var="shop">
                <tr>
                    <td>${shop.shopId}</td>
                    <td>${shop.shopName}</td>
                    <td>${shop.shopPrice}</td>
                    <td>${shop.shopDesc}</td>
                    <td>
                        <a href="/SSM/shop/find/${shop.shopId}">修改</a>
                        <a href="/SSM/shop/del?id=${shop.shopId}">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
</body>
</html>
