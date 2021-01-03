<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <html>
    <head>
      <title>Receipt</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
        <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
  
       <style>
         body
    section
    {
        padding:1vh 0vh;
    }


        
    .navig{
        height:12%;
        width:100%;
        background-color:white;
        position:fixed;
        z-index:1;
    }
    .div
    {
        padding-top:8vh;
        padding-bottom:8vh;
    }
    .button{
        margin: 0% 47.5%;
    }
    .ul
    {
        padding:0% 0% 2% 0%;
    }
    .a{
        border:1px solid black;
        display: flex;
        justify-content: center;
        width: 154.3px;
        background-color: inherit;
        float: left;
        border: none;
        outline: none;
        color: rgb(0, 0, 0);
        font-weight: bold;
        font-size: 2.5vh;
    }
    .a:active{
        background:black;

    }
    .a:hover{
        color: black;
        border: none;

        background:#797979;
    }
    .nav-tabs{

        color:white;
        background: transparent;
    }
    .nav-link1{
        color:black;
        height: 60%;
        text-align: center;
        margin-left:75%;
        border:none;
        border-radius: 10%;
        background-color:white;
    }
    .nav-link1:hover{
        color: #fff;
    background: #4C5A64; /* old browsers */
    background: -moz-linear-gradient(top, rgba(52, 230, 206, 0.7) 3%, rgba(38, 212, 189, 0.7) 4%, rgba(32, 197, 175, 0.7) 100%); /* firefox */
    background: -webkit-gradient(linear, left top, left bottom, color-stop(3%,rgba(42, 155, 138, 0.7)), color-stop(4%,rgba(27, 134, 120, 0.7)),color-stop(100%,rgba(26, 94, 100, 0.7))); /* webkit */ 
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#4C5A64', endColorstr='#2E3940',GradientType=0 ); /* ie */
    }
    .nav-link{
        color:black;
    }
    .b{
        padding:2% 1% 0% 1%;
        margin-top: 5%;
        margin-left:0%;
        height:60%;
        position:relative;
        /*background:linear-gradient(to top,rgb(121, 119,119) 4%,rgb(109, 108, 108) 24%);*/
        background-attachment:fixed;
        background:white;
        border-radius: 1%;
        box-sizing: border-box;
        box-shadow: 0.5px 0.5px 4px 4px rgba(0,0,0,0.6);
        }
    .p{
        text-align: center;
        font-style: italic;
        font-weight: bold;
     }
    .submit {
                    text-align: center;
                    font-family: 'Roboto Slab', serif;
                    margin-left: 0%;
                    padding-top: -1%;
                    margin-top: -1%;
     
         }

    .bg{
        background-image: url(blacky.jpg);
     } 
    .box .inputbox {
        position: relative;
       
    }
    .box{
        padding-top:10%;
    }

    .box .inputbox input {

        width: 80%;
        padding:5% 5% 0 5%;
        font-size: 19px;
        color:black;
        font-family: 'Times New Roman', Times, serif;
        margin-bottom: 8%;
        margin-left: 10%;
        border: none;
        border-bottom: 2px solid rgb(35, 36, 41);
        transition: 0.2s ease-in-out; 
        outline: none;
        background: transparent;
    }

    .box .inputbox label{
        position: absolute;
        top:0;
        padding:4% 0;
       
        font-family: sans-serif;
        font-size: 10px;
        opacity: 0.8;
        pointer-events: none;
        transition: .5s; 
    }

    .fpass{
        margin-left:84%;
            padding:1% 0% 4% 0%;
    }
    .boxdisplay{
        width:15%;
        height: 7%;
        text-align:center;
        color:white;
        border:1px solid grey;
        margin-left: 50%;
        margin-top: -4%;
    }
    .print{
        height: 5.5%;
        width: 5%;
        
        color: black;
        border-radius: 10%;
        cursor:pointer;
        margin-left:40%;
                margin-top:-2.5%;
        font-weight: bold;
    text-shadow: 1px 1px #1f272b;

    border-style:inset;
    border-radius: 7%;
    -moz-border-radius: 3%;
    -webkit-border-radius: 3%;
    background: transparent; /* old browsers */
    -webkit-transition-duration: 0.4s; /* Safari */
      transition-duration: 0.4s;
    box-shadow: 1px 2px 1px rgba(0,0,0,0.2); /* CSS3 */
    -moz-box-shadow: 1px 1px 1px rgba(0,0,0,0.2); /* Firefox */
    -webkit-box-shadow: 1px 1px 1px rgba(0,0,0,0.2); /* Safari, Chrome */
     }

     .print:hover {
    color: #fff;
    background: #4C5A64; /* old browsers */
    background: -moz-linear-gradient(top, rgba(52, 230, 206, 0.7) 3%, rgba(38, 212, 189, 0.7) 4%, rgba(32, 197, 175, 0.7) 100%); /* firefox */
    background: -webkit-gradient(linear, left top, left bottom, color-stop(3%,rgba(42, 155, 138, 0.7)), color-stop(4%,rgba(27, 134, 120, 0.7)),color-stop(100%,rgba(26, 94, 100, 0.7))); /* webkit */ 
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#4C5A64', endColorstr='#2E3940',GradientType=0 ); /* ie */
    }
    .bt{
        height: 5%;
        width: 5%;
        
        color: black;
        border-radius: 10%;
        cursor:pointer;
        margin-left:15%;
        font-weight: bold;
    text-shadow: 1px 1px #1f272b;

    border-style:inset;
    border-radius: 7%;
    -moz-border-radius: 3%;
    -webkit-border-radius: 3%;
    background: transparent; /* old browsers */
    -webkit-transition-duration: 0.4s; /* Safari */
      transition-duration: 0.4s;
    box-shadow: 1px 2px 1px rgba(0,0,0,0.2); /* CSS3 */
    -moz-box-shadow: 1px 1px 1px rgba(0,0,0,0.2); /* Firefox */
    -webkit-box-shadow: 1px 1px 1px rgba(0,0,0,0.2); /* Safari, Chrome */
     }

     .bt:hover {
    color: #fff;
    background: #4C5A64; /* old browsers */
    background: -moz-linear-gradient(top, rgba(52, 230, 206, 0.7) 3%, rgba(38, 212, 189, 0.7) 4%, rgba(32, 197, 175, 0.7) 100%); /* firefox */
    background: -webkit-gradient(linear, left top, left bottom, color-stop(3%,rgba(42, 155, 138, 0.7)), color-stop(4%,rgba(27, 134, 120, 0.7)),color-stop(100%,rgba(26, 94, 100, 0.7))); /* webkit */ 
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#4C5A64', endColorstr='#2E3940',GradientType=0 ); /* ie */
    }
          </style>
      <%HttpSession ses=request.getSession();
    int totalamt = (int)ses.getAttribute("total");
    String slot=(String)ses.getAttribute("slots");
    String address=(String)ses.getAttribute("address");
    String vehicleno=(String)ses.getAttribute("vehicleno");

    %>
    </head>
    <body>
