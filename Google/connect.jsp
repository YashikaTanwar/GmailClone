<%! 
	Connection con;
%>
<%
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql:///google","root","root");
	}
	catch(Exception e){
		
	}
%>