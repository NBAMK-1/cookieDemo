<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 16-08-2021
  Time: 13:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookie Creation</title>
</head>
<%
  String favLang = request.getParameter("favoriteLanguage")  ;

  Cookie cookie = new Cookie("myapp.fav.lang",favLang);

  cookie.setMaxAge(60*60*24*365);

  response.addCookie(cookie);
%>
<body>

Thanks !!! We set Your fav lang to : ${param.favoriteLanguage}

<br/><br/>

<a href="cookies-homepage.jsp">Return to Homepage</a>

</body>
</html>
