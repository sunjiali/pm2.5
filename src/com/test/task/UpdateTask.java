package com.test.task;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.TimerTask;

import javax.servlet.ServletContext;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;


public class UpdateTask extends TimerTask {
	private static boolean isRunning = false;
	private ServletContext context = null;

	public UpdateTask() {    
	           
		     }  


	@Override
	public void run() {

		
	}
	
}
