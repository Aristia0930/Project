<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Scheduled::list</title>
</head>
<body>
<h3>Scheduled 목록</h3>
<a href="/">메인</a>
<a href="/schedule/register/page">Scheduled 등록</a>

<table border="1">
    <tr>
        <td>제목</td>
        <td>시작 시간</td>
        <td>종료시간</td>
        <td>상태</td>
    </tr>
    <c:forEach var="list" items="${list}">
        <tr>
            <td>${list.title}</td>
            <td>${list.startTime}</td>
            <td>${list.endTime}</td>
            <c:choose>
                <c:when test="${list.status==1}">
                    <td>진행중</td>
                </c:when>

                <c:otherwise>
                    <td>대기중</td>
                </c:otherwise>
            </c:choose>



        </tr>
    </c:forEach>
</table>
</body>
</html>