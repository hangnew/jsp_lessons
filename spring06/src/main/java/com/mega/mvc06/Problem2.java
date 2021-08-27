package com.mega.mvc06;

public class Problem2 {

	public static void main(String[] args) {
		System.out.println("1. 프린트");
		try {
			System.out.println("2. 문제 발생" + 10 / 0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("3. 프린트");
	}

}
