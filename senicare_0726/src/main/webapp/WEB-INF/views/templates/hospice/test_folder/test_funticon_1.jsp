<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--	
	0724 작업사항_고은
	1) jsp 파일로 작업 수정
    2) 헤더, 푸터 작업 완료
 -->

<!-- 검색버튼 테스트 (기업회원 질문 사항) -->
<!DOCTYPE html>
<html>
<head>
    <title>검색창 바</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>

    </style>
</head>
<body>

    <!--================Header Menu Area =================-->
    <%@ include file="../senicare_main_header.jsp" %>
    <!--================Header Menu Area =================-->
  
<!-- 지원 방법 -->
<div class="item">
    <label for="application_method"><strong>지원 방법</strong></label>
    <div class="TypoBox">
        <select name="application_method" id="application_method" class="Typo SizeL defalt">
            <option value="간편 지원">간편 지원</option>
            <option value="상세 지원">상세 지원</option>
            <option value="기타">기타</option>
        </select>
    </div>
</div>

<!-- 간편 지원 설명 -->
<div id="simple_application_description" style="display: block;">
    기업의 질문을 받지 않고 지원을 받습니다.
</div>

<!-- 상세 지원 설명 -->
<div id="detailed_application_description" style="display: none;">
    기업의 질문을 받고 지원을 받습니다.
</div>

<!-- 상세 지원 클릭 시 질문을 입력하는 칸 -->
<div id="detailed_application_questions" style="display: none;">
    <div class="item" id="question_1_div">
        <label for="question_1"><strong>질문 1</strong></label>
        <div class="TypoBox">
            <input type="text" name="question_1" id="question_1" class="Typo SizeL defalt" placeholder="질문 1을 입력하세요.">
            <button onclick="removeQuestion('question_1_div')"><i class="fas fa-minus" style="color: red;"></i></button> 
        </div>
    </div>
</div>

<!-- 추가 버튼 -->
<button id="add_question_button" style="display: none;"><i class="fas fa-plus" style="color: green;"></i></button> 

    <!-- Start footer Area -->
    <%@ include file="../senicare_main_footer.jsp" %>
    <!-- End footer Area -->


<script>
    const applicationMethodSelect = document.getElementById("application_method");
    const simpleApplicationDescription = document.getElementById("simple_application_description");
    const detailedApplicationDescription = document.getElementById("detailed_application_description");
    const detailedApplicationQuestions = document.getElementById("detailed_application_questions");
    const addQuestionButton = document.getElementById("add_question_button");

    let questionCount = 1;

    applicationMethodSelect.addEventListener("change", function () {
        const selectedOption = applicationMethodSelect.value;

        if (selectedOption === "간편 지원") {
            simpleApplicationDescription.style.display = "block";
            detailedApplicationDescription.style.display = "none";
            detailedApplicationQuestions.style.display = "none";
            addQuestionButton.style.display = "none";
        } else if (selectedOption === "상세 지원") {
            simpleApplicationDescription.style.display = "none";
            detailedApplicationDescription.style.display = "block";
            detailedApplicationQuestions.style.display = "block";
            addQuestionButton.style.display = "block";
            questionCount = 1;
        } else {
            simpleApplicationDescription.style.display = "none";
            detailedApplicationDescription.style.display = "none";
            detailedApplicationQuestions.style.display = "none";
            addQuestionButton.style.display = "none";
        }
    });

    addQuestionButton.addEventListener("click", function () {
        if (questionCount < 5) {
            questionCount++;
            const newQuestionDiv = document.createElement("div");
            newQuestionDiv.classList.add("item");
            newQuestionDiv.id = `question_${questionCount}_div`;
            newQuestionDiv.innerHTML = `
                <label for="question_${questionCount}"><strong>질문 ${questionCount}</strong></label>
                <div class="TypoBox">
                    <input type="text" name="question_${questionCount}" id="question_${questionCount}" class="Typo SizeL defalt" placeholder="질문 ${questionCount}을 입력하세요.">
                    <button onclick="removeQuestion('question_${questionCount}_div')"><i class="fas fa-minus" style="color: red;"></i></button>
                </div>
            `;
            detailedApplicationQuestions.appendChild(newQuestionDiv);
        }

        if (questionCount === 5) {
            addQuestionButton.style.display = "none";
        }
    });

    function removeQuestion(questionDivId) {
        const questionDiv = document.getElementById(questionDivId);
        questionDiv.remove();
        questionCount--;
        addQuestionButton.style.display = "block";
    }
</script>

</body>
</html>
