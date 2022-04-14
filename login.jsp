<%@ page contentType="textml;charset=UTF-8" language="java"%>
<html>
<head>
    <title>网页聊天室</title>
</head>
<body>
<iframe src="display.jsp" width="100%" height="90%"></iframe>
<%
   
    if(request.getParameter("content") != null){
    	
        String content=session.getAttribute("username") + ":" + request.getParameter("content")+"<br>";
        if(application.getAttribute("content") != null){
            content+=application.getAttribute("content");
        }
        application.setAttribute("content", content);
    }
%>
    <form method="post" action="Chatroom.jsp">
        
        <input type="text" name="content">
        <input type="submit" value="发言">
    </form>
</body>
<ml>
