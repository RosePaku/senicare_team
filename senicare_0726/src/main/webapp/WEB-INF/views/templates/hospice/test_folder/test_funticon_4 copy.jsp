<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--	
	0724 작업사항_고은
	1) jsp 파일로 작업 수정
  2) 헤더, 푸터 작업 완료
 -->

<!DOCTYPE html>
<html>
<body>

  <!--================Header Menu Area =================-->
  <%@ include file="../senicare_main_header.jsp" %>
  <!--================Header Menu Area =================-->

<h2>ID/Password Recovery</h2>

<select id="memberType">
  <option value="personal">Personal</option>
  <option value="company">Company</option>
</select>

<div id="idPwRecovery">
    <!-- 개인회원용 폼 -->
    <div id="personal" style="display: none;">
      <h3>Personal Member</h3>
      <input type="text" placeholder="Enter your email" id="personalEmail">
      <button onclick="findPersonalId()">Find ID</button>
      <button onclick="findPersonalPw()">Find Password</button>
    </div>

    <!-- 기업회원용 폼 -->
    <div id="company" style="display: none;">
      <h3>Company Member</h3>
      <input type="text" placeholder="Enter your company name" id="companyName">
      <button onclick="findCompanyId()">Find ID</button>
      <button onclick="findCompanyPw()">Find Password</button>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
$(document).ready(function(){
  $('#memberType').change(function(){
    var selectedType = $(this).val();
    $('#idPwRecovery > div').hide();
    $('#' + selectedType).show();
  });
});

function findPersonalId() {
  var email = $('#personalEmail').val();
  // 이메일을 사용하여 개인회원 아이디 찾기 로직 구현
}

function findPersonalPw() {
  var email = $('#personalEmail').val();
  // 이메일을 사용하여 개인회원 비밀번호 찾기 로직 구현
}

function findCompanyId() {
  var companyName = $('#companyName').val();
  // 회사명을 사용하여 기업회원 아이디 찾기 로직 구현
}

function findCompanyPw() {
  var companyName = $('#companyName').val();
  // 회사명을 사용하여 기업회원 비밀번호 찾기 로직 구현
}
</script>

  <!-- Start footer Area -->
  <%@ include file="../senicare_main_footer.jsp" %>
  <!-- End footer Area -->

</body>
</html>
