<!--For Login Validation-->
<%@page import="java.sql.*"%>
<%!
	PreparedStatement ps;
	ResultSet rs;
%>
<%      String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		boolean valid=false;
		try{%>
			<%@ include file="connect.jsp"%>
	<%		ps=con.prepareStatement("Select email, pass from googlemail");
			rs=ps.executeQuery();
			
			while(rs.next())
			{
				if(email.equals(rs.getString("email")) && pass.equals(rs.getString("pass")))
				{
					valid=true;
					break;
				}
			}
			if(valid) 
			{
				session.setAttribute("email",email);
%>
				<jsp:forward page="Welcome.jsp"/>
<%
			}
			else /*when it does not match it will redirect to signin page*/
			{ %>
				<html><font color=black>WRONG EMAIL or Wrong Password Entered </font></html>
				<jsp:include page="index.html"/>
<%			}
		}
		catch(Exception e)
		{
			out.print(e);
		}
%>