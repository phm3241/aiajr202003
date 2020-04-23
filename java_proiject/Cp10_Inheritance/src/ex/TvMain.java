package ex;

public class TvMain {

	public static void main(String[] args) {
		
		Tv tv1=new Tv();
		
//		IpTv itv=(IpTv) tv1;  // 이렇게 하면 안된다
		
		
		
		CaptionTv cTv1=new CaptionTv();
		
		Tv t= cTv1; 
		// 명시적으로 형변환하지 않아도. 자동으로 형변환이 일어나 오류나지 않는다.
		// cTv1이 CaptionTv를 참조하고 있는데, Tv t가 참조하게 되면, 
		// 자동으로 CaptionTv내 멤버중 Tv클래스의 멤버와 일치하는 것만 사용할 수 있게 해준다.
		
		
		
		
		// CaptionTv 인스턴스 중 Tv멤버에 있는 것만 쓸 수 있다.
		// CaptionTv에만 있는 멤버는 쓸 수 없다. 
		Tv tv2=new CaptionTv();
		
//		IpTv itv3=(IpTv)tv2; 
		// 이렇게 하면 안된다? 여기 있는 tv2는 CaptionTv를 받고 있기 떄문에
		// IpTv로 받기 위해 형변환해도 안된다!
//		tv1.instanceof.IpTv; 형변환해도 되는지 확인하는 메서드.로 확인한다. 
		
		
		
//		tv2.caption();
		// tv2.caption();를 하면 오류. 
		// 아래 두 방법(형변환)으로 가능하도록 수정가능
		CaptionTv ctv2=(CaptionTv)tv2;
		((CaptionTv) tv2).caption();
		
		ctv2.caption();  // 형변환하고나서 변수만 바꿔서 사용가능.
		
		
//		System.out.println(tv2.power);
	    tv2.power();
//		System.out.println(tv2.power);
		
		// Tv타입에는 CaptionTv에 있었던 멤버를 쓸수없다. 
//		System.out.println(tv2.text);
		
		// 원래는 CaptionTv 인스턴스 중 Tv멤버에 있는 것만 쓸 수 있어서
		// CaptionTv에만 있었던 display() 메서드는 못쓰는데,
		// 오버라이딩을 통해서 CaptionTv에 있던 멤버를 쓸 수 있다.
		// captionTv에서 오버라이딩 한 메서드가 들어온다. 
		tv2.display();
		
		
		
		
		
		
		
		
		Tv tv3=new IpTv();
		Tv tv4=new SmartTv();
		
		tv3.display();
		tv4.display();
		
		
		// 위에서 했던 다양한 Tv들을 배열로 만들어서 
		// 한번에 묶어두고 관리할 수 있다. 
		// 배열 요소는 각각 변수이다. 
		// 서로다른 인스턴스들을 배열로 묶어서 일괄처리가능.(다형성)
		
		Tv[] tvs=new Tv[4];
		
		tvs[0]=new Tv();
		tvs[1]=new CaptionTv();
		tvs[3]=new IpTv();
		tvs[2]=new SmartTv();
		
		// 한번에 티비 재생하기! 이렇게 사용가능!
		for(int i=0; i<tvs.length; i++) {
			tvs[i].display(); 
		}
		
		
	
	}

}
