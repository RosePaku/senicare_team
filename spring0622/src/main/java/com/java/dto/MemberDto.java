// 파일이름: MemberDto.java
// 날짜: 2023-06-23
// 이름: 박지인
// 파일 설명 요약: 이 코드는 회원 정보를 담는 MemberDto 클래스입니다.

package com.java.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor // 모든 필드를 매개변수로 받는 생성자를 자동으로 생성합니다.
@NoArgsConstructor // 기본 생성자를 자동으로 생성합니다.
@Data // 필드에 대한 getter, setter, toString, equals, hashCode 메서드를 자동으로 생성합니다.

public class MemberDto {
    private String id; // 회원 아이디를 나타내는 변수입니다.
    private String pw; // 회원 비밀번호를 나타내는 변수입니다.
    private String name; // 회원 이름을 나타내는 변수입니다.
    private String gender; // 회원 성별을 나타내는 변수입니다.
    private String hobby; // 회원 취미를 나타내는 변수입니다.
    private String job; // 회원 직업을 나타내는 변수입니다.
}
