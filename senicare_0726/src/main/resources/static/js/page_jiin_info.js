// 면접 질문 추가 버튼 기능

const applicationMethodSelect = document.getElementById("application_method");
const simpleApplicationDescription = document.getElementById("simple_application_description");
const detailedApplicationDescription = document.getElementById("detailed_application_description");
const interviewQuestionsContainer = document.getElementById("interviewQuestionsContainer");

let questionCount = 1;

applicationMethodSelect.addEventListener("change", function () {
    const selectedOption = applicationMethodSelect.value;

    if (selectedOption === "간편 지원") {
        simpleApplicationDescription.style.display = "block";
        detailedApplicationDescription.style.display = "none";    
        interviewQuestionsContainer.style.display = "none";
    
    } else if (selectedOption === "상세 지원") {
        simpleApplicationDescription.style.display = "none";
        interviewQuestionsContainer.style.display = "block";
        detailedApplicationDescription.style.display = "block";
    
    } else {
        interviewQuestionsContainer.style.display = "none";
        simpleApplicationDescription.style.display = "none";
        detailedApplicationDescription.style.display = "none";

    }
    
});



// 키워드 추가 제거 버튼 기능 (면접)

document.addEventListener("DOMContentLoaded", function () {
    const interviewQuestionsContainer = document.getElementById("interviewQuestionsContainer");
    const addButton = interviewQuestionsContainer.querySelector(".add-interview-question-button");
    const interviewQuestionInputs = interviewQuestionsContainer.querySelector(".interview-question-inputs");

    addButton.addEventListener("click", function () {
        const newInterviewQuestionInput = document.createElement("div");
        newInterviewQuestionInput.classList.add("interview-question-input");
        newInterviewQuestionInput.innerHTML = `
            <input type="text" name="interviewQuestions[]" class="Typo SizeL defalt"
                style="ime-mode:active" autocapitalize="off" placeholder="면접 질문을 입력하세요.">
            <i class="fas fa-minus remove-interview-question-button"></i>
        `;
        interviewQuestionInputs.appendChild(newInterviewQuestionInput);
    });

    interviewQuestionsContainer.addEventListener("click", function (event) {
        if (event.target.classList.contains("remove-interview-question-button")) {
            const interviewQuestionInput = event.target.parentElement;
            interviewQuestionInputs.removeChild(interviewQuestionInput);
        }
    });
});






// 키워드 추가 제거 버튼 기능 (키워드)
document.addEventListener("DOMContentLoaded", function () {
    const keywordsContainer = document.getElementById("keywordsContainer");
    const addButton = keywordsContainer.querySelector(".add-keyword-button");
    const keywordInputs = keywordsContainer.querySelector(".keyword-inputs");

    addButton.addEventListener("click", function () {
        const newKeywordInput = document.createElement("div");
        newKeywordInput.classList.add("keyword-input");
        newKeywordInput.innerHTML = `
            <input type="text" name="keywords[]" class="Typo SizeL defalt"
                style="ime-mode:active" autocapitalize="off" placeholder="키워드를 입력하세요.">
            <i class="fas fa-minus remove-keyword-button"></i>
        `;
        keywordInputs.appendChild(newKeywordInput);
    });

    keywordsContainer.addEventListener("click", function (event) {
        if (event.target.classList.contains("remove-keyword-button")) {
            const keywordInput = event.target.parentElement;
            keywordInputs.removeChild(keywordInput);
        }
    });
});

// 지원자 정보

// 최종학력 선택 시 상세 학력 입력란 표시

const educationSelect = document.getElementById("education");
const educationDetailContainer = document.getElementById("educationDetailContainer");

educationSelect.addEventListener("change", function () {
    const selectedValue = educationSelect.value;
    if (selectedValue === "other") {
        educationDetailContainer.style.display = "block";
    } else {
        educationDetailContainer.style.display = "none";
    }
});

// 경력사항 추가/삭제
const keywordsContainer = document.getElementById("keywordsContainer");
const addKeywordButton = document.querySelector(".add-keyword-button");

addKeywordButton.addEventListener("click", function () {
    const keywordInputWrapper = document.createElement("div");
    keywordInputWrapper.classList.add("keyword-input");
    keywordInputWrapper.innerHTML = `
        <input type="text" name="career[]" class="Typo SizeL defalt" style="ime-mode:active"
        autocapitalize="off" placeholder="키워드를 입력하세요.">
        <i class="fas fa-minus remove-keyword-button"></i>
    `;
    keywordsContainer.appendChild(keywordInputWrapper);
    const removeKeywordButton = keywordInputWrapper.querySelector(".remove-keyword-button");
    removeKeywordButton.addEventListener("click", function () {
        keywordsContainer.removeChild(keywordInputWrapper);
    });
});