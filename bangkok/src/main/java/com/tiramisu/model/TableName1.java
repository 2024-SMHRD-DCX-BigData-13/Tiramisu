package com.tiramisu.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@RequiredArgsConstructor
@Data // 만능
public class TableName1 {
	@NonNull
	private int num ; // 임시 틀 수정 필요(DB 테이블의 컬럼명과 같게)
	
	private int num1 ;
}
