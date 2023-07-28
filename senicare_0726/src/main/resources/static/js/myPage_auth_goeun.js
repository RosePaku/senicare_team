

// auth_1

// 인풋?
function addInput1() {
    const additionalInputs1 = document.getElementById("additionalInputs1");
    const newInput = document.createElement("div");
    newInput.className = "additional-input";
    newInput.innerHTML = `
      <input type="text" style="width:600px; margin-top: 10px; margin-bottom: 5px;" placeholder="추가 기저질환 입력">
      <button type="button" style="margin-bottom: -10px; margin-left: 20px; background-color: #D3D3D3; box-shadow: inset 0 0 0 2px #D3D3D3;" onclick="addInput1()" class="add-button"><h1 style="margin: -10px; color:black;">+</h1></button>
      <button type="button" style="margin-bottom: -10px; margin-left: 10px; background-color: #D3D3D3; box-shadow: inset 0 0 0 2px #D3D3D3;" onclick="removeInput1(this)" class="remove-button"><h1 style="margin: -10px; color:red;">-</h1></button>`;
    additionalInputs1.appendChild(newInput);
  }

  function removeInput1(button) {
    const additionalInputs1 = document.getElementById("additionalInputs1");
    additionalInputs1.removeChild(button.parentNode);
  }

  function addInput2() {
    const additionalInputs2 = document.getElementById("additionalInputs2");
    const newInput = document.createElement("div");
    newInput.className = "additional-input";
    newInput.innerHTML = `
      <input type="text" style="width:600px; margin-top: 10px; margin-bottom: 5px;" placeholder="추가 자격증 입력">
      <button type="button" style="margin-bottom: -10px; margin-left: 20px; background-color: #D3D3D3; box-shadow: inset 0 0 0 2px #D3D3D3;" onclick="addInput2()" class="add-button"><h1 style="margin: -10px; color:black;">+</h1></button>
      <button type="button" style="margin-bottom: -10px; margin-left: 10px; background-color: #D3D3D3; box-shadow: inset 0 0 0 2px #D3D3D3;" onclick="removeInput2(this)" class="remove-button"><h1 style="margin: -10px; color:red;">-</h1></button>`;
    additionalInputs2.appendChild(newInput);
  }

  function removeInput2(button) {
    const additionalInputs2 = document.getElementById("additionalInputs2");
    additionalInputs2.removeChild(button.parentNode);
  }

  function addInput3() {
    const additionalInputs3 = document.getElementById("additionalInputs3");
    const newInput = document.createElement("div");
    newInput.className = "additional-input";
    newInput.innerHTML = `
      <input type="text" style="width:600px; margin-top: 10px; margin-bottom: 5px;" placeholder="추가 경력 입력">
      <button type="button" style="margin-bottom: -10px; margin-left: 20px; background-color: #D3D3D3; box-shadow: inset 0 0 0 2px #D3D3D3;" onclick="addInput3()" class="add-button"><h1 style="margin: -10px; color:black">+</h1></button>
      <button type="button" style="margin-bottom: -10px; margin-left: 10px; background-color: #D3D3D3; box-shadow: inset 0 0 0 2px #D3D3D3;" onclick="removeInput3(this)" class="remove-button"><h1 style="margin: -10px; color:red">-</h1></button>`;
    additionalInputs3.appendChild(newInput);
  }

  function removeInput3(button) {
    const additionalInputs3 = document.getElementById("additionalInputs3");
    additionalInputs3.removeChild(button.parentNode);
  }


      // 실제로는 서버와의 통신을 통해 회원 정보를 업데이트하는 로직을 구현해야 합니다.
      // 여기서는 예시로 입력된 정보를 alert 창으로 보여줍니다.
function updateUserInfo() {
    const genderRadio = document.querySelector('input[name="gender"]:checked');   
    const genderValue = genderRadio ? genderRadio.value : "";
    const username = document.getElementById("username").value;
    const email = document.getElementById("email").value;
    const name = document.getElementById("name").value;
    const birthYear = document.getEementById("birthYear").value;
    const birthMonth = document.getElementById("birthMonth").value;
    const birthDay = document.getElementById("birthDay").value;
}
    // alert(`성별: ${genderValue}\n아이디: ${username}\n이메일: ${email}\n이름: ${name}`);
    // alert(`생년월일: ${birthYear}년 ${birthMonth}월 ${birthDay}일`);
