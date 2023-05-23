<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
		integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
		crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
		integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
		crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<style>
	table,
	td {
		background-color: white;
	}
	.openmail_footer button{
		background-color: white;
		outline: none;
	}
	.openmail_footer a{
		outline: 1px solid black;
		border-radius: 20px;
		padding:10px 20px;
	}
	.openemail_content::-webkit-scrollbar /*Hide scrollbar*/
	{
    	display: none;
	}
	#values {
		width: 100%;
		height: 100%;
		border-spacing: 2px;
		padding: 5px;
	}

	#openemail_header a i:hover {
		background-color: rgb(237, 236, 236);
		border-radius: 100%;
	}

	#values td {
		text-align: left;
		padding: 5px;
	}

	tr td:nth-child(1) {
		width: 300px;
	}

	tr td:nth-child(2) {
		width: 200px;
	}

	tr td:nth-child(3) {
		width: 700px;
	}
</style>

<body>
	<form action="message.jsp">
		<%@page import="java.sql.*" %>
			<%! 
				PreparedStatement ps2; 
				ResultSet rs2;
		 	%>
				<% 
					String id=request.getParameter("id");
					 try{ 
				%>
					<%@ include file="connect.jsp" %>
						<% 
						ps2=con.prepareStatement("Select * from compose"); 
						rs2=ps2.executeQuery(); 
						while(rs2.next())
						{
							if(id.equals(rs2.getString("id"))){
								%>
							<div class="openmail"
								style="height:620px;background-color: white;border-radius:10px; padding-left: 20px;padding-top: 5px;">
								<div id="openemail_header">
									<a href="Welcome.jsp"><i class="fa-solid fa-arrow-left"
											style="height:40px;width:40px;padding:13px;"></i></a>
									<a href=""><i class="fa-solid fa-triangle-exclamation"
											style="height:40px;width:40px;padding:13px;"></i></a>
									<a href=""><i class="fa-solid fa-envelope"
											style="height:40px;width:40px;padding:13px;"></i></a>
									<a href=""><i class="fa-solid fa-clock"
											style="height:40px;width:40px;padding:13px;"></i></a>
									<a href=""><i class="fa-solid fa-trash"
											style="height:40px;width:40px;padding:13px;"></i></a>
									<a href=""><i class="fa-solid fa-tag"
											style="height:40px;width:40px;padding:13px;"></i></a>
									<a href=""><i class="fa-solid fa-ellipsis-vertical"
											style="height:40px;width:40px;padding:13px;"></i></a>
								</div>
								<div class="openemail_body">
									<div style="display: flex;">
										<h2 style="font-family: Lato,sans-serif;height:10%;padding:10px 0px 10px 50px;" class="col-lg-11">
											<%=rs2.getString("subject")%>
										</h2>
										<a href=""><i class="fa-solid fa-print"></i></a>
										<a href=""><i class="fa-solid fa-arrow-up-right-from-square"></i></a>
									</div>
									<div style="display: flex;height:10%;padding-bottom: 20px;">
										<div class="col-lg-10">
											<span>&lt;<%=rs2.getString("from1")%>&gt;</span>
										</div>
										<div class="col-lg-2">
											<a href=""><i class="fa-solid fa-reply"></i></a>
											<a href=""><i class="fa-solid fa-ellipsis-vertical"></i></a>
										</div>
									</div>
									<div style="padding:20px 0px;"><!--To provide spaces in text-->
										<pre class="openemail_content" style="font-family: Lato,sans-serif;white-space:break-spaces;max-height: 320px;">
											<%=rs2.getString("content")%>
										</pre>
									</div>
									<div class="openmail_footer" style="padding: 20px 0px;">
										<a style="color:black" href="reply.jsp?id=<%= rs2.getString("id") %>"><i class="fa-solid fa-reply"></i>Reply</a>
										<a style="color:black" href="forward.jsp?id=<%= rs2.getString("id") %>"><i class="fa-solid fa-share"></i>Forward</a>
									</div>
								</div>
							</div>
							<%} 
						} 
					} 
					catch(Exception e)
					{
						 out.print(e); 
					} %>
	</form>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>

</html>