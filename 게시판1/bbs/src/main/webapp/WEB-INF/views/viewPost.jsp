<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시글 보기</title>
    <link href="<%= request.getContextPath() %>/assets/dist/css/viewPost.css" rel="stylesheet">
    <link href="<%= request.getContextPath() %>/assets/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<header class="p-3 text-bg-dark">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
            </a>

            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li><a href="<c:url value='/user' />" class="nav-link px-2 text-white">Home</a></li>
                <li><a href="<c:url value='/board' />" class="nav-link px-2 text-secondary">게시판</a></li>
                <li><a href="#" class="nav-link px-2 text-white">Pricing</a></li>
                <li><a href="#" class="nav-link px-2 text-white">FAQs</a></li>
                <li><a href="#" class="nav-link px-2 text-white">About</a></li>
            </ul>



            <div class="text-end">

                <c:choose>
                    <c:when test="${not empty userInfo}">
                        <form action="<c:url value='/user/logout' />" method="post" style="display: inline;">
                            <button type="submit" class="btn btn-warning text-white text-decoration-none">로그아웃</button>
                        </form>
                    </c:when>
                    <c:otherwise>
                        <a href="<c:url value='/user/login' />" class="btn btn-warning text-white text-decoration-none">로그인</a>
                    </c:otherwise>
                </c:choose>



            </div>
        </div>
    </div>
</header>
<div class="containers">
    <div class="post-header">
        <h2 id="post-title">${Board.title}</h2>
        <c:if test="${check}">
            <div class="actions">
                <button class="btns" id="edit-button" onclick="edit(${Board.boardId})">수정하기</button>
                <button class="btns" id="delete-button">삭제하기</button>
            </div>
        </c:if>

    </div>
    <div class="post-info">
        <p id="post-author">작성자: ${Board.userName}</p>
        <p id="post-date">작성날짜: ${Board.created}</p>
    </div>
    <div id="contentdiv">
        <p id="post-content">${Board.contents}</p>
    </div>

    <!-- 댓글 섹션 -->
    <div id="comments-section">
        <h3>댓글</h3>
        <!-- 댓글 작성 폼 -->
        <div id="comment-form">
            <h4>댓글 작성하기</h4>
            <textarea id="comment-content" rows="4" placeholder="댓글을 입력하세요..."></textarea>
            <button class="btns" id="submit-comment">댓글 작성</button>
        </div>

        <!-- 기존 댓글 목록 -->
        <div id="comments">
            <div class="comment">
                <p class="comment-author">작성자: 댓글 작성자 이름</p>
                <p class="comment-content">댓글 내용</p>
                <button class="reply-btn">답글</button>

                <!-- 대댓글 -->
                <div class="reply">
                    <p class="comment-author">작성자: 대댓글 작성자 이름</p>
                    <p class="comment-content">대댓글 내용</p>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<%= request.getContextPath() %>/assets/dist/js/bootstrap.bundle.min.js"></script>
<script>
    function edit(boardId){
        window.location.href = "/board/edit?boardId="+boardId;

    }
</script>
</body>
</html>
