package app.test;

public class test {
	public static void main(String[] args) {
		// 데이터베이스 b_beam 생성
		// src/webapp/source/sql/fourman_MySQL에서 테이블 member생성
		// 그 후 클래스 콘솔 실행
		dbconntest dbcon = new dbconntest();
		dbcon.memberInsert();
		// ignore 실험
	}

}
