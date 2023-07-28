// 전체 동의 체크 박스 스크립트
// JavaScript 코드 추가 시작

    // HTML에서 전체 동의 체크박스와 개별 약관 동의 체크박스들을 가져옵니다.
    const checkAll = document.getElementById('auth_clause_yn');
    const agreeRule1 = document.getElementById('auth_agree_rule1');
    const agreeTake1 = document.getElementById('auth_agree_take1');
    const agreePersonal = document.getElementById('auth_personal_yn');

    // 전체 동의 체크박스가 클릭되었을 때, 개별 약관 동의 체크박스들의 상태를 변경합니다.
    checkAll.addEventListener('click', function () {
        const checked = checkAll.checked;
        agreeRule1.checked = checked;
        agreeTake1.checked = checked;
        agreePersonal.checked = checked;
    });

        // 개별 약관 동의 체크박스들이 클릭되었을 때, 전체 동의 체크박스 상태를 변경합니다.
        [agreeRule1, agreeTake1, agreePersonal].forEach(function (checkbox) {
        checkbox.addEventListener('click', function () {
            checkAll.checked = agreeRule1.checked && agreeTake1.checked && agreePersonal.checked;
        });
    });




// JavaScript 코드 추가 끝
// 전체 동의 체크 박스 스크립트



// 
var cookie = "\/zf_user\/member\/registration\/join-detail", cookieName = "mkt_ecommerce_pagepath", cookieValue = cookie, expirationTime = 1800; expirationTime *= 1E3; var date = new Date, dateTimeNow = date.getTime(); date.setTime(dateTimeNow + expirationTime); date = date.toUTCString(); document.cookie = cookieName + "\x3d" + cookieValue + "; expires\x3d" + date + "; path\x3d/; domain\x3d." + location.hostname.replace(/^www\./i, "");
// 
window.dataLayer = window.dataLayer || []; dataLayer.push({ event: "Event_Sampling", random_page: "374915372" });
// 
window.dataLayer = window.dataLayer || []; dataLayer.push({ userId: "undefined" });
// 
window.criteo_q = window.criteo_q || []; var deviceType = /iPad/.test(navigator.userAgent) ? "t" : /Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent) ? "m" : "d"; window.criteo_q.push({ event: "setAccount", account: 96026 }, { event: "setEmail", email: "" }, { event: "setZipcode", zipcode: "" }, { event: "setSiteType", type: deviceType }, { event: "viewHome" });
// 
    // var svg = '/svg/layout_default.svg?v=?20220923',
    //     req = new XMLHttpRequest();
    // req.open('GET', svg, true);
    // req.send();
    // req.onload = function (e) {
    //     var div = document.querySelector('.img_svg_layout');
    //     div.innerHTML = req.responseText;
    // }
// 
    jQuery(document).ready(function ($) {
        $(document).on('mousedown', '.ga_data_layer', function () {
            var gaData = $(this).data('ga_data_layer') || '';
            var data = gaData.toString().split("|");
            var event = data[0] || '',
                category = data[1] || '',
                eventFlow = data[2] || '',
                eventLabel = data[3] || ''
                ;

            if (!event || !category) {
                return true;
            }

            try {
                dataLayer.push({
                    'event': event,
                    'category': category,
                    'event-flow': eventFlow,
                    'event-label': eventLabel
                });
            } catch (e) {
            }
        });
    });
// 



// <!-- 스크립트 : 링크 연결 -->


    window.addEventListener('load', function () {
        var allElements = document.getElementsByTagName('*');
        Array.prototype.forEach.call(allElements, function (el) {
            var includePath = el.dataset.includePath;
            if (includePath) {
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    if (this.readyState == 4 && this.status == 200) {
                        el.outerHTML = this.responseText;
                    }
                };
                xhttp.open('GET', includePath, true);
                xhttp.send();
            }
        });
    });



