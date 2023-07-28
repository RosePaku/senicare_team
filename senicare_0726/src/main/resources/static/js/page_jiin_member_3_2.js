// 본인확인 방법 스위칭 (둘 중 하나 선택 조건) // member_3_2
$(function(){
    $("input[name='recoverConfirmMethod']").change(function(){
         //alert("test");
         //alert("선택값 : "+$(this).val());
         if($(this).val()=='phone'){
            $(".find_email").css("display","none");
            $(".find_phone").css("display","inline");
          }else{
           $(".find_email").css("display","inline");
           $(".find_phone").css("display","none");
         }
    });//change
  
    $("input[name='recoverConfirmMethod2']").change(function(){
         //alert("test");
         //alert("선택값 : "+$(this).val());
         if($(this).val()=='phone'){
            $(".find_email2").css("display","none");
            $(".find_phone2").css("display","inline");
          }else{
           $(".find_email2").css("display","inline");
           $(".find_phone2").css("display","none");
         }
    });//change
  });//jquery

