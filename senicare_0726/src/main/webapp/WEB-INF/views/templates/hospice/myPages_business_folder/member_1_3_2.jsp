<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--	
	0724 작업사항_고은
	1) jsp 파일로 작업 수정
	2) 헤더, 푸터 작업 완료
 -->

<html lang="ko">

<head>
    <title>회원가입 - 시니케어에 오신 것을 환영합니다!</title>
    <meta name="naver-site-verification" content="86455485e27cab6986d130e4c3b90c5b516820d1">
    <meta name="naver" content="nosublinks">
    <meta http-equiv="Content-Type" content="../text/html; charset=utf-8">
    <meta http-equiv="Content-Language" content="ko-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <link href="../sri_css/join/sri_css_member_join.css" media="all" rel="stylesheet" type="text/css">
    <link href="../sri_css/sri_css_member_etc.css" media="all" rel="stylesheet" type="text/css">
    <link href="../sri_css/sric_css_member_login.css" media="all" rel="stylesheet" type="text/css">
    <link href="../sri_css/sri_css_member_pattern.css" media="all" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../vendors/linericon/style.css">
    <link rel="stylesheet" href="../css/font-awesome.min.css">
    <link rel="stylesheet" href="../vendors/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="../vendors/lightbox/simpleLightbox.css">
    <link rel="stylesheet" href="../vendors/nice-select/css/nice-select.css">
    <link rel="stylesheet" href="../vendors/animate-css/animate.css">
    <link rel="stylesheet" href="../vendors/jquery-ui/jquery-ui.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <!-- main css -->
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/style_DH2.css">
    <link rel="stylesheet" href="../css/style_jiin.css">
    <link rel="stylesheet" href="../css/responsive.css">
    <link href="../favicon.ico?ver=2" rel="favicon">



    <meta http-equiv="origin-trial"
        content="A8JfNlJkey0MFKnz6XNz8nRPAhS9Pk1KdhzNHXdfaz7ediAYHhDf/bW0PKE8IDoMWFZG6uRlHwzxV6IR+zh0EAsAAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5uZXQ6NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY4ODA4MzE5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
    <meta http-equiv="origin-trial"
        content="A8+GUOvok5j8ovF5eDgcRkHjjwMRBeKryCemTXvbp0vtb//sDFgNbQ+1h5AEm6m7NkU/FuBEEqP3YH/3StuCyQ4AAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5jb206NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY4ODA4MzE5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
    <meta http-equiv="origin-trial"
        content="AwnOWg2dzaxHPelVjqOT/Y02cSxnG2FkjXO7DlX9VZF0eyD0In8IIJ9fbDFZGXvxNvn6HaF51qFHycDGLOkj1AUAAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5jb206NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY5NTE2Nzk5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">

    <style>

    </style>
</head>

