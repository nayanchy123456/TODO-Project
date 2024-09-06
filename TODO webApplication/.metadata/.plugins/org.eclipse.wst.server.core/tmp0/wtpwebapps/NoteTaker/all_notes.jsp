 <%@page import="javax.swing.text.AbstractDocument.BranchElement"%>
<%@page import="org.hibernate.Session"%>
 <%@page import="org.hibernate.Query"%>
 <%@page import="com.helper.FactoryProvider"%>
 <%@page import="java.util.*"%>
 <%@page import="com.entites.*"%>

 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All notes: NoteTaker</title>
 <%@include file = "all_js_css.jsp" %>
</head>
<body>

<div class="container">
	<%@include file = "navbar.jsp" %>
	<br>
	<h1 class="text-uppercase">All notes:</h1>
	
	<div class="row"></div>
	<div class="col-12"></div>
	
	<%
	Session s = FactoryProvider.getFactory().openSession();
	
	Query q = s.createQuery("from Note");
	List<Note> list=q.list();
	for(Note note:list)
	{
		out.println(note.getId() + " : " + note.getTitle() + "<br>");
		
		%>
		 <div class="card mt-3"  >
  <img class="card-img-top m-4 mx-auto" style = " max-width:100px"  src="img/notepad.png" alt="Card image cap">
  <div class="card-body px-5">
    <h5 class="card-title"><%= note.getTitle()%></h5>
    <p class="card-text">
    <%=note.getContent() %>
    </p>
   
   <div class="container text-center mt-2">
    <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger"> Delete</a>
    <a href="#" class="btn btn-primary"> Update</a>
    </div>
  </div>
</div>
		
		
		<%
	}
	
	s.close(); 

	%>

</div>
</body>
</html>