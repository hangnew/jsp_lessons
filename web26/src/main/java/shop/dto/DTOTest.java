package shop.dto;

public class DTOTest {

	public static void main(String[] args) {
		회원Bag bag = new 회원Bag();
//		bag.id = "apple";
//		bag.pw = "apple";
//		bag.name = "apple";
//		bag.tel = "apple";
		bag.setId("apple");
		bag.setPw("apple");
		bag.setName("apple");
		bag.setTel("apple");
		System.out.println(bag);

		회원Bag bag2 = new 회원Bag();
//		bag2.id = "melon";
//		bag2.pw = "melon";
//		bag2.name = "melon";
//		bag2.tel = "melon";
		System.out.println(bag2);
	}

}
