package com.mega.mvc05.static1;

import javax.swing.JOptionPane;

public class UseofStaticMethod {

	public static void main(String[] args) {
		String age = JOptionPane.showInputDialog("please fill in your age");
		int age2 = Integer.parseInt(age);
		JOptionPane.showMessageDialog(null, age2+1 + "yr");
		System.exit(1);
	}

}
