package com.stylopay.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.amazonaws.services.alexaforbusiness.model.UserData;
import com.stylopay.bean.Accountholdersbean;
import com.stylopay.bean.Loginbean;
import com.stylopay.util.Accountholderlist;
import com.stylopay.util.Loginutil;

@Controller
public class AdminController {
	
	private String admin_Agent_code= "";
	private String admin_Sub_Agent_code="";
	Accountholdersbean accountholder = new Accountholdersbean();
	private String msg;

	
	@RequestMapping(value ="/login")
	public ModelAndView Login(){
			return new ModelAndView("Dashboard") ;
		}

	
	@RequestMapping(value = "/Dashboard", method = RequestMethod.POST)
	public ModelAndView userSignin(@ModelAttribute("login") Loginbean loginbean, HttpServletRequest request, Model model)
			throws SQLException, JSONException { 

		Loginutil login = new Loginutil();
		
//		login.setemail(loginbean.getEmail());
//		login.setPassword(loginbean.getPass());
		String email = loginbean.getEmail();
		System.out.println("email in dashboard: " + email);
		String password = loginbean.getPass();
		String response =login.login(email, password);
		JSONObject jsonreponse = new JSONObject(response);
		String UserData=jsonreponse.get("UserData").toString();
		JSONObject jsonreponse1 = new JSONObject(UserData);
		System.out.println("agentcode"+jsonreponse1.get("Admin_Agent_code").toString());
		System.out.println("agentcode"+jsonreponse1.get("Admin_Sub_Agent_code").toString());
		if (((JSONObject)jsonreponse.get("Status")).get("Code").toString().equals("0")  &&  ((JSONObject)jsonreponse.get("UserData")).get("WalletHolder_Administrator_Partner_Flag_WAPn").toString().equals("A")) {
			
	
			
			
			
			accountholder.setAdmin_Agent_code(jsonreponse1.get("Admin_Agent_code").toString());

			System.out.println("admin_Agent_code account is: " + accountholder.getAdmin_Agent_code());
			
			accountholder.setAdmin_Agent_code(jsonreponse1.get("Admin_Sub_Agent_code").toString());
			
			System.out.println("admin_Agent_code account is: " + accountholder.getAdmin_Sub_Agent_code());
			

			
			admin_Agent_code=jsonreponse1.get("Admin_Agent_code").toString();
			admin_Sub_Agent_code=jsonreponse1.get("Admin_Sub_Agent_code").toString();
			
		
	
		
			
            ModelAndView andView = new ModelAndView("Dashboard");
			andView.addObject("email_id", "");
		
		
		
		loginbean.setEmail(loginbean.getEmail());
		loginbean.setPass(loginbean.getPass());
		return new ModelAndView("Dashboard");}
		else {
			return new ModelAndView("ulogin");
		}



	}


	private ModelAndView dashboard(Loginutil login, Model model) {
		// TODO Auto-generated method stub
		return new ModelAndView("Dashboard");
	}


	
	@RequestMapping(value = "/AccountList", method = RequestMethod.POST)
	@ResponseBody
	public String getcardholdersAPI(@ModelAttribute("accountholders") Accountholdersbean accountholdersbean, HttpServletRequest request, Model model)
		throws SQLException, JSONException { 
		String userData= null;
		
//    	System.out.println("Admin Agent code account is: " + admin_Agent_code);
//	    System.out.println("Admin Sub Agent code account is: " + admin_Sub_Agent_code);
//		JSONObject jsonResponse = new JSONObject();
//		Accountholderlist getcardholdersAPI = new Accountholderlist();
//		String response = getcardholdersAPI.getcardholdersAPI(admin_Agent_code,admin_Sub_Agent_code);
//		System.out.println("res"+jsonResponse.getString("getcardholdersAPI"));
//		JSONObject jsonreponse = new JSONObject(response);
//		accountholder.getAdmin_Agent_code();
//		System.out.println(((JSONObject)jsonreponse.get("Status")).get("Code").toString().equals("0"));
		  if(admin_Agent_code == null) {
			  
			  msg = "Agent Code Required!";
			  
		  }else {
			  Accountholderlist getcardholdersAPI = new Accountholderlist();
			  JSONObject jsonResponse = new JSONObject();
			  String response = getcardholdersAPI.getcardholdersAPI(admin_Agent_code,admin_Sub_Agent_code);
			  
			  
			  
			  
			  if(response.contains("OK")) {
				  
				  
				  JSONObject jsonResponse1 = new JSONObject(response);
				   userData = jsonResponse1.get("user_data").toString();
				  
				  
				  
			
				  
			  }
			  else {  
				  msg = "Some internal error occurs there!";
				  
			  }
			  
		  }
		    return userData.toString();
	  }
	
	
//	@RequestMapping(value = "/AccountList", method = RequestMethod.POST)
//	@ResponseBody
//	public String accountholder() throws JSONException {
//		Map<String,String> param=new HashMap<String,String>();
//		System.out.println("admin_Agent_code account is: " + accountholder.getAdmin_Agent_code());
//		System.out.println("admin_Sub_Agent_code account is: " + accountholder.getAdmin_Sub_Agent_code());
//		JSONObject jsonResponse = new JSONObject();
//		Accountholderlist getcardholdersAPI = new Accountholderlist();
//		String jsonResponse1 = getcardholdersAPI.getcardholdersAPI(admin_Agent_code,admin_Sub_Agent_code);
//		 System.out.println("res"+jsonResponse.getString("AccountList"));
//		return jsonResponse.getString("AccountList");
//}

}


