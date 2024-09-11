

function endTime() {

    var startTime = parseInt(document.querySelector('input[name="startTime"]').value, 10);
    var endTime = parseInt(document.querySelector('input[name="endTime"]').value, 10);
    console.log(startTime)

    if(isNaN(startTime)||isNaN(endTime)){
        alert("시작 시간과 종료 시간을 입력해주세요")
        return false
    }

    if (startTime>=endTime){
        alert("종료시간을 더 크게 입력하세요")
        return false
    }

    return true


}

