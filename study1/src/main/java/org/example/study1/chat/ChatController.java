package org.example.study1.chat;

import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ChatController {
    //채팅방
    @GetMapping("/chat/waiting")
    public String waiting(){
        return "chat";
    }

    @MessageMapping("/{roomId}") //여기로 전송되경우 호출 //구독주소 접두사는 send가 도니다
    @SendTo("/app/{roomId}")  //목적지 //다시클라이언트로
    public ChatEntity sendMessage(@DestinationVariable Long roomId, ChatEntity message){
        return ChatEntity.builder()
                .room(roomId)
                .sender(message.getSender())
                .message(message.getMessage())
                .build();
    }



}
