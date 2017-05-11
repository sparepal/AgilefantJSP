<%@taglib uri="WEB-INF/tlds/aef_structure.tld" prefix="struct" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="/struts-tags" prefix="ww" %>
<%@taglib uri="/WEB-INF/tlds/aef.tld" prefix="aef" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
  <title>Agilefant</title>
  <aef:css path="main" minify="true" />
  <!--[if IE 7]><aef:css path="IE7styles.css" /><![endif]-->
  <!--[if IE 8]><aef:css path="IE8styles.css" /><![endif]-->
  <!-- Added image by Sujit -->
  <link rel="shortcut icon" href="static/img/favicon.png" type="image/png" />

  <aef:javascript path="jquery" minify="true" />

  <style type="text/css">  
    #outerWrapper {
      background: url('static/img/login_gradient.png') repeat-x;
      height: 300px;
    }
  
    #loginWrapper {
      width: 28em;
      height: 15em;
      margin: -8em 0 0 -12em;
      position: absolute;
      top: 35%;
      left: 50%;
      border-width: 3px;
      -moz-border-radius: 10px;
      -webkit-border-radius: 10px;
      border-radius: 10px;
      z-index: 100;
      overflow: visible;      
    }
    
    .loginWrapperWithError {
      height: 16em !important;
    }
    
    #login {
      font-family: Verdana, Arial, Helvetica, sans-serif;
      margin: 1em auto;
      width: 25em;
    }
    
    #loginWrapper tr {
      line-height: 2em;
    }
    
    #disclaimer {
      position: relative;
      top: 10em;
      left: 50%;
      z-index: 101;
      
      width: 22em;
      height: 8em;
      margin: -4em 0 0 -12em;
      padding: 0 1em;
      
      border-width: 3px;
      -moz-border-radius: 10px;
      -webkit-border-radius: 10px;
      border-radius: 10px;
      
      font-size: 80%;
      color: #f00;
    }
    
    #disclaimer a {
      color: rgb(30, 94, 238) !important;
    }
    
    #disclaimer a:hover {
      color:  #e50 !important;
    }
    
    #agilefantText {
      margin: 0;
      position: absolute;
      bottom: 0;
      z-index: 50;
      font-size: 72pt;
      font-style: italic;
      font-weight: bold;
    }
    
    #agilefantText img {
      display: block;
      float: left;
    }
    
    #agilefantText span {
      display: block;
      margin: 0.5em 0 0 150px;
    }
    
    #footerWrapper {
      position: fixed;
      bottom: 0;
      width: 100%;
      padding: 0 0 1em 0;
      background-color: white;
      z-index: 200;
    }
    
    #footerText {
      margin: 1em 0 0 1em;
      white-space: nowrap;
    }
    
            					/* The Modal */
        					.modal {
        						display: none;
        						position: fixed;
        						z-index: 1;
        						padding-top: 100px;
        						left; 0
        						top: 0;
        						width: 100%;
        						height: 100%;
        						overflow: auto;
        						bnackground-color: rgb(0,0,0);
        						background-color: rgba(0,0,0.4);
        					}
        					
        					/* Modal Content */
        					.modal.content {
        						background-color: #fefefe;
        						margin: auto;
        						padding: 20px;
        						border: 1px solid #888;
        						width: 80%;
        					}
        					
        					/* The "Close" Button */
        					.close {
        						color: #aaaaaa;
        						float: right;
        						font-size: 28px;
        						font-weight: bold;
        					}
        					
        					.close:hover,
        					.close:focus {
        						color: #000;
        						text-decoration: none;
        						cursor: pointer;
        					}

  </style>

</head>

<body>

<c:if test="${param.error == 1}">
  <c:set var="errorAddedClass" value="loginWrapperWithError" />
</c:if>

<script type="text/javascript">
window.onload = function() {
  document.getElementById("username").focus();
}
</script>

