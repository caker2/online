

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
.newsletter{
width:500px;
padding:60px;
text-align:center;
box-shadow:0 0 20px #00000060;
}
.txtb{
 width:100%;
 height:70px;
 background:pink;
 border-radius:40px;
 position:relative;
 margin-top:40px;

}
.txtb input{
width:100%;
height:70px;
border-radius:40px;
border:0;
background:none;
padding:0 30px;
outline:none;
padding-right:80px;
}
.txtb button{
background:pink;
border:0;
width:50px;
height:50px;
border-radius:50%;
position:absolute;
right:10px;
top:10px;
outline:none;
cursor:pointer;
color:#fff;
transition:0.3s linear;
}
.txtb button:hover{
opacity:.5;

} 
    
    </style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div clas="newsletter">
<div class="txtb">
     <input type="text" placeholder="Enter email">
       <button class="button" type="button" name="button">SUBSCRIBE</button>
</div>
           </div>
    </body>
</html>
