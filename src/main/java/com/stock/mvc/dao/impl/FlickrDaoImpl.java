package com.stock.mvc.dao.impl;

import java.io.InputStream;

import javax.swing.JOptionPane;

import org.scribe.model.Token;
import org.scribe.model.Verifier;

import com.stock.mvc.dao.IFlickrDao;
import com.flickr4java.flickr.Flickr;
import com.flickr4java.flickr.FlickrException;
import com.flickr4java.flickr.REST;
import com.flickr4java.flickr.RequestContext;
import com.flickr4java.flickr.auth.Auth;
import com.flickr4java.flickr.auth.AuthInterface;
import com.flickr4java.flickr.auth.Permission;
import com.flickr4java.flickr.uploader.UploadMetaData;



public class FlickrDaoImpl implements IFlickrDao{

	
	private Flickr flickr;
	private UploadMetaData uploadMetaData = new UploadMetaData();
	private String apiKey = "3cad9a7fb6beb3d76a388a1656cea3b9";
	private String sharedSecret = "f1584b1a21bff135";
	
	
	
	private void connect() {
		flickr = new Flickr(apiKey, sharedSecret, new REST());
		Auth auth = new Auth();
		auth.setPermission(Permission.READ);
		auth.setToken("3cad9a7fb6beb3d76a388a1656cea3b9");//cherche token ???????
		auth.setTokenSecret("f1584b1a21bff135");
		RequestContext requestContext = RequestContext.getRequestContext();
		requestContext.setAuth(auth);
		flickr.setAuth(auth);
	}
	
	
	@Override
	public String savePhoto(InputStream photo, String title)  throws Exception{
		connect();
		uploadMetaData.setTitle(title);
		String photoId = flickr.getUploader().upload(photo, uploadMetaData);
		return flickr.getPhotosInterface().getPhoto(photoId).getMedium640Url();
	}
	
	
	
	public void auth() {
		flickr = new Flickr(apiKey, sharedSecret, new REST());
		
		AuthInterface authInterface = flickr.getAuthInterface();
		
		Token token = authInterface.getRequestToken();
		System.out.println("token :" + token);
		
		String url= authInterface.getAuthorizationUrl(token, Permission.DELETE);
		System.out.println("Follow this URL to authorize yourself on Flickr");
		System.out.println(url);
		System.out.println("Paste in the token it gives you");
		System.out.println(">>");
		
		String tokenKey = JOptionPane.showInputDialog(null);
		
		Token requestToken = authInterface.getAccessToken(token, new Verifier(tokenKey));
		
		System.out.println("Authentication sucess");
		
		Auth auth = null;
		
		try {
			auth = authInterface.checkToken(requestToken);
		}catch (FlickrException e) {
			e.printStackTrace();
		}
	} 

}
