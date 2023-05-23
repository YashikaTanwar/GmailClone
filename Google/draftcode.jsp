<html>

<head>
	<title>Linking</title>
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
	table,tr {
		border: 1px solid rgb(199, 193, 193);
		height: 40px;
		width: 100%;
		padding-left: 20px;
		table-layout: fixed;
	}
	td{
		white-space: nowrap;
		overflow: hidden;
	}
	form {
		border-radius: 15px;
		display: flex;
		height: 90.5%;
	}

	.first1 button {
		height: 40px;
		outline: none;
		border: none;
		background-color: white;
		color: gray;
	}

	.first1 button:hover {
		background-color: rgb(237, 236, 236);
		border-radius: 100px;
		background-color: rgb(237, 236, 236);
	}

	.first2 button {
		height: 40px;
		outline: none;
		border: none;
		background-color: white;
		color: gray;
	}

	.first2 button:hover {
		background-color: rgb(237, 236, 236);
		border-radius: 100px;
	}

	.first {
		display: flex;
		flex-direction: row;
		padding: 5px;
	}

	.first1 button {
		padding-right: 14px;
		padding-left: 14px;
	}

	.first2 button {
		padding-right: 14px;
		padding-left: 14px;
	}

	.first1 {
		text-align: left;
		align-items: left;
	}

	.first2 {
		position: absolute;
		right: 0;
	}

	.second {
		display: flex;
		flex-direction: row;
	}

	.second div {
		padding: 12px 25px 12px 10px;
		width: 20%;
	}

	.second div i {
		padding: 10px;
	}

	.second div:hover {
		background-color: rgb(230, 226, 226);
	}

	.col-2:hover {
		background-color: rgb(237, 236, 236);
	}

	.second i {
		padding-right: 20px;
	}

	.col-2 {
		width: 25%;
		padding: 15px 60px 15px 0;
	}

	.modal {
		position: fixed;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%) scale(0);
		z-index: 10;
		background-color: white;
		width: 50%;
	}

	.modal-header {
		padding: 10px 15px;
		justify-content: space-between;
	}

	#SHOW-EMAIL {
		cursor: pointer;
	}

	#overlay {
		position: fixed;
		opacity: 0;
		top: 0;
		left: 0;
		bottom: 0;
		background-color: (0, 0, 0, 0.5);
		pointer-events: none;
	}

	#overlay:active {
		pointer-events: all;
		opacity: 1;
	}
</style>

<body>
	<form action="deletedata.jsp">
		<div class="contain col-lg-10 col-md-8">
			<div class="first ">
				<div class="first1 float-left">
					<button><input type="checkbox" id="selectAll" style="width:40px;height:20px;"><i
							class="fa-solid fa-sort-down fa-sm"></i></button>
					<button><i class="fa-solid fa-arrow-rotate-right fa-sm"></i></button>
					<button><i class="fa-solid fa-ellipsis-vertical fa-sm"></i></button>
					<button><i class="fa fa-trash"></i>Delete</button>
				</div>
				<div class="first2 ">
					<button><i class="fa-solid fa-angle-left fa-sm"></i></button>
					<button><i class="fa-solid fa-angle-right fa-sm"></i></button>
					<button><i class="fa-solid fa-keyboard fa-sm"></i></button>
					<button><i class="fa-solid fa-sort-down fa-sm"></i></button>
				</div>
			</div>
			<div class="second">
				<div><i class="fa-solid fa-inbox fa-sm"></i>Primary</div>
				<div><i class="fa-solid fa-tag fa-sm"></i>Promotions</div>
				<div><i class="fa-solid fa-users fa-sm"></i>Social</div>
			</div>

			<div>
				<%@page import="java.sql.*" %>
				<%@page import="java.util.Date" %>
				<%! 
				PreparedStatement ps1; 
				ResultSet rs1; 
				%>
				<%String email=(String)session.getAttribute("email");%>
				<%@include file="connect.jsp" %>
				<table>
					<% Date d=new Date(); 
					ps1=con.prepareStatement("Select * from draft");
					rs1=ps1.executeQuery(); %>
					<%while(rs1.next()) 
					{ 
						if(email.equals(rs1.getString("recipients"))) { %>
							<tbody>
								<tr>									
									<td class="col-lg-3">
										<a href="draftemail.jsp?id=<%= rs1.getString("id") %>" style="text-decoration: none;color: black;"><input type="checkbox" name="cb1" value='<%= rs1.getString("id") %>' class="select" style="width:60px;height:15px;"> <%=rs1.getString("from1")%></a>
									</td>
									<td class="col-lg-3">
										<a href="draftemail.jsp" style="text-decoration: none;color: black;"><%=rs1.getString("subject")%></a>
									</td>
									<td class="col-lg-6">
										<a href="draftemail.jsp" style="text-decoration: none;color: black;"><%=rs1.getString("content")%></a>
									</td>
								</tr>
							</tbody>
							
					<% 
							} 
						}
					%>
				</table>
			</div>
		</div>
	</form>
	<script>
		const main = document.getElementById("selectAll");
		const select = document.getElementsByClassName("select");
		main.onclick = () => {
			if (main.checked == true) {
				for (let i = 0; i < select.length; i++) {
					select[i].checked = true;
					document.querySelector('button').style.display = 'block';
				}
			}
			else {
				for (let i = -0; i < select.length; i++) {
					select[i].checked = false;
					document.querySelector('button').style.display = 'none';
				}
			}
		}


	</script>
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