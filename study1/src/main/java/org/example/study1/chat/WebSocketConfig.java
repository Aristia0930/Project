package org.example.study1.chat;

import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;
import org.springframework.web.socket.config.annotation.WebSocketMessageBrokerConfigurer;

@Configuration
@EnableWebSocketMessageBroker
public class WebSocketConfig  implements WebSocketMessageBrokerConfigurer {

    @Override
    public void configureMessageBroker(MessageBrokerRegistry registry) {
        registry.setApplicationDestinationPrefixes("/send");
        //클라이언트에서 보내는 메서지가 받는 주소
        //클라이언트 구독 주로

        registry.enableSimpleBroker("/app");
        //이주소로 구독하고 있는 클라이언트에서 메세지 전달
        //클라이언트가 서버로 메서지 보낼때 사용하는 주소
    }

    @Override
    public void registerStompEndpoints(StompEndpointRegistry registry) {
        registry.addEndpoint("/ws").withSockJS();
        //sockjs연결주소로
        //이 엔드포이트로 웹소켓에 연결
        // 주소 ws://localhost:8080/ws
    }
}
