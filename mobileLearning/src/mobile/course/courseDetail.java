package mobile.course;

import mobile.config.koneksi;
import mobile.kelas.rss.*;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

import com.mobile.learning.R;

import android.app.ListActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;

public class courseDetail extends ListActivity {
	public koneksi linkurl;
	String SERVER_URL;
	private RSSFeed myRssFeed = null;
		
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.mainrss);
        Bundle bundle = this.getIntent().getExtras();
	      
        String param1 = bundle.getString("keyIdc");
        String param2 = bundle.getString("keyUserId");
	
		try {
			linkurl = new koneksi("/courseTopik.php?idc="+param1+"&idu="+param2);
			SERVER_URL = linkurl.getUrl();
			URL rssUrl = new URL(SERVER_URL);
			SAXParserFactory mySAXParserFactory = SAXParserFactory.newInstance();
			SAXParser mySAXParser = mySAXParserFactory.newSAXParser();
			XMLReader myXMLReader = mySAXParser.getXMLReader();
			RSSHandler myRSSHandler = new RSSHandler();
			myXMLReader.setContentHandler(myRSSHandler);
			InputSource myInputSource = new InputSource(rssUrl.openStream());
			myXMLReader.parse(myInputSource);
			
			myRssFeed = myRSSHandler.getFeed();
			
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		if (myRssFeed!=null)
		{
			TextView feedTitle = (TextView)findViewById(R.id.feedtitle);
			TextView feedDescribtion = (TextView)findViewById(R.id.feeddescribtion);
			TextView feedPubdate = (TextView)findViewById(R.id.feedpubdate);
			TextView feedLink = (TextView)findViewById(R.id.feedlink);
			feedTitle.setText(myRssFeed.getTitle());
			feedDescribtion.setText(myRssFeed.getDescription());
			feedPubdate.setText(myRssFeed.getPubdate());
			feedLink.setText(myRssFeed.getLink());
			
	ArrayAdapter<RSSItem> adapter = new	ArrayAdapter<RSSItem>
	(this, android.R.layout.simple_list_item_1,myRssFeed.getList());
    setListAdapter(adapter);
			
		}
    }
   

	protected void onListItemClick(ListView l, View v, int position, long id) {
	 
		Intent intent = new Intent(this,courseDetailJs.class);
		Bundle bundle = new Bundle();
		bundle.putString("keyCourseName", myRssFeed.getItem(position).getTitle());
		bundle.putString("keyUserId", myRssFeed.getItem(position).getDescription());
		bundle.putString("keyResourceId", myRssFeed.getItem(position).getLink());
		bundle.putString("keyCourseId", myRssFeed.getItem(position).getPubdate());
		intent.putExtras(bundle);
        startActivity(intent);
	}
    
    
}


