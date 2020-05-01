package ex;

public class Data {
		
		Object value;
		Object nextValue;
		
		Data(Object obj, Object nextnextObj){
			this.nextValue=obj;
			this.nextValue=nextnextObj;
		}
		Object getValue() {
			return value;
		}
		
		void setNextValue(Object nextValue) {
			this.nextValue=nextValue;
		}
		
	}

