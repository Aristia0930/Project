<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>user1::list</title>
</head>
<body>
<h3>user 목록</h3>
<a href="/">메인</a>
<a href="/user/register">user 등록</a>

<table border="1">
    <tr>
        <td>아이디</td>
        <td>이름</td>
        <td>휴대폰</td>
        <td>나이</td>
        <td>관리</td>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.number}</td>
            <td>${user.age}</td>
            <td>
                <a href="/user/modify?id=${user.id}">수정</a>
                <a href="/user/delete?id=${user.id}">삭제</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>