package com.mega.mvc05.static1;

public class Employee {
	String name;
	String gender;
	int age;
	static int sum;
	static int count;
	
	public Employee(String name, String gender, int age) {
		this.name = name;
		this.gender = gender;
		this.age = age;
		count++;
		sum += age;
	}
	@Override
	public String toString() {
		return "직원 이름: " + name + ", 성별: " + gender + ", 나이: " + age;
	}
	
	
}