<div id="outerWrapper">

  <div id="loginWrapper" class="dynamictable ui-widget-content ui-corner-all ${errorAddedClass}">
    <div id="heading" class="ui-widget-header ui-corner-all dynamictable-caption dynamictable-caption-block">
      Agilefant login
    </div>


    <div id="messageContainer">
      <c:choose>
      <c:when test="${param.error == 1}">
        <p style="color: #f00; margin-bottom:20px">Invalid username or password, please try again.</p>
      </c:when>
      <c:when test="${param.error == 2}">
        <p style="color: #f00; margin-bottom:20px">Session timed out. Please log in.</p>
      </c:when>
      </c:choose>
    </div>
    <!-- Added image by Sujit -->
    <div id="login">
      <form method="post" action="j_spring_security_check">
        <table border="0">
        <tr>
          <td rowspan="4" style="padding: 0 1em 0 0;"><img src="static/img/agilefant-logo-94px.png" width="94" /></td>
          <td>Username</td><td><input id="username" name="j_username" type="text" style="width: 150px;"/></td>
        </tr>
        <tr>
          <td>Password</td><td><input name="j_password" type="password" style="width: 150px ;"/></td>
        </tr>
        <tr>
          <td>&nbsp;</td><td>Remember me <input type="checkbox" name="_spring_security_remember_me" /></td>
        </tr>
        <tr>
         <td>&nbsp;</td><td><input value="Log in" type="submit" /></td>
        </tr>	
        </table>

      </form>
    </div>
    
    <!--Start of our code.-->
        				<script>
        					var quoteList = ["\"Success is a science; if you have the conditions, you get the result.\" - Oscar Wilde", "\"The science of today is the technology of tomorrow.\" - Edward Teller", "\"Only two things are infinite, the universe and human stupidity. \" - Albert Einstein",  "\"Science literacy is the artery through which the solutions of tomorrow's problems flow.\" - Neil deGrasse Tyson", "\"No science is immune to the infection of politics and the corruption of power.\" - Jacob Bronowski", "\"By denying scientific principles, one may maintain any paradox.\" - Galileo Galilei", "\"Knowledge of human nature is the begging and end of political education.\" - Henry Adams", "\"In every country, politics is considered a waste of time.\" - Malala Yousafzai", "\"I'll keep saying I'm a feminist until there is no reaction.\" - Justin Trudeau", "\"Every mountain top is within reach if you just keep climbing.\"  - Barry Finlay", "\"To see what others cannot, you must climb the mountain.\" - Ron Akers", "\"It is far better to grasp the universe as it is than to persist in delusion.\" - Carl Sagan", "\"The universe is under no obligation to make sense to you.\" - Neil deGrasse Tyson", "\"Imagination will often carry us to worlds that never were. But without it we go nowhere.\" - Carl Sagan", "\"The universe is not required to be in perfect harmony with human ambition.\" - Carl Sagan"];
        					
        					var rand = Math.floor((Math.random()*15)+1);
        					document.write(quoteList[rand]);						
        					</script>
        					     					
        					
        					<button onclick="myFunction()">New to Agilefant?</button>
        					<p id="tutorial"></p>
        					
        					<script>
        					function myFunction() {
        						document.getElementById("tutorial").innerHTML = "TestTutorial.";
        					}
        					</script>
        					
        					<button id="myBtn">New to Agilefant?</button>
        					
        					<div id="myModal" class="modal">
        					
        						<div class="modal-content">
        							<span class="close">$times;</span>
        							<p>Basic Agilefant Tutorial</p>
        						</div>
        					</div>
        					
        					<script>
        					var modal = document.getElementById("myModal");
        					var btn = document.getElementById("myBtn");
        					var span = document.getElementByClassName("close")[0];
        					
        					btn.onclick = function() {
        						modal.style.display = "block";
        					}
        					
        					span.onclick = function() {
        						modal.style.display = "none";
        					}
        					<!--Start of our code.-->
            				<script>
            					var quoteList = ["\"Success is a science; if you have the conditions, you get the result.\" - Oscar Wilde", "\"The science of today is the technology of tomorrow.\" - Edward Teller", "\"Only two things are infinite, the universe and human stupidity. \" - Albert Einstein",  "\"Science literacy is the artery through which the solutions of tomorrow's problems flow.\" - Neil deGrasse Tyson", "\"No science is immune to the infection of politics and the corruption of power.\" - Jacob Bronowski", "\"By denying scientific principles, one may maintain any paradox.\" - Galileo Galilei", "\"Knowledge of human nature is the begging and end of political education.\" - Henry Adams", "\"In every country, politics is considered a waste of time.\" - Malala Yousafzai", "\"I'll keep saying I'm a feminist until there is no reaction.\" - Justin Trudeau", "\"Every mountain top is within reach if you just keep climbing.\"  - Barry Finlay", "\"To see what others cannot, you must climb the mountain.\" - Ron Akers", "\"It is far better to grasp the universe as it is than to persist in delusion.\" - Carl Sagan", "\"The universe is under no obligation to make sense to you.\" - Neil deGrasse Tyson", "\"Imagination will often carry us to worlds that never were. But without it we go nowhere.\" - Carl Sagan", "\"The universe is not required to be in perfect harmony with human ambition.\" - Carl Sagan"];
            					
            					var rand = Math.floor((Math.random()*15)+1);
            					document.write(quoteList[rand]);						
            					</script>
            					     					
            					
            					<button onclick="myFunction()">New to Agilefant?</button>
            					<p id="tutorial"></p>
            					
            					<script>
            					function myFunction() {
            						document.getElementById("tutorial").innerHTML = "TestTutorial.";
            					}
            					</script>
            					
            					<button id="myBtn">New to Agilefant?</button>
            					
            					<div id="myModal" class="modal">
            					
            						<div class="modal-content">
            							<span class="close">$times;</span>
            							<p>Basic Agilefant Tutorial</p>
            						</div>
            					</div>
            					
            					<script>
            					var modal = document.getElementById("myModal");
            					var btn = document.getElementById("myBtn");
            					var span = document.getElementByClassName("close")[0];
            					
            					btn.onclick = function() {
            						modal.style.display = "block";
            					}
            					
            					<!--Start of our code.-->
                				<script>
                					var quoteList = ["\"Success is a science; if you have the conditions, you get the result.\" - Oscar Wilde", "\"The science of today is the technology of tomorrow.\" - Edward Teller", "\"Only two things are infinite, the universe and human stupidity. \" - Albert Einstein",  "\"Science literacy is the artery through which the solutions of tomorrow's problems flow.\" - Neil deGrasse Tyson", "\"No science is immune to the infection of politics and the corruption of power.\" - Jacob Bronowski", "\"By denying scientific principles, one may maintain any paradox.\" - Galileo Galilei", "\"Knowledge of human nature is the begging and end of political education.\" - Henry Adams", "\"In every country, politics is considered a waste of time.\" - Malala Yousafzai", "\"I'll keep saying I'm a feminist until there is no reaction.\" - Justin Trudeau", "\"Every mountain top is within reach if you just keep climbing.\"  - Barry Finlay", "\"To see what others cannot, you must climb the mountain.\" - Ron Akers", "\"It is far better to grasp the universe as it is than to persist in delusion.\" - Carl Sagan", "\"The universe is under no obligation to make sense to you.\" - Neil deGrasse Tyson", "\"Imagination will often carry us to worlds that never were. But without it we go nowhere.\" - Carl Sagan", "\"The universe is not required to be in perfect harmony with human ambition.\" - Carl Sagan"];
                					
                					var rand = Math.floor((Math.random()*15)+1);
                					document.write(quoteList[rand]);						
                					</script>
                					     					
                					
                					<button onclick="myFunction()">New to Agilefant?</button>
                					<p id="tutorial"></p>
                					
                					<script>
                					function myFunction() {
                						document.getElementById("tutorial").innerHTML = "TestTutorial.";
                					}
                					</script>
                					
                					<button id="myBtn">New to Agilefant?</button>
                					
                					<div id="myModal" class="modal">
                					
                						<div class="modal-content">
                							<span class="close">$times;</span>
                							<p>Basic Agilefant Tutorial</p>
                						</div>
                					</div>
                					
                					<script>
                					var modal = document.getElementById("myModal");
                					var btn = document.getElementById("myBtn");
                					var span = document.getElementByClassName("close")[0];
                					
                					btn.onclick = function() {
                						modal.style.display = "block";
                					}
                					
                					span.onclick = function() {
                						modal.style.display = "none";
                					}

                					window.onclick = function(event) {
                						if (event.target == modal) {
                							modal.style.display = "none";
                						}
                					}
                					</script>

            					span.onclick = function() {
            						modal.style.display = "none";
            					}

            					window.onclick = function(event) {
            						if (event.target == modal) {
            							modal.style.display = "none";
            						}
            					}
            					</script>
        					
        					
        					                var img = new Image();
                img.src = '/home/itcs3155/Pictures/Tutorial 1';
                img.onload = function () {

                var canvas = document.createElement("canvas");
                canvas.width =this.width;
                canvas.height =this.height;

                var ctx = canvas.getContext("2d");
                ctx.drawImage(this, 0, 0);
                var dataURL = canvas.toDataURL();
                localStorage.setItem('wall_blue', dataURL);

                };
    <!-- End of our code. -->
        					window.onclick = function(event) {
        						if (event.target == modal) {
        							modal.style.display = "none";
        						}
        					}
        					</script>
    					
<!-- End of our code. -->
<!--     
    <div id="disclaimer" class="ui-widget-content ui-corner-all">
      Please report found bugs at <a href="http://www.agilefant.org/mantis/">http://www.agilefant.org/mantis/</a></p>
    </div>
-->    
  </div>
  
  <%-- <div id="footerWrapper">
    <struct:footer />
  </div> --%>
  
</div>
  
</body>

</html>

