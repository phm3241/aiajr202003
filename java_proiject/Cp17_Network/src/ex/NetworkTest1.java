package ex;

import java.net.MalformedURLException;
import java.net.URL;

public class NetworkTest1 {

	public static void main(String[] args) throws Exception {
 
		URL url = new URL("https://www.google.com/search?sxsrf=ALeKk01Rj4x12YdoU9XNVv9bwZitNDgZ-Q%3A1589165122688&ei=Qry4XtPIKYX_wAPm6b_ADA&q=java&oq=java&gs_lcp=CgZwc3ktYWIQAzIECCMQJzIECCMQJzIECCMQJzIECAAQQzIECAAQQzIECAAQQzIECAAQQzICCAAyAggAMgIIADoHCCMQ6gIQJ1CriQNY0ZIDYL6UA2gBcAB4AIABgAGIAZMDkgEDMy4xmAEAoAEBqgEHZ3dzLXdperABCg&sclient=psy-ab&ved=0ahUKEwjT8YG15arpAhWFP3AKHeb0D8gQ4dUDCAw&uact=5");
		System.out.println("url.getAuthority():"+ url.getAuthority());
//		System.out.println("url.getContent():"+ url.getContent());
		System.out.println("url.getDefaultPort():"+ url.getDefaultPort());
		System.out.println("url.getPort():"+ url.getPort());
		System.out.println("url.getFile():"+ url.getFile());
		System.out.println("url.getHost():"+ url.getHost());
		System.out.println("url.getPath():"+ url.getPath());
		System.out.println("url.getProtocol():"+ url.getProtocol());
		System.out.println("url.getQuery():"+ url.getQuery());
		System.out.println("url.getRef():"+ url.getRef());
		System.out.println("url.getUserInfo():"+ url.getUserInfo());
		System.out.println("url.toExternalForm():"+ url.toExternalForm());
		System.out.println("url.toURI():"+ url.toURI());
		
		
		}
}
