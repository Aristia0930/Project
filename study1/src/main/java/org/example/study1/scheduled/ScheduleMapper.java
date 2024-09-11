package org.example.study1.scheduled;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ScheduleMapper {
    //목록조회
    List<ScheduleDto> selectSchedule();
}
