package com.stylopay.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.codec.binary.Base64;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.stylopay.bean.Loginbean;

import com.stylopay.bean.Detailsbean;

import com.stylopay.util.Loginutil;



@Controller
public class AdminController {
	
	//String username = "ab123";
	
	@Autowired
	ServletContext context;
	
	/////////////////////////////////////login/////////////////////////////////////

	
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
		System.out.println("reponse"+jsonreponse);
		
		//String flag=jsonreponse.get("UserData").get("\"WalletHolder_Administrator_Partner_Flag_WAPn\"").toString
		if (((JSONObject)jsonreponse.get("Status")).get("Code").toString().equals("0")  &&  ((JSONObject)jsonreponse.get("UserData")).get("WalletHolder_Administrator_Partner_Flag_WAPn").toString().equals("A")) {
			
	
//			accountholder.setAdmin_Agent_code(jsonreponse1.get("Admin_Agent_code").toString());
//
//			System.out.println("admin_Agent_code account is: " + accountholder.getAdmin_Agent_code());
//			
//			accountholder.setAdmin_Agent_code(jsonreponse1.get("Admin_Sub_Agent_code").toString());
//			
//			System.out.println("admin_Agent_code account is: " + accountholder.getAdmin_Sub_Agent_code());
//			
//
//			
//			admin_Agent_code=jsonreponse1.get("Admin_Agent_code").toString();
//			admin_Sub_Agent_code=jsonreponse1.get("Admin_Sub_Agent_code").toString();
			
		
	
		
			
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


	
	///////////////////////////////////////////////////////get user details////////////////////////////////////////
	
	@RequestMapping(value = "/Detail", method = RequestMethod.POST)
	@ResponseBody
	public String userdetails(@RequestParam("username") String username, Detailsbean Detailsbean,
			HttpServletRequest request, Model model) throws Exception{

		//String userdetails = username;
		
	

		System.out.println("username is: " + username);

		
		//String currency = currencyType;

		Details Details = new Details();
		String response = Details.details(username );
System.out.println("response"+response);

ModelAndView andView = new ModelAndView("kycupload");
andView.addObject("id", "");
//andView.addObject("", "");

		return response;
	}
	
//////////////////////////////////////////////////////kyc upload/////////////////////////////////////////
	 @RequestMapping(value = "/kycupload", method = RequestMethod.POST)
	  
	  public ModelAndView uploadKycDocs(@ModelAttribute("uploadFiles") KYCFileUpload kycFileUpload ,  Model model,Detailsbean Detailsbean, HttpServletRequest servletRequest, String username) throws IOException, JSONException {
		 //request.addParameter("username", null);
	  System.out.println("Hello");

	  
	  String docType = null;
  // String userdetails = username;
		 username = Detailsbean.getusername();
		//System.out.println("email in dashboard: " + email);
		  System.out.println("username required for KYC docs upload is: " + username);
	  
	 // username u = new GetTribeMemberId();
	  System.out.println("username is: " + username);
	//Get the list of files
     List<MultipartFile> files = kycFileUpload.getFiles();
     List<String> fileNames = new ArrayList<String>();
     List<String> docUId = new ArrayList<String>();

     //Check whether the list is not null or empty
     if (files != null && !files.get(0).getOriginalFilename().isEmpty())
     {
         //Get the individual MultipartFile
         for (MultipartFile multipartFile : files)
         {
       	  
       	  System.out.println("File name is: " + multipartFile.getOriginalFilename());
				        	  
       	  byte[] bytes = multipartFile.getBytes();
       	  byte[] encoded = Base64.encodeBase64(bytes);
       	  String encodedString = new String(encoded);
       	  
       	  //System.out.println("encoded string is: " + encodedString);  
       	  
       	  if(multipartFile.getOriginalFilename().contains("jpeg")) {
       		  
       		  
       		  docType = "JPEG";
       		  
       	  }else if(multipartFile.getOriginalFilename().contains("png")) {
       		  
       		  docType = "PNG";
       		  
       	  }else if(multipartFile.getOriginalFilename().contains("pdf")) {
       		  
       		  docType = "PDF";
       		  
       	  }
       	  
       	  KYCDocumentUploadAPI kycDocumentUploadAPI = new KYCDocumentUploadAPI();
       	  String response = kycDocumentUploadAPI.uploadKYCFile(encodedString, username, docType);
       	  
       	 System.out.println("KYC Document Upload Response in java class is: " + response); 
       	 
       	 JSONObject jsonResponse = new JSONObject(response);
      	  	 String documentUid = jsonResponse.getString("DocumentUID");
      	  
      	  	 System.out.println("documentUid is: " + documentUid);
     	  	 
      	     docUId.add(documentUid);        	 
        
         }
         
     } 
     else
     {
         //model.addAttribute("message", "Please select atleast one file!!");
     }
//	ModelAndView response = null;
//	return response;
     return new ModelAndView("kycupload");
     
     
     
     //Calling IDVCheck API
     
//   	GetISOCountryCode getISOCountryCode = new GetISOCountryCode();
//	 	String isoCountryCode = getISOCountryCode.getISOCountryCodeAPI(countryId);
//	
//	 	IDVCheckAPI idvCheckAPI = new IDVCheckAPI();
//	 	String idvCheckResponse = idvCheckAPI.kycIdvChcking(docUId, memberId, isoCountryCode, birthDate, firstname, aptNo, streetNo, street, city, state, postcode, lastName);
//	 	
//	 	System.out.println("idvCheck response is: " + idvCheckResponse);
//	 	
//	 	String insertUserCredResponse = insertUsercredentialsToDatabase.insertLoginCredentialsToEmailIndex(email, password);
//		
//		JSONObject json = new JSONObject(insertUserCredResponse);
//		JSONObject UserData = json.getJSONObject("UserData");				
//		kycUploadFlag = UserData.getString("KYC_Uploaded_Flag_Y");
//	 	
//   	servletRequest.setAttribute("email", email);
//   	servletRequest.setAttribute("memberId", memberId);
//   	servletRequest.setAttribute("kycUploadFlag", kycUploadFlag);
//   	
//   	accountInfo = getUserAccountsList.accountDetails(username);
//   	System.out.println("accountInfo is: " + accountInfo);      
//   	
//   	
//		//ModelAndView mv = new ModelAndView("index");
//   	ModelAndView mv = new ModelAndView("redirect:mfaVerification");
//		mv.addObject("name", name);
//		mv.addObject("USDAccountBalance", USDAccountBalance);
//		mv.addObject("accountInfo", accountInfo);
//		return mv;
  
//		return mv;
	  
	  }
	 
	//////////////////////////////////////////////////////////////////////////////////////////////
	 
	 
	 
	 

	//////////////////////////////////////////////////test/////////////////////////////////////////////

	
	  /////////////////////////////////////////////////////////////////////////////////
}


