// health에서 적용되는 스크립트


var result_Array = [["양호한 수준 입니다.","꾸준한 운동과 건강한 식습관으로 균형잡힌 생활을 유지하세요."],["주의가 필요합니다.","정기적인 검진을 받아 건강관리에 더욱 신경을 써야해요. 꾸준한 운동과 건강한 식습관의 개선은 예방에 도움이 됩니다."],["위험 단계입니다!","빠른 시일내 가까운 의료기관을 방문하셔서 보다 전문적인 검사를 받아보세요!"]]; 
// <!--========== 치매 자가진단 점수 ==========-->
function demenSum() {
    var Q_total_count = $(".demenTest .tbl-type02 tbody tr").length;
      var subject = 'demen';
      var sub_Title = '치매 자가진단 점수';

    console.log(Q_total_count);
    
    var sum = 0;
    for(var i=1;i <=Q_total_count;i++){
        var v = ""; var data = 0;
        v = $("input[name=Q"+i+"]:checked");
        if(!v.val() && v.val() !== 0){
            alert("선택 되지 않은 항목이 있습니다.");
            return false;
        }
        data = $("input[name=Q"+i+"]:checked").val();
        sum = sum + parseInt(data);
    }// for
    // 체크개수 기준
    var result_title =""; var result_content ="";
    if(sum <= 3){
        result_title = result_Array[0][0];
        result_content = result_Array[0][1];
    }else if(sum <= 7){
        result_title = result_Array[1][0];
        result_content = result_Array[1][1];
    }else if(sum > 7){
        result_title = result_Array[2][0];
        result_content = result_Array[2][1];
    }
    $("#title1").text(sub_Title);
    $("#sum1").text(sum);
    $("#result_title1").text(result_title);
    $("#result_content1").text(result_content);
    $(".demenResult").show("500ms"); // 결과창 나타내기

    var offset = $("#result1").offset();
    $('html, body').animate({scrollTop : offset.top - 300}, 400);
    
    // 다시하기와 추천버튼으로 바꾸기
    var htmlData = "";
    htmlData += "<a id='resetBtn' onclick='resetBtn("+'$("form:eq(0)")'+")' class='resetBtn'><span>다시하기</span></a>"; // n번째 form 태그 이하를 매개변수로 담아 보내기!
    htmlData += "<a id='resultBtn' onclick='resultBtn()' class='resultBtn'><span>운동/식단 추천받기</span></a>";
    $("#submitDemenBtn").html(htmlData);
    // +++++ DB에 치매점수 저장
    
}

// <!--========== 퇴행성관절염 자가진단 점수 ==========-->
function arthSum() {
    var Q_total_count = $(".arthTest .tbl-type02 tbody tr").length;
      var subject = 'arth';
      var sub_Title = '퇴행성관절염 자가진단 점수';

    console.log(Q_total_count);
    
    var sum = 0;
    for(var i=1;i <=Q_total_count;i++){
        var v = ""; var data = 0;
        v = $("input[name=Q"+i+"]:checked");
        if(!v.val() && v.val() !== 0){
            alert("선택 되지 않은 항목이 있습니다.");
            return false;
        }
        data = $("input[name=Q"+i+"]:checked").val();
        sum = sum + parseInt(data);
    }// for
    // 체크개수 기준
    var result_title =""; var result_content ="";
    if(sum <= 2){
        result_title = result_Array[0][0];
        result_content = result_Array[0][1];
    }else if(sum <= 5){
        result_title = result_Array[1][0];
        result_content = result_Array[1][1];
    }else if(sum > 5){
        result_title = result_Array[2][0];
        result_content = result_Array[2][1];
    }
    $("#title2").text(sub_Title);
    $("#sum2").text(sum);
    $("#result_title2").text(result_title);
    $("#result_content2").text(result_content);
    $(".arthResult").show("500ms"); // 결과창 나타내기

    var offset = $("#result2").offset();
    $('html, body').animate({scrollTop : offset.top - 300}, 400);
    
    // 다시하기와 추천버튼으로 바꾸기
    var htmlData = "";
    htmlData += "<a id='resetBtn' onclick='resetBtn("+'$("form:eq(1)")'+")' class='resetBtn'><span>다시하기</span></a>";
    htmlData += "<a id='resultBtn' onclick='resultBtn()' class='resultBtn'><span>운동/식단 추천받기</span></a>";
    $("#submitArthBtn").html(htmlData);
    // DB
    
} 

