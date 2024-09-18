package org.example.study1.scheduled;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.time.LocalTime;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@Service

public class ScheduleService {

    private  List<ScheduleDto> data =new CopyOnWriteArrayList<>();

    private final ScheduleMapper scheduleMapper;

    public ScheduleService(ScheduleMapper scheduleMapper) {
        this.scheduleMapper = scheduleMapper;
    }

    //스케줄 목록 조회
    public List<ScheduleDto> selectSchedule(){
        return data;
    }


    //스케줄 등록
    public void register(ScheduleDto scheduleDto) {
        scheduleMapper.register(scheduleDto);
        dataSet();
    }

    //경매가능한 목록 조회 하기
    @Scheduled(fixedRate = 60000)  // 1분마다 실행
    public void dataSet(){
        List<ScheduleDto> newData=scheduleMapper.selectSchedule();
        int nowTime= LocalTime.now().getMinute();
        for (ScheduleDto newDatum : newData) {
            int startTime = newDatum.getStartTime();
            int endTime = newDatum.getEndTime();
            if (startTime <= nowTime && nowTime <= endTime) {
                newDatum.setStatus(1);
            }

        }
        this.data=newData;
    }

}
