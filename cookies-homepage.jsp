<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 16-08-2021
  Time: 13:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HomePage</title>
</head>
<body>
<h1>Training Page</h1>
<%
  String favLang = "Java";

  Cookie[] theCookies = request.getCookies();

  if(theCookies != null){
      for (Cookie tempCookie : theCookies) {
          if("myapp.fav.lang".equals(tempCookie.getName())){
              favLang = tempCookie.getValue();
          }
      }
  }
%>

<h4>New Books for <%= favLang
%></h4>
<ul>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
</ul>

<h4>Courses for <%= favLang
%></h4>
<ul>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
</ul>

<h4>Certificates for <%= favLang
%></h4>
<ul>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
</ul>

<br/><br/>
<a href="cookies-personalise-form.jsp">Request cookie change</a>

</body>
</html>