// <!-- 게시판 스크립트 -->

    var userMode = '';
    var seq = 0;
    function showPassConfirmContainer(mode, articleSeq) {
        var $container = $('#passConfirmContainer');
        var style = {
            'position': 'fixed'
            , 'top': '50%'
            , 'left': '50%'
            , 'margin-top': -$container.outerHeight() / 2 + 'px'
            , 'margin-left': -$container.outerWidth() / 2 + 'px'
            , 'z-index': 99999
        };

        $container.css(style).show();

        var initCss = {
            position: 'static'
        }
        $('#Sub').css(initCss);
        $('#Ftr').css(initCss);

        userMode = mode;
        seq = articleSeq;

    }

    function passConfirmContainerClose() {
        var $container = $('#passConfirmContainer');
        $container.find('input[name="password"]').val('');
        $container.hide();
        var initCss = {
            position: 'relative'
        }
        $('#Sub').css(initCss);
        $('#Ftr').css(initCss);

    }

    function confirmFormCheck() {
        var $form = $('#confirmForm');

        if (!$form.find('input[name="password"]').val()) {
            alert('비밀번호를 입력해주세요.')
            return;
        }

        if (seq > 0) {
            $form.find('input[name="articleSeq"]').val(seq);
        }

        $.ajax({
            cache: false,
            type: "post",
            url: "/egf/bp/board/article/passconfirm",
            data: $form.serialize(),
            dataType: "json",
            success: function (data, textStatus, jqXHR) {
                seq = data.articleSeq;
                if (data.result == 'success') {
                    if (userMode == 'edit') {
                        $form.attr('action', '/portal/participation/job/recruit?mode=edit').submit();
                    }
                    else if (userMode == 'delete') {
                        if (confirm("정말 지우겠습니까?")) {
                            $form.attr('action', '/egf/bp/board/article/actionDelete').submit();
                        }
                    }
                    else if (userMode == 'read') {
                        $form.find('input[name="articleSeq"]').remove();
                        $form.attr('action', '/portal/participation/job/recruit?articleSeq=' + seq).submit();
                    }
                }
                else {
                    alert(data.msg);
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
            }
        });
    }

    $(function () {
        $('.passFormEnterPress').on('keypress', function (e) {
            var charCode = (e.which) ? e.which : e.keyCode;
            if (charCode == 13) {
                confirmFormCheck();
                return false;
            }
        });
    });


// <!-- 검색 기능 변수명은 응용해서 -->

function search() {
    var searchInput = document.getElementById("search-input").value;
    var searchType = document.getElementById("search-type").value;

    // 검색 동작을 수행하는 코드를 작성합니다.
    // 예시: 검색어와 검색 타입을 서버로 전송하고 결과를 받아옵니다.
    // 이후 결과를 처리하는 로직을 추가하세요.
}


// <!-- 링크 연결 -->
// 

    window.addEventListener('load', function () {
        var allElements = document.getElementsByTagName('*');
        Array.prototype.forEach.call(allElements, function (el) {
            var includePath = el.dataset.includePath;
            if (includePath) {
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    if (this.readyState == 4 && this.status == 200) {
                        el.outerHTML = this.responseText;
                    }
                };
                xhttp.open('GET', includePath, true);
                xhttp.send();
            }
        });
    });


// 

var getId = (function () {
    var elCache = {};
    return function (id) {
        if (!elCache[id]) {
            elCache[id] = document.getElementById(id);
        }
        return elCache[id];
    }
})();

// 
var page_url = 'L3pmX3VzZXIvbWVtYmVyL3JlZ2lzdHJhdGlvbi9qb2luLWRldGFpbD91dD1w';

// 
function addEvent(ele, eventType, func) {
    var obj = typeof ele === 'string' ? getId(ele) : ele;
    if (obj.addEventListener) {
        obj.addEventListener(eventType, func, false);
    } else if (obj.attachEvent) {//IE
        obj.attachEvent('on' + eventType, func);
    }
}


//창닫기
addEvent("pop_login_layer_close", "click", function () {
    getId('page_url').value = page_url;
    getId('pop_login_layer').style.display = 'none';
    getId('pop_login_layer_dimmed').style.display = 'none';
    /**
     * 신입인턴 홈에서 버튼 클릭후 로그인레이어 창 띄우고 닫았을때 사용되는 부분입니다.
     */
    if (window.jobsHomeClickBeforeDom) window.jobsHomeClickBeforeDom.focus();
});

/**
 * 로그인 모달 창 마지막 포커스 닫기 버튼에 tab 키로 이동시 모달안으로 포커스 유지하기 위해 ly_autologin 이동
 */
