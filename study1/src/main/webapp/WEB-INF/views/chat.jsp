<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>index</title>
</head>
<body>
<h3>채팅방</h3>
<a href="/user/list">user목록</a>
<a href="/schedule/list ">Scheduled 목록</a>
<script src="https://cdn.jsdelivr.net/sockjs/1.1.2/sockjs.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/stompjs@2.3.3/lib/stomp.min.js"></script>
</body>
<div id="chat-box"></div>
<input type="text" id="romeId" placeholder="방 번호" onchange="connect()">
<input type="text" id="name" placeholder="작성자 이름">
<input type="text" id="message" placeholder="Enter message">
<button onclick="sendMessage()">Send</button>

<script>
        var stompClient = null;

        function connect() {
            var romeId = document.getElementById("romeId").value;
        var socket = new SockJS('/ws');
        stompClient = Stomp.over(socket);
        stompClient.connect({}, function (frame) {
        console.log('Connected: ' + frame);
        stompClient.subscribe('/app/'+romeId, function (message) { //구독위치
        showMessage(JSON.parse(message.body));
    });
    });
    }

        function sendMessage() {
        var message = document.getElementById("message").value;
        var name = document.getElementById("name").value;
        var romeId = document.getElementById("romeId").value;
        stompClient.send("/send/"+romeId, {}, JSON.stringify({
            'sender': name,
            'message':message}));
    }

        function showMessage(chat) {
        var chatBox = document.getElementById("chat-box");
        chatBox.innerHTML += '<div>'+"보내는 사람 : "+ chat.sender +"   내용 : "+ chat.message + '</div>';
    }

        // Connect to WebSocket on page load
        window.onload = function () {
        connect();
    };


</script>
</html>