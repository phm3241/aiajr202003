package ex_200423;

public class InstancoOf {
	public static void main(String[] args) {

		Box box1 = new Box();
		PaperBox box2 = new PaperBox();
		GoldPaperBox box3 = new GoldPaperBox();

		wrapBox(box1);
		wrapBox(box2);
		wrapBox(box3);
	}

	// 원래 이 메서드를 아래 public static void wrapBox(Box box) {}로 변경하기
//	class InstanceOf {
//		public static void wrapBox(Box box) {
//		if (box instanceof GoldPaperBox)
//			((GoldPaperBox) box).goldWrap();
//		else if (box instanceof PaperBox)
//			((PaperBox) box).paperWrap();
//		else
//			box.simpleWrap();

	
	public static void wrapBox(Box box) {

		box.simpleWrap();

		}
}