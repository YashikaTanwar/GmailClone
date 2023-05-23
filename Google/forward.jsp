<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reply Email</title>
</head>
<style>
    *{
        padding: 0;
        margin: 0;
    }
	body{
		background-color: #F8F9FA;
	}
</style>
<body>
        <div>
            <%@include file="header.jsp"%>
        </div>
        <div style="display: flex;background-color: #F8F9FA;">
            <div style="height:640px">
                <%@include file="sidebar.jsp"%>
            </div>
            <div style="height:400px">
                <%@include file="forwardcode.jsp"%>
            </div>
        </div>
</body>
</html>