<form action="RECEIPT">
    <div> 
            <nav class="navbar navig">
  <img src="icon2.png" alt="IMAGE HERE" style="height:9vh;width:4vw;"><h1>ParkEasy</h1>
    <button class="nav-link1" type="button"></button> 
</nav>

      </div>

            <div style="background-image: url(images/blacky.jpg);height:68vh">
     
    					
    					<div class="inputbox" ><br><br>
    						<label><p style="margin-left:294%;margin-top:60%; text-shadow: 1x 1px 2px black;"><font size="5px" color="white">Vehicle_Number:</font></p></label>
                                <div class="boxdisplay">
                                 <b><%= vehicleno %></b>
                                </div>        
                        </div>
                        <div class="inputbox" ><br><br><br>
    						<label><p style="margin-left:820%;margin-top:-25%; text-shadow: 1px 1px 2px black;"><font size="5px" color="white">Slot_id:</font></p></label>
                                <div class="boxdisplay">
                                 <b><%= slot %></b>
                                </div>        
                        </div>
                        <div class="inputbox" ><br><br><br>
    						<label><p style="margin-left:670%;margin-top:-25%; text-shadow: 1px 1px 2px black;"><font size="5px" color="white">Address:</font></p></label>
                                <div class="boxdisplay">
                                 <b><%= address%></b>
                                </div>        
                        </div>
                        <div class="inputbox" ><br><br><br>
    						<label><p style="margin-left:665%;margin-top:-25%; text-shadow: 1px 1px 2px black;"><font size="5px" color="white">Amount:</font></p></label>
                                <div class="boxdisplay">
                                 <b><%= totalamt %></b>
                                </div>        
                        </div>
    					
    		</div><br><br>
    		<div class="submit">
                <button type="submit" class="btn bt">PAY</button>
            </div>
            <button class="print" type="button" onclick="javascript:window.print();">Print</button>
        </div>
    <br>
    </div>
    <br><br>
    <div>
        <footer class="footer-distributed">
    <center>
    <div class="footer-left">
              <img height="5%" width="3%" src="icon2.png">
    <h3>ParkEasy</h3>

    <p class="footer-links">
    <a href="#">About</a>
    |
    <a href="#">Contact</a>
    </p>

    </div>

    <div>
    <i class="fa fa-envelope"></i>
    <p><a href="mailto:support@eduonix.com">support@parkeasy.com</a></p>
    </div>
    <div class="footer-icons"><pre>
    <a href="#"><i class="fa fa-facebook"></i></a>    <a href="#"><i class="fa fa-twitter"></i></a>    <a href="#"><i class="fa fa-instagram"></i></a>     <a href="#"><i class="fa fa-linkedin"></i></a>    <a href="#"><i class="fa fa-youtube"></i></a>
    </pre>
    </div>
    </center>
    </footer>
</div>
</form>
    </body>
    </html>