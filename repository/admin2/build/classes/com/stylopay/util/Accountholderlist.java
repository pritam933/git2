package com.stylopay.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.json.JSONException;
//import org.json.JSONObject;
//import org.json.JSONObject;

public class Accountholderlist {
	
	Accountholderlist  Accountholdersbean;
	
	String Admin_Agent_code = null;
	String Admin_Sub_Agent_code = null;
//	String cardNum = null;
	
	String jsonResponse = null;
	String response = null;
	
	public String getcardholdersAPI( String admin_Agent_code, String admin_Sub_Agent_code) throws JSONException{
		
		this.Admin_Agent_code = admin_Agent_code;
		this.Admin_Sub_Agent_code = admin_Sub_Agent_code;		
		
		
		try {

			URL url = new URL("http://developer.staging.stylopay.com/StyloDemoWalletService/API/AdminFunc/GetCardHolders");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Type", "application/json");
			conn.setRequestProperty("Authorization", "asdfghjklLKJHGFDSA");

			String input = "{\"Application_ID\":\"1\", \"Admin_Agent_code\":\"" + admin_Agent_code + "\", \"Admin_Sub_Agent_code\":\"" + admin_Sub_Agent_code + "\"}";
						
			
			System.out.println("Getcardholders API Json input is: " + input);

			OutputStream os = conn.getOutputStream();
			os.write(input.getBytes());
			os.flush();
			

			BufferedReader br = new BufferedReader(new InputStreamReader(
					(conn.getInputStream())));
			

			System.out.println("Getcardholders API Json Response is - ");
			while ((jsonResponse = br.readLine())!= null) {	
				System.out.println(jsonResponse);
				
				response = jsonResponse;	

				
				
//				JSONObject jsonreponse = new JSONObject(response);
//		
//			System.out.println(((JSONObject)jsonreponse.get("Status")).get("Code").toString().equals("0"));
//			if (((JSONObject)jsonreponse.get("Status")).get("Code").toString().equals("0")  &&  ((JSONObject)jsonreponse.get("UserData")).get("User_Agent_code").toString().equals("192")) {
//				
//		
//				
//				return ("accountholders");}
//				else {
//					return null;
//				}
//
			}
			
			
			//conn.disconnect();

		  } catch (MalformedURLException e) {

			e.printStackTrace();

		  } catch (IOException e) {

			e.printStackTrace();

		 }			
		
		
		
		return response;
	}
	
}
