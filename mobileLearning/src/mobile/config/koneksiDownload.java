package mobile.config;

public class koneksiDownload {
	
	String urlMobileLearning= "http://10.0.2.2/";
	public koneksiDownload(String urlml){
		urlMobileLearning = urlMobileLearning+urlml;
	}
	public String getUrl(){
		
		return urlMobileLearning;
	}
	
	
}

