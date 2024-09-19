package org.example.study1.chat;

import lombok.*;

import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ChatEntity {
    private Long id;
    private Long room;
    private String sender;
    private String message;
    private LocalDateTime sendDate;

    @Builder
    public ChatEntity(Long room, String sender, String message) {
        this.room = room;
        this.sender = sender;
        this.message = message;
        this.sendDate = LocalDateTime.now();
    }
    /**
     * 채팅 생성
     * @param room 채팅 방
     * @param sender 보낸이
     * @param message 내용
     * @return Chat Entity
     */
    public static ChatEntity createChat(Long room, String sender, String message) {
        return ChatEntity.builder()
                .room(room)
                .sender(sender)
                .message(message)
                .build();
    }







}

