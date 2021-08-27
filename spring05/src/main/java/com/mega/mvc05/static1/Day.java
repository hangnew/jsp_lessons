package com.mega.mvc05.static1;

public class Day {
	String doing;
	int time;
	String location;
	static int count;
	static int sum;

	public Day(String doing, int time, String location) {
		this.doing = doing;
		this.time = time;
		this.location = location;
		count++;
		sum += time;
	}

//	public static String getAvg(){
//		return doing;
//	}
	
	public static int getAvg() {
		return sum / count;
	}

	
	@Override
	public String toString() {
		return "Day [doing=" + doing + ", time=" + time + ", location=" + location + "]";
	}

}
