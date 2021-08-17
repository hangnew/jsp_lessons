package shop.ui;

import java.util.Scanner;

import shop.db.게시판DAO;
import shop.dto.게시판Bag;

public class 게시판UI {

	public static void main(String[] args) {
		
//		1. 게시판 정보 입력받기
		Scanner sc = new Scanner(System.in);
		System.out.print("id입력: ");
		String id = sc.next();
		System.out.print("제목 입력: ");
		String title = sc.next();
		System.out.print("내용 입력: ");
		String content = sc.next();
		System.out.print("작성자 입력: ");
		String writer = sc.next();
		sc.close();
		
//		2. 가방을 만들어서 입력받은 데이터 넣기
		게시판Bag bag = new 게시판Bag();
		bag.setId(id);
		bag.setTitle(title);
		bag.setContent(content);
		bag.setWriter(writer);
		System.out.println("*** 가방에 데이터 넣기 성공 ***");
		
//		3. dao를 만들어서 dao에게 create메서드 호출 (가방을 전달)
		게시판DAO dao = new 게시판DAO();
		dao.create(bag);
		System.out.println("*** dao에 가방 전달 성공 ***");
	} // main

}
