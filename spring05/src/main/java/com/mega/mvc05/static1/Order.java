package com.mega.mvc05.static1;

import javax.swing.JFrame;
import javax.swing.JButton;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.ImageIcon;

public class Order {
	private static JTextField t1;
	static int sum;
	final static int PRICE = 5000;

	public static void main(String[] args) {
		JFrame f = new JFrame();
		f.setSize(500, 500);
		f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		f.getContentPane().setLayout(null);
		
		JLabel l1 = new JLabel("개수 :");
		l1.setFont(new Font("Lucida Grande", Font.PLAIN, 20));
		l1.setBounds(234, 68, 61, 16);
		f.getContentPane().add(l1);
		
		t1 = new JTextField();
		t1.setFont(new Font("Lucida Grande", Font.PLAIN, 20));
		t1.setBounds(307, 66, 130, 26);
		f.getContentPane().add(t1);
		t1.setColumns(10);
		
		JLabel l2 = new JLabel("");
		l2.setIcon(new ImageIcon("01.png"));
		l2.setBounds(22, 145, 450, 280);
		f.getContentPane().add(l2);
		
		JLabel l3 = new JLabel("결제금액: 0원");
		l3.setFont(new Font("Lucida Grande", Font.PLAIN, 20));
		l3.setBounds(49, 437, 388, 26);
		f.getContentPane().add(l3);
		
		JButton b1 = new JButton("짜장");
		b1.setFont(new Font("Lucida Grande", Font.PLAIN, 20));
		b1.setBounds(49, 22, 117, 29);
		b1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				sum++;
				t1.setText(sum+"개");
				l3.setText("결제금액: " + (sum * PRICE) + "원");
				l2.setIcon(new ImageIcon("01.png"));
			}
		});
		f.getContentPane().add(b1);
		
		JButton b2 = new JButton("짬뽕");
		b2.setFont(new Font("Lucida Grande", Font.PLAIN, 20));
		b2.setBounds(49, 63, 117, 29);
		b2.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				sum++;
				t1.setText(sum+"개");
				l3.setText("결제금액: " + (sum * PRICE) + "원");
				l2.setIcon(new ImageIcon("02.png"));
			}
		});
		f.getContentPane().add(b2);
		
		JButton b3 = new JButton("우동");
		b3.setFont(new Font("Lucida Grande", Font.PLAIN, 20));
		b3.setBounds(49, 104, 117, 29);
		f.getContentPane().add(b3);
		b3.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				sum++;
				t1.setText(sum+"개");
				l3.setText("결제금액: " + (sum * PRICE) + "원");
				l2.setIcon(new ImageIcon("03.png"));
			}
		});
		f.setVisible(true);
	}
}