addEvent("pop_login_layer_close", "keydown", function (e) {
    var keycode = e.keyCode;
    if (keycode === 9) {
        if (!e.shiftKey) {
            e.preventDefault();
            document.querySelector('#ly_autologin').focus();
        }
    }
});

/**
 * 로그인 모달 창 첫 포커스 element인 로그인 유지에 tab+shift일때 닫기 버튼으로 포커스이동
 */
addEvent("ly_autologin", "keydown", function (e) {
    var keycode = e.keyCode;
    if (keycode === 9) {
        if (e.shiftKey && e.target) {
            e.preventDefault();
            document.querySelector('#pop_login_layer_close').focus();
        }
    }
});


//폼  체크
function loginCheckMainLayer(form) {
    if (form.id.value === "") {
        alert("아이디를 입력하세요.");
        form.id.focus();
        return false;
    }
    if (form.id.value.indexOf(" ") > 0) {
        alert("아이디에 공백에 있습니다. 공백을 제거해주세요");
        form.id.focus();
        return false;
    }
    if (form.id.value.length < 4) {
        alert("아이디는 4자이상이어야 합니다");
        form.id.focus();
        return false;
    }
    if (form.password.value === "") {
        alert("비밀번호를 입력하세요");
        form.password.focus();
        return false;
    }
    if (form.password.value.length < 4 || form.password.value.length > 32) {
        alert("비밀번호는 영문,숫자,특수문자 조합 6~32자 입니다.");
        form.password.focus();
        return false;
    }

    if (form['ly_ssl_login'].checked) {
        SecureLogin.encrypt(form);
    }

    return true;
}

//페이지 로딩시 초기화 시켜 준다.
setTimeout(function () {
    var idInPut = getId('ly_id');
    var pwInput = getId('ly_password');
    if (!getId('ly_id').value) {
        idInPut.value = '';
        idInPut.blur();
    }
    pwInput.value = '';
    pwInput.blur();
}, 50);

// 
/**
 *
 * @param name
 * @param value
 * @param expiredays
 */
function setHoursCookie(name, value, expiredays) {
    var todayDate = new Date();
    todayDate.setHours(todayDate.getHours() + expiredays);
    document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";";
}

// 
(document.addEventListener('DOMContentLoaded', function (e) {

    var socialLoginBtnList = document.querySelectorAll('#pop_login_layer .social_login li a');

    [].forEach.call(socialLoginBtnList, function (socialLoginBtn) {
        socialLoginBtn.addEventListener('click', function (e) {
            e.preventDefault();
            e.stopPropagation();

            var link = e.currentTarget.href,
                provider = e.currentTarget.dataset.provider,
                isCompany = '',
                label = isCompany ? 'com_login_' : 'per_login_';

            label += provider;
            loggingEventAndTagManager(['login', 'pc_login_layer', label, ''], ['ga_lead', 'login', 'pc_login_layer', label]);

            //소셜 버튼을 누를때 쿠키를 만들어 주고 소셜 회원 가입 완료 페이지에서 사용 한다.
            setHoursCookie('login_referer_url', encodeURIComponent(location.href.replace(/.*\/\/[^\/]*/, '')), 1);

            if ((navigator.userAgent.toLowerCase().indexOf("msie") !== -1) && provider === 'apple') {
                if (confirm('IE10이하 버전의 인터넷 익스플로러에서는 Apple 로그인이 정상 작동하지 않을 수 있습니다.\n' +
                    '인터넷 익스플로러를 최신 버전으로 업데이트 해주세요')) {
                    window.open(link, '_blank', 'width=480,height=640');
                }
                return;
            }
            window.open(link, '_blank', 'width=480,height=640');
        });
    });

	// <!--==============   pwsave script 시작 =============================-->
	
		var idSaveCheckbox = document.getElementById('idstore');
		idSaveCheckbox.addEventListener('click', function () {
			if (idSaveCheckbox.checked) {
				// alert('아이디 저장');
			}
		});
	
	// <!--==============   pwsave script 끝 =============================-->


    // 
    var isCompany = '';
    var toolTipClass = document.getElementsByClassName('social_tooltip');

    if (toolTipClass.length > 0 && isCompany) {
        toolTipClass[0].style.display = "none";
    }

    var popLoginLayer = document.getElementById('pop_login_layer');
    if (toolTipClass.length > 0 && !isCompany) {
        var fadeTarget = toolTipClass[0],
            fadeEffect = null,
            fadeTimeOut = null;

        var startToolTipInterval = function () {
            fadeEffect = setInterval(function () {
                if (!fadeTarget.style.opacity) {
                    fadeTarget.style.opacity = 1;
                }
                if (fadeTarget.style.opacity > 0) {
                    fadeTarget.style.opacity -= 0.1;
                } else {
                    clearInterval(fadeEffect);
                }
            }, 20);
        };

        var hideSocialTooltip = function () {
            fadeTimeOut = setTimeout(function () {
                startToolTipInterval();
            }, 5000);
        };
    }
    // 
    var respondToVisibility = function (element, callback) {
        var options = {
            root: document
        };

        var observer = new IntersectionObserver(function (entries, observer) {
            entries.forEach(function (entry) {
                callback(entry.intersectionRatio > 0);
            });
        }, options);

        observer.observe(element);
    };

    respondToVisibility(popLoginLayer, function (visible) {
        if (visible) {
            if (toolTipClass.length > 0 && !isCompany) {
                fadeTarget.style.display = 'block';
                fadeTarget.style.opacity = 1;
                clearInterval(fadeEffect);
                clearTimeout(fadeTimeOut);
                hideSocialTooltip();
            }

            document.getElementsByTagName('html')[0].style.overflow = 'hidden';
            document.getElementsByTagName('html')[0].style.height = '100%';
            document.getElementsByTagName('body')[0].style.height = '100%';
        } else {
            document.getElementsByTagName('html')[0].style.overflow = '';
            document.getElementsByTagName('html')[0].style.height = '';
            document.getElementsByTagName('body')[0].style.height = '';
        }
    });

}))
// 




