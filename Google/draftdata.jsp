<%@page import="java.sql.*"%>
<%!
    PreparedStatement ps;
    ResultSet rs;
%>
<%
    String from1 = (String) session.getAttribute("email");
    String recipient = request.getParameter("recipients");
    String subject = request.getParameter("subject");
    String id=request.getParameter("id");
    String status = "FALSE";
    String content = request.getParameter("content");

    try {
        %>
        <%@include file="connect.jsp"%>
        <%
        ps = con.prepareStatement("Insert into draft value (?, ?, ?, ?, ?,?)");
        ps.setString(1, from1);
        ps.setString(2, recipient);
        ps.setString(3, subject);
        ps.setString(4, status);
        ps.setString(5, content);
        ps.setString(6,id);
        ps.executeUpdate();
        %>
        <jsp:include page="Welcome.jsp"/>
        <%
    }
     catch (Exception e) {
        out.print(e);
    }
%>
