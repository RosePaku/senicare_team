//// 파일이름: BServiceImpl2.java
//// 날짜: 2023-06-23
//// 이름: 박지인
//// 파일 설명 요약: 이 코드는 com.java.service 패키지에 속하는 BService 인터페이스를 구현하는 BServiceImpl2 클래스입니다.
//package com.java.service;
//
//import org.springframework.stereotype.Service;
//
//@Service // 해당 클래스가 서비스 역할을 수행하는 컴포넌트임을 나타내는 어노테이션입니다.
//public class BServiceImpl2 implements BService {
//
//    @Override
//    public int add() {
//        return 10 + 10; // 10과 10을 더한 값을 반환합니다.
//    }
//}

package com.java.service;

import org.springframework.stereotype.Service;

public class BServiceImpl2 implements BService {

	@Override
	public int add() {
		return 10+10;
	}

}