function n_trackEvent(category, action, opt_label, opt_value, opt_noninteraction) {
    var l = document.location;
    var url = l.protocol + '//' + l.host + '/trackEvent?category=' + category + '&action=' + action;
    var label = opt_label || '';
    var value = opt_value || '';
    url = url + '&opt_label=' + label + '&opt_value=' + value;
    n_click_logging(url, l.href);
    try {
        _gaq.push(['_trackEvent', category, action, opt_label, opt_value, opt_noninteraction]);
        ga('send', 'event', category, action, opt_label, opt_value, opt_noninteraction);
    } catch (_e) { }
}

// 

function pushDataLayer(event, category, event_flow, event_label) {
    try {
        dataLayer.push({
            'event': event || 'ga_lead',
            'category': category || '',
            'event-flow': event_flow || '',
            'event-label': event_label || ''
        });

    } catch (e) {

    }
}

// 

// 클릭 이벤트 + 구글 태그매니져 로깅
function loggingEventAndTagManager(trackEventAttr, tagManagerAttr) {
    n_trackEvent(trackEventAttr[0], trackEventAttr[1], trackEventAttr[2], trackEventAttr[3]);
    pushDataLayer(tagManagerAttr[0], tagManagerAttr[1], tagManagerAttr[2], tagManagerAttr[3]);
}


// 
function promotionPushDataLayer(log_event, log_id, log_name, log_creative, log_position) {
    try {
        var ecommerce_type = log_event === 'promotionClick' ? 'promoClick' : 'promoView';
        var promotion_log = {};
        promotion_log[ecommerce_type] = {
            'promotions': [
                {
                    'id': log_id,
                    'name': log_name,
                    'creative': log_creative,
                    'position': log_position
                }
            ]
        };

        var log_data = {
            'event': log_event,
            'ecommerce': promotion_log
        };

        dataLayer.push(log_data);
    } catch (e) {

    }
}

// 
function _hwaClick(cc) {
    n_trackEvent('ADs', 'Click-' + cc);
}

