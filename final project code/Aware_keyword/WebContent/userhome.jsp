<%@page import="DB.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta name="Description" content="Information architecture, Web Design, Web Standards." />
<meta name="Keywords" content="your, keywords" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="Distribution" content="Global" />
<meta name="Author" content="Erwin Aligam - ealigam@gmail.com" />
<meta name="Robots" content="index,follow" />
<link rel="stylesheet" href="images/Blue.css" type="text/css" />
<title>BluePigment</title>
</head>
<body>
    <%
            if (request.getParameter("umsg") != null) {%>
        <script>alert('User login succesfully ');</script>  
        <%}
        %>
        
    <style>
        .textbox { 
	background:  #ccc; 
	border: 1px solid #666; 
	box-shadow: 0 0 5px #666 inset; 
	color: #333; 
	font-size: 20px; 
	padding: 7px 10px; 
	width: 200px; 
	outline: none; 
} 


    </style>
<!-- header starts here -->
<div id="header">
  <div id="header-content">
      <center><h1 id="logo-text"><a href="index.html" title="">Systematic Spatial Keyword Perception Suggestive Travel Route Recommendation Algorithm</a></h1></center>
    
      </div>
</div>
<!-- navigation starts here -->
<div id="nav-wrap">
  <div id="nav">
    <ul>
       <li><a href="index.jsp">Home</a></li>
       <li><a href="listtour1.jsp">POI(Interest) </a></li>
       <li><a href="websearc.jsp">search Keywords </a></li>
       <li><a href="respondprice.jsp">Tours details</a></li>
       <li><a href="feedback.jsp">Feedback</a></li>
       <li><a href="userlogin.jsp">Logout</a></li>
      
    </ul>
  </div>
</div>
<!-- content-wrap starts here -->
<div id="content-wrap">
  <div id="content">
    <div id="sidebar" >
      <div class="sep"></div>
      <div class="sidebox">
        
        
      </div>
      <div class="sidebox">
          <h1 style="color: black;font-family: Colonna MT;font-size: 35px">Sidebar Menu</h1>
          
      
        <ul class="sidemenu">
          <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="index.jsp">Home</a></li>
          <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="listtour1.jsp">POI(Interest) </a></li>
          <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="websearc.jsp">search Keywords </a></li>
          <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="search2.jsp">Search from TO </a></li>
          <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="respondprice.jsp">Tours details</a></li>
          <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="findfriend.jsp">Find friends</a></li>
          <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="viewfriendrequest.jsp">Requested friends</a></li>
          <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="viewfriends.jsp">Friends</a></li>
          <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="recomend.jsp">Recommend path</a></li>
          <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="viewsharedplaces.jsp">view shared images</a></li>
          
           <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="feedback.jsp">Feedback</a></li>
           <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="userlogin.jsp">Logout</a></li>
          
        </ul>
      </div>
      
      
          </div>
    <div id="main">
      
      <div class="box"> <a name="SampleTags"></a>
          
          <center>
              <br></br>
              <div>
                  <%
                            Connection con = null;
                            Statement st = null;
                            ResultSet rs = null;
                            try {
                                 String uid = session.getAttribute("uidd").toString();
                                con = Dbconnection.getConnection();
                                st = con.createStatement();
                                rs = st.executeQuery("select * from userregs where id='"+uid+"' ");
                                while (rs.next()) {
                                     String email=rs.getString("mailids");
                                     session.setAttribute("uemail", email);
            %>
            <CENTER><u style="color: #000"><h1 style="font-size: 35px;color: #A2CC00">Welcome <%=rs.getString("usernmae")%> </h1></u></CENTER>
            <div ><img src="viewimag.jsp?id=<%=rs.getString("id")%>"  style="width:230px;height: 200px"/></div><br><br><br><br>
                            <h1  style="font-size: 30px;color:  #ffffff" ><%=rs.getString("mailids")%></h1> 
                             <h1  style="font-size: 30px;color: #ffffff" ><%=rs.getString("phone")%></h1> 
                             <h1  style="font-size: 30px;color: #ffffff" ><%=rs.getString("location")%></h1> 
                             <h1  style="font-size: 30px;color: #ffffff" ><%=rs.getString("useerid")%></h1> 
                           
                            
                          
                           
                    </tr> 
                    <%}
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }
                    %>
     
  
               
            </form>
              </div>
          </center>

      </div>
      <br />
    </div>
    <!-- content-wrap ends here -->
  </div>
</div>
<!-- footer starts here-->
<div id="footer-wrap">
  <div id="footer-columns">
    </div>
    <!-- footer-columns ends -->
  </div>
    <!-- footer ends-->
</div>
</body>
</html>
