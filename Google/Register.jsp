<!--Register Account -->
<%@page import="java.sql.*"%>
<%!
	PreparedStatement ps;
	ResultSet rs;
%>
<% 
		String firstname=request.getParameter("first_name");
		String lastname=request.getParameter("lastname");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String confirm_pass=request.getParameter("confirm_pass");
		boolean valid=false;
		try{
%>
			<%@ include file="connect.jsp"%>
<%			ps=con.prepareStatement("Select email from googlemail");
			rs=ps.executeQuery();
			while(rs.next()){
				if(email.equals(rs.getString("email"))){
					valid=true;
					break;
				}
			}
			if(valid)
			{
				%>
				<html>Your E-mail is already registered with us please SignIn</html>
				<jsp:include page="index.html"/>
				<%
			}
			else{ 
				ps=con.prepareStatement("Insert into googlemail value(?,?,?,?,?)");
				ps.setString(1,firstname);
				ps.setString(2,lastname);
				ps.setString(3,email);
				ps.setString(4,pass);
				ps.setString(5,confirm_pass);
				ps.executeUpdate();
				%>
				<jsp:include page="register.html"/>
			<%
			}
		}
		catch(Exception e){
			out.print(e);
		}
%>