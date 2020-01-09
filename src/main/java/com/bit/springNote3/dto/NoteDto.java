package com.bit.springNote3.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor  // 모든 필드들을 parameter로 받아 한번에 set 해주는 생성자 생성
@NoArgsConstructor   // parameter가 없는 생성자 생성 ( 해당 클래스의 객체 생성시 사용 )
public class NoteDto {
	
	private int id;
	private String writer;
	private String content;

}
