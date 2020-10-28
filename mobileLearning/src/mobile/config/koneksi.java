package mobile.config;

public class koneksi {
	
	String urlMobileLearning= "http://10.0.2.2/mobile";
	public koneksi(String urlml){
		urlMobileLearning = urlMobileLearning+urlml;
	}
	public String getUrl(){
		
		return urlMobileLearning;
	}
	
	
}
