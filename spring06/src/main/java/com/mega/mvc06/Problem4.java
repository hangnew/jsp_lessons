package com.mega.mvc06;

public class Problem4 {
	public void call() {
		try {
			System.out.println(3 / 0);
		} catch (Exception e) {
			System.out.println("예외 처리");
		}
	}
}
