// 파일이름: BoardDto.java
// 날짜: 2023-06-23
// 이름: 박지인
// 파일 설명 요약: 이 코드는 스프링 MVC에서 게시판 정보를 담는 BoardDto 클래스입니다.

package com.java.dto;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component // 스프링 컨텍스트에서 해당 클래스를 빈으로 등록합니다.
@AllArgsConstructor // 모든 필드를 매개변수로 받는 생성자를 자동으로 생성합니다.
@NoArgsConstructor // 기본 생성자를 자동으로 생성합니다.
@Data // 필드에 대한 getter, setter, toString, equals, hashCode 메서드를 자동으로 생성합니다.

public class BoardDto {

	private int bno; // 게시글 번호를 나타내는 변수입니다.
	private String btitle; // 게시글 제목을 나타내는 변수입니다.

}
