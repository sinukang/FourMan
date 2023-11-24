package app.test;

import java.util.ArrayList;

import app.dao.ReviewDao;

public class rvtest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ReviewDao rd = new ReviewDao();
		ArrayList<String> ary = new ArrayList<>();
		ary.add("1.png");
		ary.add("2.png");
		ary.add("3.png");
		ary.add("4.png");
		System.out.println(rd.insertrvgallery(12, ary));
	}

}
