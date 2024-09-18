package org.example.study1.scheduled;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ScheduleRestController {
    @Autowired
    private ScheduleService scheduleService;

    //제이슨 데이터 형식으로 보내기 위한 컨트롤러
    @GetMapping("/schedule/update")
    public List<ScheduleDto> getUpdatedSchedule() {
        return scheduleService.selectSchedule();
    }
}
