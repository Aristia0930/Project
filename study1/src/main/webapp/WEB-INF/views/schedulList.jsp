<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Scheduled List</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<body>
<h3>Scheduled 목록</h3>
<a href="/">메인</a>
<a href="/schedule/register/page">Scheduled 등록</a>

<table border="1">
    <thead>
    <tr>
        <td>제목</td>
        <td>시작 시간</td>
        <td>종료시간</td>
        <td>상태</td>
    </tr>
    </thead>
    <tbody id="auctionTableBody">
    <!-- 초기 데이터는 JSP에서 전달된 데이터로 표시됩니다 -->
    <c:forEach var="item" items="${list}">
        <tr>
            <td>${item.title}</td>
            <td>${item.startTime}</td>
            <td>${item.endTime}</td>
            <td>
                <c:choose>
                    <c:when test="${item.status == 1}">
                        진행중
                    </c:when>
                    <c:otherwise>
                        대기중
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<script type="text/javascript">
    function setupAutoRedirect() {
        console.log("재실행")
        setTimeout(() => {

            window.location.href = '/schedule/list'; // 1분 후 /schedule/list로 리다이렉션
        }, 6000); // 60000ms = 1분
    }

    document.addEventListener('DOMContentLoaded', function() {
        setupAutoRedirect(); // 페이지 로드 시 자동 리다이렉션 설정
    });
</script>

</body>
</html>
