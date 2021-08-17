package mega;

import java.net.ServerSocket;

public class TCPServer {

	public static void main(String[] args) throws Exception {
		// 서버 객체 생성
		ServerSocket server = new ServerSocket(9100);
		System.out.println("server start");
		
		int count = 0;
		while (true) {
			System.out.println("waiting for request");
			server.accept();
			System.out.println("client accepted..." + ++count);
			if (count == 1000) {
				break;
			}
		} // while
		System.out.println("server closed");
		server.close();
		
	} // main
	
} // class
