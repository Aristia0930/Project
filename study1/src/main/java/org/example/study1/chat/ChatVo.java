package org.example.study1.chat;

import lombok.*;

import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ChatVo {
    private Long id;
    private Long room;
    private String sender;
    private String message;
    private LocalDateTime sendDate;

    @Builder
    public ChatVo(Long room, String sender, String message) {
        this.room = room;
        this.sender = sender;
        this.message = message;
        this.sendDate = LocalDateTime.now();
    }



}

