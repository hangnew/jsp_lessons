package com.mega.mvc06;

public class Problem5Main {
	public static void main(String[] args) {
		Problem5 error = new Problem5();
		try {
			error.call();
		} catch (Exception e) {
			System.out.println("호출한 곳에서 처리");
		}
		System.out.println("에러 발생 후 실행");
	}
}
