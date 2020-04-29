package ex;

public class AutoBoxingUnBoxing {

	public static void main(String[] args) {
		
		
		
		Integer iValue=10;   // new Integer(10);와 같다. Auto Boxing 자돋으로 인스턴스 생성
		Double dValue=3.14;  // new Double(3.14);와 같다. Auto Boxing 자돋으로 인스턴스 생성
		// new Integer(10) 형태로 쓰지 않고 숫자만 쓰더라도, 자동으로 인스턴스 생성이 가능하다. 
		
		
		System.out.println(iValue.toString());
		System.out.println(dValue.toString());
		
		
		int num1=iValue;       // iValu가 인스턴스를 참조하고 있는 참조변수 일지라도 Auto UnBoxing되었다. 
		double num2=dValue;    // dValu가 인스턴스를 참조하고 있는 참조변수 일지라도 Auto UnBoxing되었다. 
		
		
		
		System.out.println(num1);
		System.out.println(num2);
		
		
	}

}