function applyTrackEvent(el, opt_category, opt_content, opt_ref, opt_ref_content) {

    try {
        var url = el.href;
        var category = opt_category || '';
        var content = opt_content || '';
        var ref = opt_ref || '';
        var ref_content = opt_ref_content || '';
        var anchor = '';

        if (url.indexOf('#') != -1) {
            var splitUrl = url.split('#');
            url = splitUrl[0];
            anchor = splitUrl[1];
        }

        if (url.indexOf('?') < 0) {
            url = url + '?t_category=' + category + '&t_content=' + content + '&t_ref=' + ref + '&t_ref_content=' + ref_content;
        } else {
            url = url + '&t_category=' + category + '&t_content=' + content + '&t_ref=' + ref + '&t_ref_content=' + ref_content;
        }

        if (anchor != '') {
            url += '#' + anchor;
        }

        el.href = url;
    } catch (e) {
    }
}

// 
function s_trackApply(el, opt_ref, opt_ref_content, opt_ref_scnid, opt_ref_area, opt_etc) {

    try {
        var url = el.href;
        var ref = opt_ref || '';
        var ref_content = opt_ref_content || '';
        var ref_scnid = opt_ref_scnid || '';
        var ref_area = opt_ref_area || '';
        var anchor = '';

        var opt = opt_etc || {};

        if (url.indexOf('t_ref') > 0) return;

        if (url.indexOf('#') != -1) {
            var splitUrl = url.split('#');
            url = splitUrl[0];
            anchor = splitUrl[1];
        }

        if (url.indexOf('?') < 0) {
            url = url + '?t_ref=' + ref + '&t_ref_content=' + ref_content;
        } else {
            url = url + '&t_ref=' + ref + '&t_ref_content=' + ref_content;
        }

        if (!!ref_scnid) {
            url += '&t_ref_scnid=' + ref_scnid;
        }

        if (!!ref_area) {
            url += '&t_ref_area=' + ref_area;
        }

        if (anchor != '') {
            url += '#' + anchor;
        }

        if (opt.constructor === Object) {
            for (k in opt) {
                if (opt.hasOwnProperty(k)) {
                    url += '&' + k + '=' + opt[k];
                }
            }
        }

        el.href = url;

    } catch (e) {
    }
}
// 


// 


