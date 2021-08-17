package shop.dto;

public class DTOTest2 {
	public static void main(String[] args) {
		게시판Bag bag1 = new 게시판Bag();
		bag1.setId("아이디1");
		bag1.setTitle("제목1");
		bag1.setContent("내용1");
		bag1.setWriter("글쓴이1");
		System.out.println(bag1);
		
		게시판Bag bag2 = new 게시판Bag();
		bag2.setId("아이디2");
		bag2.setTitle("제목2");
		bag2.setContent("내용2");
		bag2.setWriter("글쓴이2");
		System.out.println(bag2);
	}
}
