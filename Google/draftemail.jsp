<html>

<head>
    <title>Forward Email</title>
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
    form {
        align-items: center;
        border-top-right-radius: 15px;
        border-top-left-radius: 15px; 
        padding: 0px !important;
        margin: 0;
        width: 70%;
        border: 2px solid #F2F6FC;
    }

    #message {
        background-color: #F2F6FC;
        padding: 10px 0px;
        border-top-right-radius: 15px;
        border-top-left-radius: 15px; 
        cursor: pointer;
        display: flex;
    }

    input {
        border: none;
        outline: none;
    }

    body form div:nth-child(2) {
        border-bottom: 1px solid #F2F6FC;
        padding: 10px 10px;
    }

    body form div:nth-child(3) {
        border-bottom: 1px solid #F2F6FC;
        padding: 10px 10px;
    }

    body form div:nth-child(4) {
        padding: 10px 10px;
    }

    div .new button {
        background-color: #F2F6FC;
        border: none;
        outline: none;
        height: 20px;
        width: 20px;
    }

    button:hover {
        background-color: #e9ebed;
    }

    textarea {
        border: none;
        outline: none;
        resize: none;
        min-width: 100%;
        min-height: 57%;
    }

    .btn {
        height: 40px;
        width: 100px;
        padding: 5px 0px !important;
        border-radius: 30px;
        padding-bottom: 5px;
    }

    .btn i {
        padding-left: 10px;
    }

    .bottom button:nth-child(3) {
        background-color: white;
        cursor: pointer;
    }

    #footer2 button {
        background-color: white;
        border: none;
        outline: none;
        height: 25px;
        width: 25px;
        padding: 5px;
    }

    #footer3 button {
        background-color: white;
        border: none;
        outline: none;
        height: 20px;
        width: 20px;
    }

    .bottom {
        display: flex;
        flex-direction: row;
    }
    #textarea::-webkit-scrollbar{
        display: none;
    }
</style>

<body>
    <form action="draftdata.jsp" style="height:580px;width:1100px;background-color: #fff;">
        <div id="message">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <span><b>Forward</b></span>
            </div>
        </div>
        <div>
        <%@page import="java.sql.*" %>
			<%! 
				PreparedStatement ps1; 
				ResultSet rs1;
		 	%>
				<% 
					String id=request.getParameter("id");
                    String from1=(String)session.getAttribute("email");
                    String subject = request.getParameter("subject");
                    String content = request.getParameter("content");
					 try{ 
				%>
					<%@ include file="connect.jsp" %>
						<% 
                            ps1=con.prepareStatement("Select * from draft"); 
                            rs1=ps1.executeQuery(); 
                            while(rs1.next())
                            {
                                if(id.equals(rs1.getString("id")))
                                {
						%>
                            <span>
                                <input type="email" style="width: 100%;">
                            </span>
                        </div>
                            
        <div>
            <input type="text" placeholder="Subject" id="subject" name="subject">
        </div>
        <div>
            <textarea id="textarea" style="height:350px;"name="content" placeholder="Compose your Email">From: <%=rs1.getString("from1")%> Subject: <%=rs1.getString("subject")%><%=rs1.getString("content")%></textarea>
        </div>
        <%
                                }
                            }
                        } 
                            catch (Exception e) 
                            {
                                out.print(e);
                            }
                        %>
        <div class="bottom">
            <div id="footer1" class="col-lg-2 col-md-3 col-sm-3">
                <button class="btn btn-primary" id="send"><b>Send</b><i class="fas fa-sort-down"></i></button>
            </div>
            <div id="footer2" class="col-lg-9 col-md-8 col-sm-8">
                <button><i class="fa-solid fa-box-archive"></i></button>
                <button><i class="fas fa-font"></i></button>
                <button><i class="fas fa-paperclip"></i></button>
                <button><i class="fas fa-link"></i></button>
                <button><i class="far fa-smile"></i></button>
                <button><i class="fab fa-google-drive"></i></button>
                <button><i class="fas fa-file-image"></i></button>
                <button><i class="fas fa-lock"></i></button>
                <button><i class="fas fa-pen-alt"></i></button>
                <button><i class="fas fa-ellipsis-v"></i></button>
            </div>
            <div id="footer3" class="col-lg-1 col-md-1 col-sm-1">
                <button><i class="fas fa-trash-alt"></i></button>
            </div>
        </div>
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