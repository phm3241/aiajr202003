package ex_1;

public class Test_12_string {

	public static void main(String[] args) {
		
		double dd = 1d;
		String a = 7 + " ";     // "7" + " " >> "7 "
		
		String b = " " + 7;     // " " + "7" >> " 7"  
		
		String c = 7 + "";      // "7" + "" >> "7 " 
		
		String d = "" + 7;      // "" + "7" >> "7"
		
		String e = "" + "";     // "" + "" >> ""			
		
		String f = 7 + 7 + "";  // 7 + 7 = 14 >> "14" + "" >> "14" 
		
		String g = "" + 7 + 7;  // "" + "7" + 7 >> "7" + "7" >> "77"  
		
		
		System.out.println(a);
		System.out.println(b);
		System.out.println(c);
		System.out.println(d);
		System.out.println(e);
		System.out.println(f);
		System.out.println(g);

	}

}
