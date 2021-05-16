

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ORDER PRoDUCT</title>
        <style type="text/css">
body {
 background: url('nature.jpg') no-repeat;
 background-size: none;
 margin-left: 10%;
}

ul {
 margin: 0px;
 padding: 0px;
 list-style: none;
 font-family: arial;
}

ul li {
 float: left;
 width: 150px;
 height: 40px;
 background-color: white;
 opacity: .8;
 line-height: 40px;
 text-align: center;
 font-size: 20px;
}

ul li a {
 text-decoration: none;
 color: black;
 display: block;
}

ul li a:hover {
 background-color: green;
}

ul li ul li{
 display: none;
}

ul li:hover ul li {
 display: block;
}
</style>
    </head>
    <body>
        
       <div class='cssmenu'>
<ul>
   <li class='active '><a href='index.jsp'><span>Home</span></a></li>
   <li><a href='logincust.jsp'><span>Login</span></a></li>
   <li><a href='index.jsp'><span>About</span></a></li>
   <li><a href='#'><span>Contact</span></a></li>
</ul>
</div> 
       <form name="frm" action="updatOrder.jsp">
       <div align="center">
           <h1>ORDER PRUDUCT</h1>
       <table>
       <tr><td bgcolor="#FF9900">Customer ID</td><td> <input type="text" name="CUSTID"></td></tr>
       <tr><td bgcolor="#FF9900">Customer Name </td><td> <input type="text" name="CUSTNAME"></td></tr>
       <tr><td bgcolor="#FF9900">Customer Phone </td><td> <input type="text" name="CUSTPHONE"></td></tr>
       <tr><td bgcolor="#FF9900">Customer Email</td><td>  <input type="text" name="CUSTMAIL"></td></tr>
       <tr><td bgcolor="#FF9900">Customer Address</td><td>  <input type="text" name="CUSTADDR"></td></tr>
       <tr><td bgcolor="#FF9900">Product ID</td><td>  <input type="text" name="OPID"></td></tr>
       </table>
      <input type="submit" name="submit" value=" Submit ">
       </div>
       </form>
    </body>
</html>
