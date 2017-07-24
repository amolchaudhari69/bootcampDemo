<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function loadDoc() {	
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {	    
	    var data=JSON.parse(this.responseText);
	      document.getElementById("empId").value =data.empId;
	      document.getElementById("empName").value =data.empName;
	      document.getElementById("contactNo").value =data.contactNo;
	     document.getElementById("department").value =data.department;
	     document.getElementById("family").value =data.family;
	    }
	  };
	  //xhttp.open("GET", "ajax_info.txt", true);
	  xhttp.open("GET", "helloworld", true);
	  xhttp.send();
	}
</script>
<STYLE>
#empDetails  tr{
height:50px;
}
</STYLE>
</head>
<body>
<form name="empDetailsForm" action="helloworld" method="GET">
 <table align="center" id="empDetails">
 <tr>
         <td colspan="2"><h3>IDeaS Annual Picnic Form<h3></h3></td>         
     </tr>
     <tr>
         <td>Employee ID</td>
         <td><input type="text" id="empId" value=""> <input type="button" value="fetch" onclick="loadDoc()"/></td>
     </tr>
     <tr>
         <td>Employee Name</td>
         <td><input type="text" id="empName"></td>
     </tr>
     <tr>
         <td>Contact Number</td>
         <td><input type="text" id="contactNo"></td>
     </tr>
     	<tr>
         <td>Department</td>
         <td><select id="department">
             <option value="0" >Select Department</option>
             <option value="SD" >SD</option>
             <option value="QA" >QA</option>
             <option value="CARE" >CARE</option>
             <option value="ROA" >ROA</option>
             <option value="TECHOPS" >TECHOPS</option>
            </select>
           </td>
     </tr>
     	<tr>
         <td>Set Of Family</td>
         <td><select id="family">
             <option value="0" >Select Family</option>
             <option value="OnlyMe" >Only Me</option>
             <option value="Self+Spouse" >Self+Spouse</option>
             <option value="Self+Spouse+Kids" >Self+Spouse+Kids</option>
             <option value="Self+Parents" >Self+Parents</option>             
            </select>
           </td>
     </tr>
     <tr>         
         <td colspan="2"><input type="submit" id="confirm" value="Confirm"></td>
     </tr>       
 </table>
 </form>
</body>
</html>