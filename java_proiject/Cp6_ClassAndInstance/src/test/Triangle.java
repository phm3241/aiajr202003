//문제1.
//밑변과 높이 정보를 지정할 수 있는 Triangle 클래스를 정의하자.
//끝으로 밑변과 높이 정보를 변경시킬 수 있는 메서드와 삼각형의 넓이를 계산해서 반환하는 메서드도 함께 정의하자.

package test;

public class Triangle {
	
	// 변수 : 밑변, 높이
	int width;     // 밑변의 데이터
	int height;    // 높이의 데이터

	
	// 메서드는, 반환이 필요한지, 매개변수가 필요한지 확인!
	// 메서드1 : 밑변과 높이 데이터를 변경. 데이터를 받아야함, 반환안함. 
	void setData(int w, int h) {   // 지역변수
		width=w;    // 같은 클래스 안에 있는 멤버변수이기 때문에 바로 호출가능
		height=h;   // 같은 클래스 안에 있는 멤버변수이기 때문에 바로 호출가능
	}
	
	// 메서드2 : 삼각형의 넓이를 구해서 반환. 데이터 안 받아도 됨. 
	float area() {
		
		float result=width*height/2f;   // 접미사 붙여줘야 나누었을 때 소숫점표현 결과까지 잘 나옴. 
		return result;
	}
	
public static void main (String[] args) {
	
	// 삼각형 객체 생성 
	Triangle t=new Triangle();
	
	// 데이터 설정, 객체 메서드 호출.
	t.setData(5, 3);
	System.out.println("삼각형의 밑변: "+t.width+", 높이: "+t.height);
	
	// 넓이를 구하는 메서드 호출.
	System.out.println("삼각형의 넓이는 "+t.area()+"입니다.");
	
}
	
	
	
	
	
	

}
