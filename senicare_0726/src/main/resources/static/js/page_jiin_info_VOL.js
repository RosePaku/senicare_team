// 최종학력란
const resumeRadio = document.getElementById("resume");
const easyResumeRadio = document.getElementById("easy_resume");
const resumeForm = document.getElementById("resume_form");
const easyResumeForm = document.getElementById("easy_resume_form");

resumeRadio.addEventListener("change", function () {
    if (resumeRadio.checked) {
        resumeForm.style.display = "block";
        easyResumeForm.style.display = "none";
    }
});

easyResumeRadio.addEventListener("change", function () {
    if (easyResumeRadio.checked) {
        resumeForm.style.display = "none";
        easyResumeForm.style.display = "block";
    }
});


// 최종학력 선택 시 상세 학력 입력란 표시

$(document).ready(function() {
    $('#education').change(function() {
        if ($(this).val() === 'other') {
            $('#otherEducationContainer').show();
            $('#educationDetailContainer').hide();
        } else if($(this).val() === 'university') {
            $('#educationDetailContainer').show();
            $('#otherEducationContainer').hide();
        } else {
            $('#otherEducationContainer').hide();
            $('#educationDetailContainer').hide();
        }
    });
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



// 지원자 정보