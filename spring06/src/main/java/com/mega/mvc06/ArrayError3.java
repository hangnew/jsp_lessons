package com.mega.mvc06;

public class ArrayError3 {

	public static void main(String[] args) {
		ArrayError2 error = new ArrayError2();
		try {
			error.array();
		} catch (Exception e) {
			System.out.println("메서드에 에러가 있엉");
		}
	}

}
