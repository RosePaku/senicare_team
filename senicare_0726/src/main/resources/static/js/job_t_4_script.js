document.addEventListener('DOMContentLoaded', function() {
    const saveBtn = document.querySelector('.btn-save');
    saveBtn.addEventListener('click', function(event) {
      event.preventDefault();
  
      // 사용자가 입력한 값들을 서버로 전송하여 저장하는 로직 추가 (AJAX 또는 Fetch API 사용)
  
      // 서버에서 저장된 값들을 가져와서 리스트 형태로 표시하는 로직 추가
      const applicantList = document.querySelector('.applicant-list');
      // 이 부분에서 서버로부터 받은 데이터를 이용하여 리스트 형태로 추가하여 보여줄 수 있습니다.
      // 예를 들면, applicantList.innerHTML = '<ul><li>입력한 값 1</li><li>입력한 값 2</li>...</ul>' 와 같은 방식으로 추가합니다.
    });
  });