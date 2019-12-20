function getdetails(){
						
						/*if(!document.getElementById("TransactionRequestID").value)
							{
								return false;
							}
								swal({
									  text: 'Please wait....',
									  button : false
										
									});*/
	//alert("hi");
								
														var username = document.getElementById("username").value;
														
													
															$.ajax({
																
															     type : "POST",
															     url : "/admin2/Detail",
															   data : {username:username},
															     timeout : 100000,
															     
															     
															     success : function(data) {							    	 
															    	// alert("value" + " 	"  +   username  );
															    		alert(data+"test");
															    		 var obj = JSON.parse(data);
															    		 //alert("test1"+obj);
															    		 var obj = JSON.stringify(data);
															    		// alert(obj['Account']['Address']);qr_address
															    		// var quote=data;
//															    		document.getElementById("crypto_address").value =obj['Account']['Address'];
////															    		document.getElementById("crypto_address").value =Math.random();
															        document.getElementById("accountid").value =obj['id'];
														    		document.getElementById("fname").value =obj['first_name'];
														    		document.getElementById("lname").value =obj['last_name'];
															        document.getElementById("userpermissiongroup").value =obj['user_permission_group'];															    		
															    
//															    		 swal.stopLoading();
//															    		    swal.close();
//															    		    var val = obj['Account']['Address'];
//															    		  	if(!val)	  
//															    		  		 swal(
//																		        		    'Oops!! Something Went Wrong '
//																		        		    
//																		        		  );
															    		 },
															     error : function(e) {
															         console.log("ERROR: ", e);
//															         display(e);
//															         swal(
//															        		    'Good job!',
//															        		    'You clicked the button!',
//															        		    'error'
//															        		  );
															        		 
															     },
															     done : function(e) {
															         console.log("DONE");
															         
															        		
															       // document.getElementById("LoadingImage").hide();
															     } 
															     
															 });
															
															
														}
















/*function cryptoLoadstatus(){
	
	if(!document.getElementById("TransactionRequestID").value)
		{
			return false;
		}
			swal({
				  text: 'Please wait....',
				  button : false
					
				});
									var TransactionRequestID = document.getElementById("TransactionRequestIDNew").value;

										$.ajax({
											
										     type : "POST",
										     url : "/cryptoLoadStatus",
										     data : {TransactionRequestID:TransactionRequestID},
										     timeout : 100000,
										 
										     success : function(data) {							    	 
										   		 
										    		// alert(data);
										    		 var obj = JSON.parse(data);
										    		 //var obj = JSON.stringify(data);
										    		// alert(obj['Account']['Address']);qr_address
										    		// var quote=data;
										    		document.getElementById("crypto_address").value =obj['Account']['Address'];
//										    		document.getElementById("crypto_address").value =Math.random();
										    		document.getElementById("qr_address").value =obj['Account']['Address'];
										    		document.getElementById("DateCreate").innerText =obj['DateCreate'];
										    		document.getElementById("RequestedCurrencyCode").innerText =obj['RequestedCurrencyCode'];
										    		document.getElementById("SourceCurrencyCode").innerText =obj['SourceCurrencyCode'];
										    		document.getElementById("TransactionRequestID").innerText =obj['TransactionRequestID'];
										    		document.getElementById("TransactionRequestStatus").innerText =obj['TransactionRequestStatus'];
										    
										    		 swal.stopLoading();
										    		    swal.close();
										    		    var val = obj['Account']['Address'];
										    		  	if(!val)	  
										    		  		 swal(
													        		    'Oops!! Something Went Wrong '
													        		    
													        		  );
										    		 },
										     error : function(e) {
										         console.log("ERROR: ", e);
										         display(e);
										         swal(
										        		    'Good job!',
										        		    'You clicked the button!',
										        		    'error'
										        		  );
										        		 
										     },
										     done : function(e) {
										         console.log("DONE");
										         
										        		
										       // document.getElementById("LoadingImage").hide();
										     } 
										     
										 });
										
										
									}*/