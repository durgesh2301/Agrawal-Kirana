<!DOCTYPE html>
<!--
     Document   : feedback
     Created on : Mar, 2018, 12:00:20 PM
     Author     : Harsh 
-->
<html>
    <head>
        <title>Feedback Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <style type="text/css">            
            #feed
     	    {
                display: inline-block;
                margin: 1% 0% 0% 25%;
                width: 53%;
                padding:2% 0% 2% 2%;
                position: fixed;
                background-color: rgba(0,0,0,0.7);
            }
            body
            {
            	font-family: Arial, Helvetica, sans-serif;
                background-repeat: no-repeat;
                background-size: cover;
                background-attachment: fixed;
                color:white;
            }
            h1
            {
                    font-family: cursive;
            }
            #goback{
                color:white;
                margin-left: 80px;
                margin-right: 80px;
            }
            #log
            {
                font-size: 18px;
                font-family:serif;
            }
            textarea{
                resize:none;
            }
            .blinking{
                animation:blinkingText 0.5s infinite;
            }
            @keyframes blinkingText{
                0%{     color: red;    }
                20%{     color: red;    }
                30%{     color: red;    }
                88%{    color: transparent; }
                100%{   color: #ff3333;    }
            }
            .mic
            {
                  font-size: 28px  !important;
                  margin-left: 30% !important;
            }

	</style>
    </head>
    <body background="feed.jpg"  method="post">
            <div id="feed">
                <FORM action="feedback_val.jsp" method="post">
                 <center>
                     <h1>Give Feedback...</h1></center>
                 <br>
                    <table cellpadding="5px">
            <tr>
            	<td>
 				<h3><b>Email:<b/></h3> 
				</td>
				<td>	
                                    <input type="email" class="form-control" equired name="email">
                </td>
            </tr>                        
                        
            <tr>
            	<td>
 				<h3><b>Subject:<b/></h3> 
				</td>
				<td>	
				<textarea rows="4" cols="60" id="final_span1" class="final" required name="subject"></textarea>
                </td>
            </tr>
            <tr>
            	<td>
                <h3><b>Feedback:</b></h3> 
                 <i class="fas fa-microphone mic" id="start_button" onclick="startDictation(event)"></i>
				</td>
				<td>
				<textarea rows="8" cols="60" id="final_span" class="final" required name="feedback">
                               </textarea>
            	</td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <h6><span class="blinking">
              <% 
             if(request.getAttribute("Message")!=null)
             {
                 out.println(request.getAttribute("Message"));
             }
                %>
                </span>
              </h6>
                </td>
            </tr>
            <tr>
            	<td>
            		<button type='submit' class="btn btn-success"> Submit </button>
                </td>
                <td>
                	<button type='reset' class="btn btn-danger"> Reset </button>
                        <a class="btn btn-outline-success" href="index.html" id="goback">Go Back to Home</a>
                           </td>
            </tr>
        </table>
    </FORM>  
 </div>
                
<script type="text/javascript">
var final_transcript = '';
var recognizing = false;

if ('webkitSpeechRecognition' in window) {

  var recognition = new webkitSpeechRecognition();

  recognition.continuous = true;
  recognition.interimResults = true;

  recognition.onstart = function() {
    recognizing = true;
  };

  recognition.onerror = function(event) {
    console.log(event.error);
  };

  recognition.onend = function() {
    recognizing = false;
  };

  recognition.onresult = function(event) {
    var interim_transcript = '';
    for (var i = event.resultIndex; i < event.results.length; ++i) {
      if (event.results[i].isFinal) {
        final_transcript += event.results[i][0].transcript;
      } else {
        interim_transcript += event.results[i][0].transcript;
      }
    }
    final_transcript = capitalize(final_transcript);
    final_span.innerHTML = linebreak(final_transcript);
    interim_span.innerHTML = linebreak(interim_transcript);
    
  };
}

var two_line = /\n\n/g;
var one_line = /\n/g;
function linebreak(s) {
  return s.replace(two_line, '<p></p>').replace(one_line, '<br>');
}

function capitalize(s) {
  return s.replace(s.substr(0,1), function(m) { return m.toUpperCase(); });
}

function startDictation(event) {
  if (recognizing) {
    recognition.stop();
    return;
  }
  final_transcript = '';
  recognition.lang = 'en-US';
  recognition.start();
  final_span.innerHTML = '';
}

</script>
    </body>
</html>