<body>

    <!--================Header Menu Area =================-->
    <%@ include file="../senicare_main_header.jsp" %>
    <!--================Header Menu Area =================-->

    <!--================ Banner Area =================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="banner_content text-left">
                    <h2>기업 회원가입</h2>
                    <div class="page_link">
                        <a href="../senicare_main.jsp">클릭하시면 [ 홈페이지 ] 로 이동합니다 </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Banner Area =================-->

    <!-- 입력 페이지 -->
    <div id="sri_section">
        <div id="sri_wrap">

            <div id="join_wrapper" class="join_cont_wrap">
                <div id="member_personal" class="member_cate">
                    <form name="frm" id="frm" method="post" action="">

                        <h3 class="tit_join_member">
                            <p>채용 공고 정보 작성 P2</p>
                        </h3>
                        <h5>기업의 정보를 자유롭게 입력합니다.</h5>
                        <div class="input_container">
                            <div class="left_area">
                                <fieldset class="fieldset_class1">
                                    <div class="cont_division">

                                        <!-- 필수 입력 항목 -->
                                        <div class="write_base">

                                            <!-- 아이디 -->
                                            <div class="member_center_line">기업 정보 입력 항목 (필수)</div>


                                            <!-- 기업 설명 -->
                                            <div class="item">
                                                <label for="work_location"><strong>기업 설명</strong></label>
                                                <div class="TypoBox">
                                                    <input type="text" name="work_location" id="work_location"
                                                        class="Typo SizeL defalt" style="ime-mode:active"
                                                        autocapitalize="off" placeholder="">
                                                </div>
                                            </div>

                                            <!-- 급여 -->
                                            <div class="item">
                                                <label for="salary_range"><strong>급여 범위</strong></label>
                                                <div class="TypoBox">
                                                    <select name="salary_range" id="salary_range"
                                                        class="Typo SizeL defalt">
                                                        <option value="0-2000">0~2,000만원</option>
                                                        <option value="2000-3000">2,000~3,000만원</option>
                                                        <option value="3000-4000">3,000~4,000만원</option>
                                                        <option value="4000-5000">4,000~5,000만원</option>
                                                        <option value="5000-9999">5,000만원 이상</option>
                                                        <option value="negotiable">협의 후 결정</option>
                                                    </select>
                                                </div>
                                            </div>


                                            <!-- 지원 방법 -->
                                            <div class="item">
                                                <label for="application_method"><strong>지원 방법</strong></label>
                                                <div class="TypoBox">
                                                    <select name="application_method" id="application_method"
                                                        class="Typo SizeL defalt">
                                                        <option value="간편 지원">간편 지원</option>
                                                        <option value="상세 지원">상세 지원</option>
                                                        <option value="기타">기타</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <!-- 간편 지원 설명 -->
                                            <div id="simple_application_description" style="display: block;">
                                                기업의 질문을 받지 않고 바로 지원을 받습니다.
                                            </div>

                                            <!-- 상세 지원 설명 -->
                                            <div id="detailed_application_description" style="display: none;">
                                                기업의 질문을 받고 지원을 받습니다.
                                            </div>

                                            <!-- 면접 질문 -->
                                            <div class="item" id="interviewQuestionsContainer" style="display: none;">
                                                <label for="interviewQuestions"><strong>면접 질문</strong></label>
                                                <div class="TypoBox">
                                                    <div class="interview-question-inputs">
                                                        <div class="interview-question-input">
                                                            <input type="text" name="interviewQuestions[]"
                                                                class="Typo SizeL defalt" style="ime-mode:active"
                                                                autocapitalize="off" placeholder="면접 질문을 입력하세요.">
                                                            <i
                                                                class="fas fa-minus remove-interview-question-button"></i>
                                                        </div>
                                                    </div>
                                                    <i class="fas fa-plus add-interview-question-button"></i>
                                                </div>
                                            </div>

                                            <!-- 채용 마감일 선택 -->
                                            <div class="item">
                                                <label for="application_deadline"><strong>채용 마감일</strong></label>
                                                <div class="TypoBox">
                                                    <select name="application_deadline" id="application_deadline"
                                                        class="Typo SizeL defalt">
                                                        <option value="1주일 이내">1주일 이내</option>
                                                        <option value="2주일 이내">2주일 이내</option>
                                                        <option value="1달 이내">1달 이내</option>
                                                        <option value="1달 이상">1달 이상</option>
                                                    </select>
                                                </div>
                                            </div>


                                            <!-- 키워드 입력란 : 태그 형태로 아이콘 방식으로 선택하는 느낌, 기업이 주는 이미지에 대한 키워드 -->
                                            <div class="item" id="keywordsContainer">
                                                <label for="keywords"><strong>키워드</strong></label>
                                                <div class="TypoBox">
                                                    <div class="keyword-inputs">
                                                        <div class="keyword-input">
                                                            <input type="text" name="keywords[]"
                                                                class="Typo SizeL defalt" style="ime-mode:active"
                                                                autocapitalize="off" placeholder="키워드를 입력하세요.">
                                                            <i class="fas fa-minus remove-keyword-button"></i>
                                                        </div>
                                                    </div>
                                                    <i class="fas fa-plus add-keyword-button"></i>
                                                </div>
                                            </div>

                                            <!-- 선택 입력 사항 -->

                                            <div class="div_empty_top"></div>
                                            <div class="member_center_line">기업 정보 입력 항목 (선택)</div>


                                            <!-- 자격 조건 -->
                                            <div class="item">
                                                <label for="work_location"><strong>자격 조건 및 우대사항</strong></label>
                                                <div class="TypoBox">
                                                    <input type="text" name="work_location" id="work_location"
                                                        class="Typo SizeL defalt" style="ime-mode:active"
                                                        autocapitalize="off" placeholder="예) 컴퓨터공학 전공 또는 컴퓨터 공학 우대">
                                                </div>
                                            </div>






                                            <!-- 예정 면접일 입력란 -->
                                            <div class="item">
                                                <label for="interview_schedule"><strong>예정 면접일</strong></label>
                                                <div class="TypoBox">
                                                    <input type="text" name="interview_schedule" id="interview_schedule"
                                                        class="Typo SizeL defalt" style="ime-mode:active"
                                                        autocapitalize="off"
                                                        placeholder="예) 20231124 금요일 오후 3시 또는 추후 기재">
                                                </div>
                                            </div>



                                            <!-- 채용 프로세스 입력란 -->
                                            <div class="item">
                                                <label for="recruitment_process"><strong>채용 프로세스</strong></label>
                                                <div class="TypoBox">
                                                    <input type="text" name="recruitment_process"
                                                        id="recruitment_process" class="Typo SizeL defalt"
                                                        style="ime-mode:active" autocapitalize="off"
                                                        placeholder="예) 이력서 면접 -> 1차 면접 -> 결과 통보">
                                                </div>
                                            </div>

                                            <!-- 기업 연봉 정책 입력란 -->
                                            <div class="item">
                                                <label for="salary_policy"><strong>기업 연봉 정책</strong></label>
                                                <div class="TypoBox">
                                                    <input type="text" name="salary_policy" id="salary_policy"
                                                        class="Typo SizeL defalt" style="ime-mode:active"
                                                        autocapitalize="off" placeholder="예) 1년마다 재 계약">
                                                </div>
                                            </div>














                                            <div class="btn_join">
                                                <button type="button" id="btn_submit"
                                                    class="inp_join BtnType SizeL defalt ga_data_layer submit_btn"
                                                    onmousedown="loggingEventAndTagManager(['company_join','join_complete'],['ga_lead','company_join','join_complete'])">
                                                    저장하고 다음으로 이동
                                                </button>
                                            </div>

                                        </div>
                                    </div>
                                </fieldset>
                            </div>
                        </div>
                        <!-- 기업 정보 입력 항목 이후 내용 생략 -->
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- start footer Area -->
	<%@ include file="../senicare_main_footer.jsp" %>
	<!-- End footer Area -->




    <!-- 스크립트 라인 -->
    <script>

    </script>
    </script>
    <!-- 스크립트 라인 -->
    <script async="" src="//static.airbridge.io/sdk/latest/airbridge.min.js"></script>
    <script type="../text/javascript" src="../js/page_jiin_info.js"></script>
    <script type="../text/javascript" src="../js/page_jiin.js"></script>
    <script type="../text/javascript" src="//dynamic.criteo.com/js/ld/ld.js?a=96026" async="true"></script>
    <!-- 스크립트 라인 -->


</body>

</html>