// <!--========== 고혈압 자가진단 점수 ==========-->
function hyperSum() {
    var Q_total_count = $(".hyperTest .tbl-type02 tbody tr").length;
      var subject = 'hyper';
      var sub_Title = '고혈압 자가진단 점수';

    console.log(Q_total_count);
    
    var sum = 0;
    for(var i=1;i <=Q_total_count;i++){
        var v = ""; var data = 0;
        v = $("input[name=Q"+i+"]:checked");
        if(!v.val() && v.val() !== 0){
            alert("선택 되지 않은 항목이 있습니다.");
            return false;
        }
        data = $("input[name=Q"+i+"]:checked").val();
        sum = sum + parseInt(data);
    }// for
    // 체크개수 기준
    var result_title =""; var result_content ="";
    if(sum <= 3){
        result_title = result_Array[0][0];
        result_content = result_Array[0][1];
    }else if(sum <= 9){
        result_title = result_Array[1][0];
        result_content = result_Array[1][1];
    }else if(sum > 9){
        result_title = result_Array[2][0];
        result_content = result_Array[2][1];
    }
    $("#title3").text(sub_Title);
    $("#sum3").text(sum);
    $("#result_title3").text(result_title);
    $("#result_content3").text(result_content);
    $(".hyperResult").show("500ms"); // 결과창 나타내기

    var offset = $("#result3").offset();
    $('html, body').animate({scrollTop : offset.top - 300}, 400);
    
     // 다시하기와 추천버튼으로 바꾸기
    var htmlData = "";
    htmlData += "<a id='resetBtn' onclick='resetBtn("+'$("form:eq(2)")'+")' class='resetBtn'><span>다시하기</span></a>";
    htmlData += "<a id='resultBtn' onclick='resultBtn()' class='resultBtn'><span>운동/식단 추천받기</span></a>";
    $("#submitHyperBtn").html(htmlData);
    // DB
    
} 

// <!--========== 당뇨병 자가진단 점수 ==========-->
function diabetSum() {
    var Q_total_count = $(".diabetTest .tbl-type02 tbody tr").length;
      var subject = 'diabet';
      var sub_Title = '당뇨병 자가진단 점수';

    console.log(Q_total_count);
    
    var sum = 0;
    for(var i=1;i <=Q_total_count;i++){
        var v = ""; var data = 0;
        v = $("input[name=Q"+i+"]:checked");
        if(!v.val() && v.val() !== 0){
            alert("선택 되지 않은 항목이 있습니다.");
            return false;
        }
        data = $("input[name=Q"+i+"]:checked").val();
        sum = sum + parseInt(data);
    }// for
    // 체크개수 기준
    var result_title =""; var result_content ="";
    if(sum <= 2){
        result_title = result_Array[0][0];
        result_content = result_Array[0][1];
    }else if(sum <= 5){
        result_title = result_Array[1][0];
        result_content = result_Array[1][1];
    }else if(sum > 5){
        result_title = result_Array[2][0];
        result_content = result_Array[2][1];
    }
    $("#title4").text(sub_Title);
    $("#sum4").text(sum);
    $("#result_title4").text(result_title);
    $("#result_content4").text(result_content);
    $(".diabetResult").show("500ms"); // 결과창 나타내기

    var offset = $("#result4").offset();
    $('html, body').animate({scrollTop : offset.top - 300}, 400);
    
       // 다시하기와 추천버튼으로 바꾸기
    var htmlData = "";
    htmlData += "<a id='resetBtn' onclick='resetBtn("+'$("form:eq(3)")'+")' class='resetBtn'><span>다시하기</span></a>";
    htmlData += "<a id='resultBtn' onclick='resultBtn()' class='resultBtn'><span>운동/식단 추천받기</span></a>";
    $("#submitDiabetBtn").html(htmlData);
    // DB
    
} 

// <!--========== 뇌혈관질환 자가진단 점수 ==========-->
function cerebroSum() {
    var Q_total_count = $(".cerebroTest .tbl-type02 tbody tr").length;
      var subject = 'cerebro';
      var sub_Title = '뇌혈관질환 자가진단 점수';

    console.log(Q_total_count);
    
    var sum = 0;
    for(var i=1;i <=Q_total_count;i++){
        var v = ""; var data = 0;
        v = $("input[name=Q"+i+"]:checked");
        if(!v.val() && v.val() !== 0){
            alert("선택 되지 않은 항목이 있습니다.");
            return false;
        }
        data = $("input[name=Q"+i+"]:checked").val();
        sum = sum + parseInt(data);
    }// for
    // 체크개수 기준
    var result_title =""; var result_content ="";
    if(sum == 0){
        result_title = result_Array[0][0];
        result_content = result_Array[0][1];
    }else if(sum > 0){
        result_title = result_Array[2][0];
        result_content = result_Array[2][1];
    }
    $("#title5").text(sub_Title);
    $("#sum5").text(sum);
    $("#result_title5").text(result_title);
    $("#result_content5").text(result_content);
    $(".cerebroResult").show("500ms"); // 결과창 나타내기

    var offset = $("#result5").offset();
    $('html, body').animate({scrollTop : offset.top - 300}, 400);
    
    // 다시하기와 추천버튼으로 바꾸기
    var htmlData = "";
    htmlData += "<a id='resetBtn' onclick='resetBtn("+'$("form:eq(4)")'+")' class='resetBtn'><span>다시하기</span></a>";
    htmlData += "<a id='resultBtn' onclick='resultBtn()' class='resultBtn'><span>운동/식단 추천받기</span></a>";
    $("#submitCerebroBtn").html(htmlData);
    // DB
    
} 

