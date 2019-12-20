package com.stylopay.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.web.servlet.ModelAndView;

public class Loginutil {

	String email = null;
	String password = null;
	
	String jsonResponse = null;
	String response = null;
	
	public String login (String email,String password) throws JSONException {
		
		this.email = email;
		this.password = password;
		
		try {

			URL url = new URL("http://developer.staging.stylopay.com/StyloDemoWalletService/API/CommonServices/Login");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Type", "application/json");
			conn.setRequestProperty("Authorization", "asdfghjklLKJHGFDSA");

			String input = "{\"Application_ID\":1,\"Email_ID\":\"" + email + "\",\r\n"
					+ "\"Password\":\"" + password + "\" }";
						
			
			System.out.println("Login API Json input is: " + input);

			OutputStream os = conn.getOutputStream();
			os.write(input.getBytes());
			os.flush();
			

			BufferedReader br = new BufferedReader(new InputStreamReader(
					(conn.getInputStream())));
			

				System.out.println("login API Json Response is - ");
				while ((jsonResponse = br.readLine())!= null) {	
					System.out.println(jsonResponse);
					
					response = jsonResponse;	
					
				
				
				//JSONParser parser = new JSONParser();
				JSONObject jsonreponse = new JSONObject(response);
						
				//System.out.println(((JSONObject)jsonreponse.get("Status")).get("Code").toString().equals("0"));
//				if (((JSONObject)jsonreponse.get("Status")).get("Code").toString().equals("0")  &&  ((JSONObject)jsonreponse.get("UserData")).get("WalletHolder_Administrator_Partner_Flag_WAPn").toString().equals("W")) {
//					
//			
//					
//					
//				
//			
//				
//				return ("Dashboard");}
//				else {
//					return ("ulogin");
//				}
				
				
			}			
			// from response get CardHolder_Administrator_Partner_Flag_CAPn 
			
			
			
			
			//conn.disconnect();

		  } catch (MalformedURLException e) {

			e.printStackTrace();

		  } catch (IOException e) {

			e.printStackTrace();

		 }			
		
		
		//return response;
//				ModelAndView andView = new ModelAndView("Dashboard");
//				andView.addObject("email_id", "");
				
				return response;

	}

	
	
	
}
