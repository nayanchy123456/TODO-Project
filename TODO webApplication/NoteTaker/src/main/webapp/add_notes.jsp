
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    
    <title>Add Notes</title>
    <%@include file = "all_js_css.jsp" %>
  </head>
  <body>
   <div class = "container">
    	<%@include file = "navbar.jsp" %>
    	
    	<br>
    	<h1>Please fill your note details</h1>
    	<br>
    	
    	<!-- this is add form  -->
    	<form action ="SaveNoteServlet" method = "post">
  <div class="form-group">
    <label for="title">Note title</label>
    <input 
    	type="text"  
    	name ="title" 
    	class="form-control" 
    	id="title"  
    	placeholder="Enter here" required/>
  
  </div>
  
 <div class="form-group">
    <label for="content">Note Content</label>
    <textarea
    		  name ="content"
    		  id="content" 
              placeholder="Enter your content here!!!!" 
              class="form-control" 
              style="height: 300px;" 
              required></textarea>
</div>


  <div class = "container text-center">
  
   <button type="submit" class="btn btn-primary">Add</button>
   
   </div>
  
  
</form>
    	
    </div>
    
    
    

  </body>
</html>