function AccountsList(){
						
//	   var Admin_Agent_code = document.getElementById("admin_Agent_code").value;
//	   var Admin_Sub_Agent_code = document.getElementById("admin_Sub_Agent_code").value;
	   
	   
	
	

								$.ajax({
									
								     type : "POST",
								     url : "/admin2/AccountList",
//								     data : {Admin_Agent_code:Admin_Agent_code,Admin_Sub_Agent_code:Admin_Sub_Agent_code},
								     timeout : 100000,
								 
								     success : function(data) {	
									    	// alert("value" + " " + username );
									    	//alert(data+"test");
									    	var obj = JSON.parse(data);
									    	//alert("test1"+obj);
									    	//var obj = JSON.stringify(data);
									    	
									    	//alert(obj['User_FirstName']);
					    		         var table =  $('#myTable');
//					    		         var max_size=val.length;
//					    					var sta = 0;
//					    					var elements_per_page = 3;
//					    					var limit = elements_per_page;
//					    					goFun(sta,limit);
//					    					function goFun(sta,limit){
//					    						for(var i=sta;i<limit;i++){
					    							
					    							for(var i=1; i < obj.length; i++)
										    		{
										    		var val =obj[i];
										    		
										    		//alert(val['User_FirstName']);
//										    		for(var i=0; i < obj.length; i++)
//										    		{
//										    		var val =obj[i];
//										    		
//										    		alert(val['User_LastName']);
										    		
										    		//alert(val['MemberID']);
										    		//document.getElementById("Email_ID").value = val['Email_ID'];
										    		//document.getElementById("User_FirstName").value = val['User_FirstName'];
										    		
										    		var tab='<tr><td>'+i+"\n"+'</td><td>'+val['User_FirstName']+"\n"+'</td><td>'+val['User_LastName']+"\n"+'</td><td>'
						    						+val['MemberID']+"\n"+'</td><td>'+val['Email_ID']+"\n"+'</td><td>'
						    						+val['CellPhone']+"\n"+'</td><td>'+val['AccountNum']+"\n"+'</td><td>'
						    						+val['Registered_Physical_Issued_Virtual_Card_Flag_PIV']+"\n"+'</td><td>'
						    						 +val['Mobile_Number_Verified_Flag_Y']+"\n"+'</td><td>'+val['KYC_Uploaded_Flag_Y']+"\n"+'</td><td>'
						    						 +val['Agency']+"\n"+'</td></tr>';
										    		 
										    		$('#myTable').append(tab)
										    		}

					    						

					    						
					    					
								}
								       // document.getElementById("LoadingImage").hide();
								     }
								     
								 );
								
								
							}
				