(function (i, s, o, g, r, a, m) {
    i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
        (i[r].q = i[r].q || []).push(arguments)
    }, i[r].l = 1 * new Date(); a = s.createElement(o),
        m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
})(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

ga('create', 'UA-12546634-1');
ga('require', 'GTM-KN35GK2');
ga('require', 'displayfeatures');
ga('require', 'linkid');
ga('send', 'pageview');

// 


function selectCity() {
    // 시 선택 셀렉트 박스에서 선택된 값을 가져옴
    var selectedCity = document.getElementById("work_location_city").value;
    var districtSelect = document.getElementById("work_location_district");
    var workLocationEtc = document.getElementById("work_location_etc");


    // 기존의 구 선택 셀렉트 박스 내용을 초기화
    districtSelect.innerHTML = '<option value="" disabled selected>구 선택</option>';

    // 선택된 도시에 따라 구 옵션을 추가
    if (selectedCity === "seoul") {
        var seoulDistricts = ["강남구", "강동구", "강북구", "강서구", "관악구", "광진구", "구로구", "금천구", "노원구", "도봉구", "동대문구", "동작구", "마포구", "서대문구", "서초구", "성동구", "성북구", "송파구", "양천구", "영등포구", "용산구", "은평구", "종로구", "중구", "중랑구"];
        seoulDistricts.forEach(function (district) {
            var option = document.createElement("option");
            option.value = district;
            option.text = district;
            districtSelect.appendChild(option);
        });
    }  else if (selectedCity === "busan") {
        var busanDistricts = ["중구", "서구", "동구", "영도구", "부산진구", "동래구", "남구", "북구", "해운대구", "사하구", "금정구", "강서구", "연제구", "수영구", "사상구"];
        busanDistricts.forEach(function (district) {
            var option = document.createElement("option");
            option.value = district;
            option.text = district;
            districtSelect.appendChild(option);
            
        });
    } else if (selectedCity === "daegu") {
        var daeguDistricts = ["중구", "동구", "서구", "남구", "북구", "수성구", "달서구", "달성군"];
        daeguDistricts.forEach(function (district) {
            var option = document.createElement("option");
            option.value = district;
            option.text = district;
            districtSelect.appendChild(option);
            
        });
    } else if (selectedCity === "gwangju") {
        var gwangjuDistricts = ["동구", "서구", "남구", "북구", "광산구"];
        gwangjuDistricts.forEach(function (district) {
            var option = document.createElement("option");
            option.value = district;
            option.text = district;
            districtSelect.appendChild(option);
            
        });
    } else if (selectedCity === "ulsan") {
        var ulsanDistricts = ["중구", "남구", "동구", "북구", "울주군"];
        ulsanDistricts.forEach(function (district) {
            var option = document.createElement("option");
            option.value = district;
            option.text = district;
            districtSelect.appendChild(option);
            
        });
    } else if (selectedCity === "incheon") {
        var incheonDistricts = ["중구", "동구", "남구", "연수구", "남동구", "부평구", "계양구", "서구", "강화군", "옹진군"];
        incheonDistricts.forEach(function (district) {
            var option = document.createElement("option");
            option.value = district;
            option.text = district;
            districtSelect.appendChild(option);
            
        });
    } else if (selectedCity === "daejeon") {
        var daejeonDistricts = ["동구", "중구", "서구", "유성구", "대덕구"];
        daejeonDistricts.forEach(function (district) {
            var option = document.createElement("option");
            option.value = district;
            option.text = district;
            districtSelect.appendChild(option);
            
        });
    } else if (selectedCity === "sejong") {
        var sejongDistricts = ["세종특별자치시"];
        sejongDistricts.forEach(function (district) {
            var option = document.createElement("option");
            option.value = district;
            option.text = district;
            districtSelect.appendChild(option);
            
        });
    } else if (selectedCity === "gyeonggi") {
        var gyeonggiDistricts = ["수원시", "성남시", "고양시", "용인시", "부천시", "안산시", "안양시", "남양주시", "화성시", "평택시", "의정부시", "시흥시", "파주시", "광명시", "김포시", "군포시", "광주시", "이천시", "양주시", "오산시", "구리시", "안성시", "포천시", "의왕시", "하남시", "여주시", "여주군", "양평군", "동두천시", "과천시", "가평군", "연천군"];
        gyeonggiDistricts.forEach(function (district) {
            var option = document.createElement("option");
            option.value = district;
            option.text = district;
            districtSelect.appendChild(option);
            
        });
    } else if (selectedCity === "gangwon") {
        var gangwonDistricts = ["춘천시", "원주시", "강릉시", "동해시", "태백시", "속초시", "삼척시", "홍천군", "횡성군", "영월군", "평창군", "정선군", "철원군", "화천군", "양구군", "인제군", "고성군", "양양군"];
        gangwonDistricts.forEach(function (district) {
            var option = document.createElement("option");
            option.value = district;
            option.text = district;
            districtSelect.appendChild(option);
            
        });
    }
     else if (selectedCity === "jeju") {
        var gangwonDistricts = ["제주시", "서귀포시"];
        gangwonDistricts.forEach(function (district) {
            var option = document.createElement("option");
            option.value = district;
            option.text = district;
            districtSelect.appendChild(option);
            
        });
    }
    // 기타창
    if (selectedCity === "etc") {
        workLocationEtc.style.display = "block";
    } else {
        workLocationEtc.style.display = "none";
    }

}

// 개인회원 / 기업회원 로그인
// tab_content
function showTab(tabName) {
    var i, tabContent, tabButtons;
    tabContent = document.getElementsByClassName("tab_content");
    for (i = 0; i < tabContent.length; i++) {
        tabContent[i].style.display = "none";
    }
    tabButtons = document.getElementsByClassName("inTab");
    for (i = 0; i < tabButtons.length; i++) {
        tabButtons[i].setAttribute("aria-selected", "false");
        tabButtons[i].classList.remove("active");
    }
    document.getElementById(tabName).style.display = "block";
    var selectedButton = document.querySelector("#" + tabName + " .inTab");
    selectedButton.setAttribute("aria-selected", "true");
    selectedButton.classList.add("active");
}


function checkOtherOption() {
    var selectedOption = document.getElementById("job_category").value;
    var otherJobCategoryInput = document.getElementById("other_job_category_input");
    var otherJobCategoryDiv = document.getElementById("other_job_category");

    if (selectedOption === "other") {
        otherJobCategoryDiv.style.display = "block";
        otherJobCategoryInput.required = true;
    } else {
        otherJobCategoryDiv.style.display = "none";
        otherJobCategoryInput.required = false;
    }
}
