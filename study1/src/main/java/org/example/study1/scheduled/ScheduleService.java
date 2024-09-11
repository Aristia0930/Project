package org.example.study1.scheduled;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ScheduleService {

    private final ScheduleMapper scheduleMapper;

    public ScheduleService(ScheduleMapper scheduleMapper) {
        this.scheduleMapper = scheduleMapper;
    }

    //스케줄 목록 조회
    public List<ScheduleDto> selectSchedule(){
        return scheduleMapper.selectSchedule();
    }


}
