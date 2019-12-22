<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>profile</title>
<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">

<!-- bootstrap links -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<!--  CSS LINK -->
<link rel="stylesheet"
	href="https://routbook.com/themes/routbook/assets/css/style.css">
<link rel="stylesheet"
	href="https://routbook.com/themes/routbook/assets/css/custom.css">
<link rel="stylesheet"
	href="https://routbook.com/themes/routbook/assets/css/colors/blue.css"
	id="colors">
	


</head>
<body>
<jsp:include page="${request.contextPath}/newItem"></jsp:include>

  <div class="container bootstrap snippet">
 
 
    <form action="${contextPath}/${user.id}/myprofile" method="post">
        <div class="row">
  <div class="col-sm-10"><h1>MY PROFILE</h1></div>
        </div>
        <br>
       
       
        <div class="row">
  <div class="col-sm-3">
 
 
 
 
  <!--left col-->      

        <div class="text-center">
        <img src="" class="avatar img-circle img-thumbnail" alt="avatar">
        <h6>Upload a different photo</h6>
        <input type="file" name="file" required="required" class="text-center center-block file-upload" />
        </div></hr><br>

               
         
         
         
                     
         <div class="panel panel-default">
            <div class="panel-heading">Social Media</div>
            <div class="panel-body">
            <i class="fa fa-facebook fa-2x"></i> <i class="fa fa-github fa-2x"></i> <i class="fa fa-twitter fa-2x"></i> <i class="fa fa-pinterest fa-2x"></i> <i class="fa fa-google-plus fa-2x"></i>
             </div>
           </div>        
         </div>
       
        <!--/col-3-->
    <div class="col-sm-9">
            <ul class="nav nav-tabs">
              </ul>

             
          <div class="tab-content">
            <div class="tab-pane active" id="home">
               
                <hr>
                 
                      <div class="form-group">
                         
                       
                     <div class="col-xs-6">
                        <label><h4>Profile Name</h4></label>
                        <input type="text" id="username"name="username" value="${user.username}" class="form-control"></input>
                      </div>
                     </div>
                      <div class="form-group">
                                         
         
                      <div class="form-group">
                         
                          <div class="col-xs-6">
                              <label for="phone"><h4>Phone</h4></label>
                              <input type="text"name="phonenumber" id="phonenumber"value="${user.phonenumber}" class="form-control"></input>
                          </div>
                      </div>
         
                     
                      <div class="form-group">
                         
                          <div class="col-xs-6">
                              <label for="email"><h4>Email</h4></label>
                              <input type="text" id="email" name="email" value="${user.email}" class="form-control"></input>
                          </div>
                      </div>
                         
                         
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              <button  class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i>Save</button>
                            </div>
                      </div>
              </div>
              </div>
              </div>
              </div>
              </div>
              </form>
              </div>
</body>
</html>