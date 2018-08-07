<%@page import="model.Complain"%>
<%@page import="dao.LoginDAO"%>
<%@page  session="true" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Signup</title>
     <link rel="shortcut icon" type="image/png" href="images/leaf.png">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/fontawesome-all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/signup1.css">
  </head>
  <body>


  <section class="top">
    <div class="container">
    <div class="row">


      <div class="col-md-3">
       <h3><img src="images/logo.jpg"></h3>  
      </div> 


      <div class="col-md-6">
      <div class="center">
       <h5>Swachh Bharat Mission</h5>  
       <p>Ministry of housing & urban affairs</p>
      </div> 
       </div>

      <div class="col-md-3">
       <h4><span class="clean">CLEAN INDIA </span> <br><span class="green">GREEN INDIA</span>  <span class="leaf"> <i class="fas fa-leaf"></i></span></h4>  
      </div> 


    </div>  
  </div>
</section>
  
<nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><h3><img src="images/flage.png"> &nbsp INDIA</h3></a>
    </div>

   
      <ul class="nav navbar-nav navbar-right">
        <li><a href="home.html"><i class="fas fa-home"></i>&nbsp HOME</a></li>
        <li><a href="aboutus.html">ABOUT US</a></li>
        <li><a href="events.html">EVENTS</a></li>
        
        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fas fa-users"></i>&nbsp   CITIZEN CORNER<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="InsertRequest.jsp">COMPLAINS</a></li>
            <li><a href="suggestion.jsp">SUGGESTIONS</a></li>
            
          </ul>
        </li>
        <li><a href="signup.html"><i class="fas fa-phone"></i>&nbsp   CONTACT US</a></li>
        
        

      </ul>
    </div>
  </div>
</nav>



<section class="back">
 <div class="container">
      <div class="row main">
        <div class="main-login main-center">
        <div class="heading">
          <h3>Signup</h3><br><br>
        </div>
        

          <form class="" method="post" action="index.jsp">
            
           

            <div class="form-group">
              <label for="username" class="cols-sm-2 control-label">Username</label>
              <div class="cols-sm-10">
                <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                  <input type="text" class="form-control" name="username" id="username"  placeholder="Enter your Username"/>
                </div>
              </div>
            </div>

            <div class="form-group">
              <label for="password" class="cols-sm-2 control-label">Password</label>
              <div class="cols-sm-10">
                <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                  <input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password"/>
                </div>
              </div>
            </div>

            

            <div class="form-group ">
                <input class="suggestion_btn" type="Submit" value="Submit"/>
            </div>
            
          </form>
        </div>
      </div>
    </div>

</section>

<footer class="end">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <h4> Copyright &copy; Ministry of Housing and Urban Affairs,GOVERNMENT OF INDIA </h4>
      </div>
    </div>
  </div>
</footer>





  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/fontawesome-all.min.js"></script>
 
    
    
        <% 
            String uname=null,upass=null;
            uname=request.getParameter("username");
            upass=request.getParameter("password");
            if(uname!=null)
            {
                if(LoginDAO.checkLogin(uname, upass))
                {
                  session.setAttribute("user", uname);
                  session.setAttribute("pass", upass);
                    response.sendRedirect("home.html");
                }    
                else
                {
                    out.println("Invalid user name or password");
                }  
            }    
            
        %>   
        
        <br>
        <a href="register.jsp">Register now click here</a>
        
    </body>
</html>
