

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
	body{margin:0; font-size:14px; background:#FFF;}
	#box{width:400px; height:300px; margin:100px auto 0;}
	#tab_nav{margin:0; padding:0; height:25px; line-height:24px;}
	#tab_nav li{float:left; margin:0 3px; list-style:none; border:1px solid #999; border-bottom:none; height:24px; width:120px; text-align:center; background:#FFF;}
	a{font:bold 14px/24px , Verdana, Arial, Helvetica, sans-serif; color:green; text-decoration:none;}
	a:hover{color:red;}
	#tab_content{width:490px; height:273px; border:1px solid #999; font:bold 12px , Verdana, Arial, Helvetica, sans-serif; text-align:left; background:#FFF; overflow:hidden;}
	#t_1,#t_2,#t_3{width:100%; height:273px;}
</style>
<style type="text/css">
.cssmenu {
	width: 100%;
	height: 27px;
	margin: 0;
	padding: 0;
	background: #000000 url(menu_assets/images/bg-bubplastic.gif) top left repeat-x;
}
.cssmenu ul {
	list-style: none;
	margin: 0;
	padding: 0;
}
.cssmenu ul li {
	float: left;
	margin: 0;
	padding: 0;
	background: transparent url(menu_assets/images/bg-bubplastic-button.gif) top left no-repeat;
}

.cssmenu ul li a {
	display: block;
	height: 27px;
	padding-left: 35px;
	float: left;
	text-transform: uppercase;
	font-family: 'Helvetica Neue',helvetica,'microsoft sans serif',arial,sans-serif;
	font-size: 70%;
	color: #FFFFFF;
	text-decoration: none;
}

.cssmenu ul li a span {
	display: block;
	float: left;
	height: 22px;
	padding-top: 5px;
	padding-right: 35px;
	background: transparent url(menu_assets/images/bg-bubplastic-button.gif) top right no-repeat;
	cursor: pointer;
}


.cssmenu ul li a:hover,
.cssmenu ul li.active a {
	background: transparent url(menu_assets/images/bg-bubplastic-h-orange.gif) top left no-repeat;
}
.cssmenu ul li a:hover span,
.cssmenu ul li.active a span {
	background: transparent url(menu_assets/images/bg-bubplastic-h-orange.gif) top right no-repeat;
}

</style>


        <title>Online Shopping Administration</title>
    </head>
    <body>
     <div align="center">
 <div class='cssmenu'>

</div>    
        <%String msg=request.getParameter("msg");
if(msg!=null){
    %>
<label><font color="red"><%=msg%></font></label> 
<% 
}
 %>
        <h1>Panel Admina</h1>
        
      <div id="box">
	<ul id="tab_nav">
    	<li><a href="#t_1">DODAJ PRODUKT</a></li>
        <li><a href="#t_2">AKTUALIZUJ</a></li>
        <li><a href="#t_3">USUŃ</a></li>
    </ul>
    <div id="tab_content">
    	<div id="t_1">
       <h1>Dodaj nowy produkt do bazy danych</h1> <br>
       
       <form name="frm" action="saveRecord.jsp">
       <table>
           <tr><td bgcolor="#FF9900">Produkt ID</td><td> <input type="text" name="product_id"></td></tr>
       <tr><td bgcolor="#FF9900">Kategoria ID</td><td> <input type="text" name="cat_id"></td></tr>
       <tr><td bgcolor="#FF9900">Nazwa Produktu</td><td> <input type="text" name="product_name"></td></tr>
       <tr><td bgcolor="#FF9900">Cena</td><td> <input type="text" name="price"></td></tr>
       <tr><td bgcolor="#FF9900">Stock</td><td>  <input type="text" name="stock"></td></tr>
       <tr><td bgcolor="#FF9900">Img</td><td>  <input type="text" name="img"></td></tr>
       <tr><td bgcolor="#FF9900">Action</td><td>  <input type="text" name="action"></td></tr>
       </table>
      <input type="submit" name="submit" value=" Submit ">
       </form>  
      

        </div>
        <div id="t_2">
       <h1>Aktualizuj produkt w bazie danych</h1> <br>
       <form name="frm" action="updateRecord.jsp">
       <table>
       <tr><td bgcolor="#FF9900">Product ID</td><td> <input type="text" name="product_id"></td></tr>
       <tr><td bgcolor="#FF9900">Kategoria ID </td><td> <input type="text" name="cat_id"></td></tr>
       <tr><td bgcolor="#FF9900">Nazwa Produktu</td><td> <input type="text" name="product_name"></td></tr>
       <tr><td bgcolor="#FF9900">Cena</td><td>  <input type="text" name="price"></td></tr>
       <tr><td bgcolor="#FF9900">Stock</td><td>  <input type="text" name="stock"></td></tr>
       <tr><td bgcolor="#FF9900">Img</td><td>  <input type="text" name="img"></td></tr>
       <tr><td bgcolor="#FF9900">Action</td><td>  <input type="text" name="action"></td></tr>
       </table>
      <input type="submit" name="submit" value=" Submit ">
      </form>  
            
        </div>
        <div id="t_3">
            <h1>Usuń produkt z bazy danych</h1> <br>
             <form name="frm" action="deleteRecord.jsp">
          <table>
       <tr><td bgcolor="#FF9900">Podaj ID produktu, który chcesz usunąć</td><td><input type="text" name="product_id"></td></tr>
     </table>
        <input type="submit" name="submit" value=" Submit ">
      </form>
        </div>
       
      

        </div>
    </div>
</div>

    </body>
</html>

