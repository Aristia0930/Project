<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Scheduled::register</title>
<%--    <script type="text/javascript" src="../js/schRegister.js"></script>--%>
<%--    <script src="<%= request.getContextPath() %>/js/schRegister.js"></script>--%>
</head>
<body>
<h3>Scheduled 등록</h3>
<a href="/"> 메인</a>
<a href="/schedule/list">Scheduled 목록</a>

<form id="scheduleForm" action="/schedule/register" method="post" >
    <table border="1">
        <tr>
            <td>제목</td>
            <td><input type="text" name="title"></td>
        </tr>
        <tr>
            <td>시작시간</td>
            <td><input type="number" name="startTime" min="0" max="59" required></td>
        </tr>
        <tr>
            <td>종료시간</td>
            <td><input type="number" name="endTime" min="0" max="59" required></td>
        </tr>

        <tr>
            <td colspan="2" align="right"><input type="submit" value="등록"></td>

        </tr>
    </table>
</form>


<script src="/js/schRegister.js?v=1.0"></script> <!-- 수정된 경로 -->
<script>
    document.getElementById('scheduleForm').addEventListener('submit', function(event) {
        if (!endTime()) {
            event.preventDefault(); // 폼 제출 방지
        }
    });
</script>
</body>
</html>