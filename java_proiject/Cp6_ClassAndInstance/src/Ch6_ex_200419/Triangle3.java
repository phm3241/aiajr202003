package Ch6_ex_200419;

/* 문제1.
밑변과 높이 정보를 지정할 수 있는 Triangle 클래스를 정의하자.
끝으로 밑변과 높이 정보를 변경시킬 수 있는 메서드와 삼각형의 넓이를 계산해서 반환하는 메서드도 함께 정의하자.

작성자 : 박혜미
작성일 :  2020.04.19
작성내용 : 삼각형 넓이 문제, 다시 풀어보기 
*/

public class Triangle3{
	
	// 변수: 밑변, 높이
	int width;
	int height;
	
	// 생성자: 매개변수로 밑변, 높이 받아서 인스턴스 초기화시 정보반영
	// 같은 클래스 안에 있는 멤버변수이기 때문에 바로 호출가능
	Triangle3(int w, int h){
		width=w;
		height=h;
	}
	
	// 메서드: 삼각형 넓이계산, 결과반환, 매개변수x
	// 계산결과가 실수형으로 나올 수 있기 때문에 float타입으로 메서드 생성
	// f 접미사 꼭 붙여주기
	float area(){
		float result=width*height/2f;
		return result;
	}


public static void main(String[] args) {
	// 객체 생성
	Triangle3 t=new Triangle3(3,5);
	
	// 참조변수로 속성과 넓이계산결과 호출하여 출력
	System.out.println("밑변이 "+t.width+"이고, 높이가 "+t.height+"인 삼각형의 넓이는 "+t.area()+"입니다.");
	
	/*
	[실행결과]
	밑변이 3이고, 높이가 5인 삼각형의 넓이는 7.5입니다.	
	*/
	
	}

}
