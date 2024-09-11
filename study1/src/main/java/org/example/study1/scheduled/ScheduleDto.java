package org.example.study1.scheduled;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ScheduleDto {
    private String title;
    private int  startTime;
    private  int  endTime;
    private  int status; // 0 이면  현재 대기 1이면 실행중 인거. db에는 0으로만 값을 넣을꺼다.
    //   this.startTime = LocalTime.now().getMinute(); // 현재 시간의 분
    //        this.endTime = (LocalTime.now().getMinute() + 10) % 60; // 현재 시간의 분에 10분 더한 값
}
