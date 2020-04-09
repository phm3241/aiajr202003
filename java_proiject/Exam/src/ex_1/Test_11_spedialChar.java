// 이해가 어려움.. 좀 더 공부필요....

package ex_1;  

public class Test_11_spedialChar {

	public static void main(String[] args) {
		
		char single = '\'';
		// '를 대입하기 위해 \(공백)을 넣어준다. 
		// ' + \' + '
		// char single = ''';  이렇게 하면 에러발생..
		
		
		String dblQuote = "\"Hello\"";		
		// 겹따옴표를 출력하려면 이렇게 한다. 인용구 등 사용할때
		// " + \"Hello\" + "
		// String dblQuote = "\"Hello"\";	
		
		String root = "c:\\";
		// " + c:\ + \"
		
		
		System.out.println(single);
		System.out.println(dblQuote);		
		System.out.println(root);
	}

}
