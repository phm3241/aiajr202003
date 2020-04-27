package ex;

//public class PersonalNumberStorageImpl extends PersonalNumberStorage {  //추상클래스를 상속할 때,
public class PersonalNumberStorageImpl implements PersonalNumber{ 

	PersonalNumInfo[] perArr;
	int numOfPerInfo;

	public PersonalNumberStorageImpl(int num) {
		perArr = new PersonalNumInfo[num];
		numOfPerInfo = 0;
	}

	public void addPersonalInfo(String name, String perNum) {
		perArr[numOfPerInfo] = new PersonalNumInfo(name, perNum);
		numOfPerInfo++;
	}

	public String searchName(String perNum){
		for(int i=0; i<numOfPerInfo; i++){
			if(perNum.compareTo(perArr[i].getNumber())==0) 
			return perArr[i].getName();
			} return null;
	
	}
}
