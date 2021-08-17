package mega;

import java.net.Socket;

public class TCPClient {

	public static void main(String[] args) throws Exception {
		// 클라이언트 객체 생성
		
		for (int i = 0; i < 1000; i++) {
			Socket client = new Socket("localhost", 9100);
			System.out.println("client request -- " + i);
		}
		
		
		
	} // main
	
} // class
