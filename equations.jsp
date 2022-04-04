<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% double discrim; %>
<% double a = Double.parseDouble(request.getParameter("a"));%>
<% double b = Double.parseDouble(request.getParameter("b"));%>
<% double c = Double.parseDouble(request.getParameter("c"));%>
<% double x1=0;%>
<% double x2=0;%>

<% discrim = b*b-4.0*a*c;%>
<%
if(discrim<0)
{
    
    out.println("<H1 style='background-color:red;'>Aucun résultat Réel </H1>");
}
else if (discrim==0) {
	
	
	out.println("Value of discriminant: " + -b/2*a + "<br/>");
	
}
else {
	x1 = (-b+Math.sqrt(discrim))/2.0/a;
    x2 = (-b-Math.sqrt(discrim))/2.0/a;
    out.println("<ul style='background-color:green;'>");
    out.println("<li>valeur de discriminant: " + discrim + "</li>");
    out.println("<li>valeur de x1: " + x1 + "</li>");
    out.println("<li>valeur de x2: " + x2 + "</li>");
    
    out.println("</ul>");
	
}
	
%>

</body>
</html>