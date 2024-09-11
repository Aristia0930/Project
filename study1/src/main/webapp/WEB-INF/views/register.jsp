<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>user1::register</title>
</head>
<body>
<h3>user등록</h3>
<a href="/"> 메인</a>
<a href="/user/list">user 목록</a>

<form action="/user/register" method="post">
    <table border="1">
        <tr>
            <td>아이디</td>
            <td><input type="text" name="id"></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>휴대폰</td>
            <td><input type="text" name="number"></td>
        </tr>
        <tr>
            <td>나이</td>
            <td><input type="number" name="age"></td>
        </tr>
        <tr>
            <td colspan="2" align="right"><input type="submit" value="등록"></td>

        </tr>
    </table>
</form>

</body>
</html>