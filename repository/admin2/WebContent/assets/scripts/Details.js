                                 function getdetails(UserName){
								
							//	var x = document.getElementById("UserName").options.length;
							
								
								
						
							
								
								var fromUserDetails = document.getElementById("UserName").value;							
							//	var userEmail = email;
								var array = new Array();
								
								var tempUserName = UserName;
								
								
								$.ajax({
								     type : "POST",
								     url : "/admin2/Details",
								     data : {UserName:tempUserName},
								     timeout : 100000,
								     async: false,
								     success : function(data) {			    	 
							  	    	 
								    		 //alert(data);
								    		 var toAcc = String(data);
								    		 var trimToAssString = toAcc.replace(/[&\/\\#+$~%.'":*?<>{}]/g, '');
								    		 //alert(trimToAssString);
								    		 
								    		 array = trimToAssString.split(",");
								    		 
								    		 //alert(array.length);
								    		 //alert("array within ajax: " + array);
								    		 
								    		var select = document.getElementById("AccID");
//								    		
								    		var select = document.getElementById("FirstName");
								    		var select = document.getElementById("LastName");
								    		 //var dropdown = document.getElementById("toAccDropdown");							    		â€‹â€‹â€‹
								    		 
								    	},
								     error : function(e) {
								         console.log("ERROR: ", e);
								         display(e);
								     },
								     done : function(e) {
								         console.log("DONE");
								     } 
								     
								 });
								
								var toAccArray = array;								
								
								var select = document.getElementById("UserName");	
							//	document.getElementById("UserID").value= "";
								
								for(var i = 0; i <toAccArray.length; i++){					
									
									var option = document.createElement("OPTION"),
									txt = document.createTextNode(toAccArray[i].replace("[", "").replace("]", ""));
									
									option.appendChild(txt);
									select.insertBefore(option,select.lastChild);
									
								}
								
							}
							
							
							
			
					     	 document.getElementById("AccID").value = "";
                             //document.getElementById("CardNo").value = "";
                             document.getElementById("FirstName").value = "";
                             document.getElementById("LastName").value = "";
							
							
							