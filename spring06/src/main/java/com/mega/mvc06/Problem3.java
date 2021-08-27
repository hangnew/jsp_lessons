package com.mega.mvc06;

import java.io.FileWriter;
import java.io.IOException;

public class Problem3 {

	public static void main(String[] args) {
		System.out.println("1. 프린트");
		try {
//			System.out.println("2. 문제 발생" + 10 / 0);
			FileWriter file = new FileWriter("/test.txt");
			file.write("첫줄\n");
			file.write("둘째줄\n");
			file.close();
		} catch (ArithmeticException e) {
			e.printStackTrace();
			System.out.println("산술 에러 처리");
		} catch (IOException e) {
			System.out.println("FileWriter 에러 처리");
		} catch (Exception e) {
			System.out.println("모든 에러 처리");
		} finally {
			
		}
		System.out.println("3. 프린트");
	}

}
