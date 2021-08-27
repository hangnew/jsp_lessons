package com.mega.mvc05.static1;

public class Employ {

	public static void main(String[] args) {
		Employee staff1 = new Employee("홍길동", "남", 25);
		Employee staff2 = new Employee("김길동", "여", 26);
		Employee staff3 = new Employee("송길동", "남", 27);

		System.out.println(staff1);
		System.out.println(staff2);
		System.out.println(staff3);

		System.out.println("직원 수: " + Employee.count + "명");
		System.out.println("나이 평균: " + (Employee.sum / Employee.count) + "세");
	}

}
