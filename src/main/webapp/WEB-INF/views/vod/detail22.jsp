<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
ul{
            list-style-type: none;
            margin: 0;
         padding: 0;
          

        }
        li .bb {
         display: block;
         text-decoration: none !important;
         color: black;
         transition: all 0.5s;
            font-weight: 520;
            font-size: 13px;
            
      } 
       
        li .bb:hover {
            color: black;
         text-transform:uppercase;
      }  

        li .bb:after {
             display:block;
             content: '';
             border-bottom: solid 3px rgb(31, 69, 97);  
             transform: scaleX(0);  
             transition: transform 250ms ease-in-out;
            }

            li .bb:hover:after { transform: scaleX(1); }
            li .bb.fromRight:after{ transform-origin:100% 50%; }
            li .bb.fromLeft:after{  transform-origin:  0% 50%; }
            
        .menu{
           display: block;
            float: left;
            margin-left: 45px;
            margin-top :25px;
            background-color: rgba(224, 224, 224, 0.3);
            width: 200px;
            height: 900px;
        }
      
        
    </style>
</head>
<body>
  
  
   
  <div class="menu">
        
            <table>
               　
             <br><br>

                <tr>
                    <td>
                        <ul class="list" style="-webkit-padding-start:10px;">
                            <li style="font-weight: bold;">MY VOD</li>
                            <hr>
                            
                            <c:url var="mycart" value="mycart.do">
    							<c:param name="userNo" value="${ loginUser.userNo }"/>
			
							</c:url>
							
							<c:url var="mywish" value="mywish.do">
    							<c:param name="userNo" value="${ loginUser.userNo }"/>
			
							</c:url>
                            
                            
                            
                            
                            
                              <li><a class="bb" href="${ mycart }">VOD 장바구니</a></li><br>
                            <li><a  class="bb" href="${ mywish }">VOD 위시리스트</a></li>
                        </ul>
                    </td>
                </tr>
            </table>
       
    </div>
    

    
    

   
</body>
</html>