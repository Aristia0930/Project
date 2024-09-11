<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>user1::modify</title>
</head>
<body>
<h3>user 수정</h3>
<a href="/">메인</a>
<a href="/user/list">user 목록</a>

<form action="/user/modify" method="post">
    <table border="1">
        <tr>
            <td>아이디</td>
            <td><input type="text" name="id" value="${user.id}" readonly="readonly"></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><input type="text" name="name" value="${user.name}" ></td>
        </tr>
        <tr>
            <td>휴대폰</td>
            <td><input type="text" name="number" value="${user.number}" ></td>
        </tr>
        <tr>
            <td>나이</td>
            <td><input type="number" name="age" value="${user.age}" ></td>
        </tr>
        <tr>
            <td colspan="2" align="right"><input type="submit" value="수정"></td>

        </tr>
    </table>
</form>

</body>
</html>