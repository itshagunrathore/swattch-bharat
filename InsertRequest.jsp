<% 
   if(session.isNew())
     response.sendRedirect("index.jsp");
%>
<%@page import="java.io.InputStream"%>
<%@page import="dao.SwattchDAO"%>
<%@page import="model.Complain"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Complain</title>
     <link rel="shortcut icon" type="image/png" href="images/leaf.png">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/fontawesome-all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/complain1.css">
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
        <li><a href="contact.html"><i class="fas fa-phone"></i>&nbsp   CONTACT US</a></li>
        <li><a href="signup.html">SIGNUP/REGISTER</a></li>
        

      </ul>
    </div>
  </div>
</nav>



<section class="back">
 <div class="container">
      <div class="row main">
        <div class="main-login main-center">
        <div class="heading">
        <h3>Complains</h3><br><br>
         </div>


            
      <form  method="post" action="InsertRequest.jsp">
                
            <div class="form-group">
              <label for="name" class="cols-sm-2 control-label">Your Name</label>
              <div class="cols-sm-10">
                <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                  <input type="text" class="form-control" name="fname"  placeholder="Enter your Name"/>
                </div>
              </div>
            </div>

            <div class="form-group">
              <label for="email" class="cols-sm-2 control-label">Your Email</label>
              <div class="cols-sm-10">
                <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                  <input type="text" class="form-control" name="mailid" id="email"  placeholder="Enter your Email"/>
                </div>
              </div>
            </div>

            <div class="form-group">
              <label for="email" class="cols-sm-2 control-label">Contact no.</label>
              <div class="cols-sm-10">
                <div class="input-group">
                  <span class="input-group-addon"><i class="fas fa-phone" aria-hidden="true"></i></span>
                  <input type="text" class="form-control" name="pno"  placeholder="Enter your number"/>
                </div>
              </div>
            </div>

<!--            <div class="form-group">
              <label for="file" class="cols-sm-2 control-label">Image</label>
              <div class="cols-sm-10">
                <div class="input-group">
                  <span class="input-group-addon"><i class="fas fa-images" aria-hidden="true"></i></span>
                  <input type="file" class="form-control" name="photo"  placeholder="Upload Picture"/>
                </div>
              </div>
            </div>-->

            <div class="form-group">
              <label for="text" class="cols-sm-2 control-label">Description</label>
              <div class="cols-sm-10">
                <div class="input-group">
                  <span class="input-group-addon"><i class="fas fa-lightbulb" aria-hidden="true"></i></span>
                 <!-- <input type="textarea" class="form-control" name="text" id="text"  placeholder="Problem Description"/>-->
                 <textarea class="form-control" rows="3" name="txt1"></textarea>
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

<section class="feedback">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <h3>What people say? 
           <hr class="line1">
           <hr class="line1">
        </h3>
      </div>

      <div class="col-md-4">
         <img src="images/s1.jpg" height="250px" width="100%">
         <div class="img_cnt">
         	<p>"Thank you soo much mission swachhta for solving my problem, I am suffering from this garbage from last few weeks"
         	Thank you for taking such a big action towards this problem"</p>
         </div>
      </div>


      <div class="col-md-4">
         <div class="equal">
         <img src="images/s3.jpg" height="250px" width="100%">
         <div class="img_cnt">
         	<p>"There were lot of stray animals in our area and because of them there was so much dirt and bad smell also some times dangerous accidents happened.
              I took photo of this condition and upload ‘Mission Swacchata’ website and got quick help.</p>
         </div>
         </div>
      </div>



      <div class="col-md-4">
         <img src="images/s4.jpg" height="250px" width="100%">
         <div class="img_cnt">
         	<p>"There was so much dirt in our area due to which lot of problem was occurring , various diseases were spreading , then I click a photo of my area and upload it on ‘Mission Swacchata’ website.
                    I got immediate help and now our area is clean and dirt free. Thanks a lot ‘Mission Swacchata’!!!"</p>
         </div>
      </div>
    	
    </div>
  	
  </div>
	
</section>


<section class="cmnts">
   <div class="container">
      <div class="row">
        <div class="col-md-12">

        <div class="container">
           <div class="well">"Indore has become no one cleanest city in India. All thanks to citizens of Indore and India"</div>
         </div>


        <div class="container">
          <div class="well">"Great initiative by our Honorable Prime Minister of India and it will reduce diseases upto a grate level"</div>
        </div>



        
                 <form>
            <div class="form-group">
                <label for="comment">Comment:</label>
                 <textarea class="form-control" rows="3" id="comment"></textarea>
             </div>
         </form>
          
        </div>
      </div> 
   </div>
</section>


<section class="join">
   <div class="container">
     <div class="col-md-12">
     <h2>Join us</h2>
     <p>Stay up to date on the latest news and help spread the word.</p>
       <div class="media">

       <div class="col-md-3">
       <div class="social1">
       <h3><i class="fas fa-envelope"></i><br>Subscribe</h3>  
       </div>
       </div>


       <div class="col-md-3">
       <div class="social2">
       <h3><i class="fab fa-twitter"></i><br>Twitter</h3>  
       </div>
       </div>


       <div class="col-md-3">
       <div class="social3">
       <h3><i class="fab fa-facebook-f"></i><br>Facebook</h3>  
       </div>
       </div>


       <div class="col-md-3">
       <div class="social4">
       
       <h3><i class="fab fa-youtube"></i><br>Youtube</h3>  
       </div>
       </div>

      

         

       </div>
       
     </div>
     
   </div>
  
</section>


<footer class="end">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <h4> &copy; Ministry of Housing and Urban Affairs,GOVERNMENT OF INDIA </h4>
      </div>
    </div>
  </div>
</footer>



  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/fontawesome-all.min.js"></script>

<!--
         	<p>"Great initiative by our Honorable Prime Minister of India and it will reduce diseases upto a grate level"</p>
         	<p>"Indore has become no one cleanest city in India. All thanks to citizens of Indore and India"</p>
         	<p>""</p>
  -->
        <%
           try
            {
                out.print("1");
                String fname=null,lname,pno,email,text;
                fname = request.getParameter("fname");
                if (fname!=null)
                {
                    out.println("4");
                //Part filePart;
                //InputStream inputStream = null;
                    //filePart = request.getPart("photo");
                    lname=request.getParameter("lname");                        
                    pno=request.getParameter("pno");
                    email=request.getParameter("mailid");
                    text=request.getParameter("txt1");
                    
                //inputStream = filePart.getInputStream();

                Complain c=new Complain();
                c.setFname(fname);
                c.setLname(lname);
                c.setPno(pno);
                c.setEmail(email);
                c.setTxtArea(text);
              //  c.setIs(inputStream);
               
                out.print("6"); 
                SwattchDAO sd = new SwattchDAO();
                //
                
                if (sd.insertRecord(c)) {
                    out.print("saved");
                response.sendRedirect("thanks.html");
                }
                else
                {
               out.print("not saved");
               }
                
                }
            }
            catch (Exception ex) {
                System.out.println(ex);
      }         %>
           
  </body>
</html>
