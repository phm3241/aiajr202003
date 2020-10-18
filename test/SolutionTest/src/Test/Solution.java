package Test;

import java.text.ParseException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Solution {
	String p = "PM 11:59:59";
	String n = "1";

	public String solution(String p, int n) throws ParseException {
		// String p 는 현재시간. 오전오후 am. pm으로 표시. 12시간 기준 표시
		// n은 n초 후

		int pp = 0;
		String answer = null;
		int num = 0;

		// 만약에 pm이면, 12 더하기
		if (p.substring(0, 0) == "P") {
			num = 120000;
		}
		;

		// 특수문자 제거 후, 숫자로 변경하기
		pp = Integer.parseInt(p.replace(":", "").substring(3));
		System.out.println(pp);

		// 숫자에 더한 후, 문자열로 변경하기
		String time = Integer.toString(pp + num + n);
		System.out.println(time);

		StringBuffer b = new StringBuffer(time);
        b.insert(2, ':');
        b.insert(4, ':');

		// SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
		// Date nowDate = new Date();
		// Date date = sdf.parse(time);
		// answer = sdf.parse(time);

		// answer = LocalDateTime.parse(time,
		// DateTimeFormatter.ofPattern("HH:mm:ss")).toString();

		// answer = sdf.format(date);

		return answer;
	};
};