// <!--========== 다시하기 버튼 ==========-->	
function resetBtn(fidx) {
    var htmlData = "";
    var Q_total_count = "";
    
    if (fidx.html().includes("치매")) {
        // 라디오 버튼 초기화
        Q_total_count = $(".demenTest .tbl-type02 tbody tr").length;
        for (var i=1; i<=Q_total_count; i++) {
            $("input:radio[name='Q"+i+"']").prop('checked', false);
        }
        // 결과창 숨기고
        $(".demenResult").hide("200ms");
        // 스크롤 위로 이동
        var offset = $(".demenTest").offset();
        $('html, body').animate({scrollTop : offset.top-500}, 400);
        // 제출버튼으로 바꿈
        htmlData += "<a onclick=\"demenSum()\" class='submitBtn'><span>제출</span></a>";
        $("#submitDemenBtn").html(htmlData);
        // +++++ DB 삭제
    }
    else if (fidx.html().includes("arth")) {
        // 라디오 버튼 초기화
        Q_total_count = $(".arthTest .tbl-type02 tbody tr").length;
        for (var i=1; i<=Q_total_count; i++) {
            $("input:radio[name='Q"+i+"']").prop('checked', false);
        }
        // 결과창 숨기고
        $(".arthResult").hide("200ms");
        // 스크롤 위로 이동
        var offset = $(".arthTest").offset();
        $('html, body').animate({scrollTop : offset.top-500}, 400);
        // 제출버튼으로 바꿈
        htmlData += "<a onclick=\"arthSum()\" class='submitBtn'><span>제출</span></a>";
        $("#submitArthBtn").html(htmlData);
        // DB 삭제
    }
    else if (fidx.html().includes("hyper")) {
        // 라디오 버튼 초기화
        Q_total_count = $(".hyperTest .tbl-type02 tbody tr").length;
        for (var i=1; i<=Q_total_count; i++) {
            $("input:radio[name='Q"+i+"']").prop('checked', false);
        }
        // 결과창 숨기고
        $(".hyperResult").hide("200ms");
        // 스크롤 위로 이동
        var offset = $(".hyperTest").offset();
        $('html, body').animate({scrollTop : offset.top-500}, 400);
        // 제출버튼으로 바꿈
        htmlData += "<a onclick=\"hyperSum()\" class='submitBtn'><span>제출</span></a>";
        $("#submitHyperBtn").html(htmlData);
        // DB 삭제
    }
    else if (fidx.html().includes("diabet")) {
        // 라디오 버튼 초기화
        Q_total_count = $(".diabetTest .tbl-type02 tbody tr").length;
        for (var i=1; i<=Q_total_count; i++) {
            $("input:radio[name='Q"+i+"']").prop('checked', false);
        }
        // 결과창 숨기고
        $(".diabetResult").hide("200ms");
        // 스크롤 위로 이동
        var offset = $(".diabetTest").offset();
        $('html, body').animate({scrollTop : offset.top-500}, 400);
        // 제출버튼으로 바꿈
        htmlData += "<a onclick=\"diabetSum()\" class='submitBtn'><span>제출</span></a>";
        $("#submitDiabetBtn").html(htmlData);
        // DB 삭제
    }
    else if (fidx.html().includes("cerebro")) {
        // 라디오 버튼 초기화
        Q_total_count = $(".cerebroTest .tbl-type02 tbody tr").length;
        for (var i=1; i<=Q_total_count; i++) {
            $("input:radio[name='Q"+i+"']").prop('checked', false);
        }
        // 결과창 숨기고
        $(".cerebroResult").hide("200ms");
        // 스크롤 위로 이동
        var offset = $(".cerebroTest").offset();
        $('html, body').animate({scrollTop : offset.top-500}, 400);
        // 제출버튼으로 바꿈
        htmlData += "<a onclick=\"cerebroSum()\" class='submitBtn'><span>제출</span></a>";
        $("#submitCerebroBtn").html(htmlData);
        // DB 삭제
    }
}// resetBtn


// <!--========== 추천버튼 ==========-->
function resultBtn() {
    $.ajax({
        url: "/healths_folder/health_2",
        type:"post",
        data:{"auth_id":'${sessionId}',
            "demen":$("#sum1").text(),
            "arth":$("#sum2").text(),
            "hyper":$("#sum3").text(),
            "diabet":$("#sum4").text(),
            "cerebro":$("#sum5").text()
            },
        success: function(data) {
            alert("성공");
        },
        error: function() {
            alert("실패");
        }
        
    });// ajax
}