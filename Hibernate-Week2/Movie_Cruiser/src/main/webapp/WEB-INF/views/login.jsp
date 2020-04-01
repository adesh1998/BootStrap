<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<style>
.htrack{
color:white;
background-color: black;
font: size 30;
padding-top: 10px;
padding-left: 20px;
}
.benefit{
background-color:#33cccc;
}
.log{
background-color:#9999FF;
}

.material-icons {
	   vertical-align: middle;
}
#iconsize{
    font-size:18px;
    }

.image{
    width: 100%;
}
.title{
font-size: 20px;
font-weight: bolder;
}
.price{
    padding-top: 10px;
    font-size: 13px;
    text-align: right;
    color: #685e5e;
}
.delivery{
    text-align: right;
}
p{
    padding-top: 20px;
}
.logo{
    height: 60px;
    width: 60px;
    padding-left: 10px;
}
.free{

    font-size: 12px;
    color: white;
    background-color:#079494;
}

footer{
    text-align: left;
    position: relative;
  left: 0;
  bottom: 0;
    width: 100%;
    background-color: black;
    height:40px;
color: white;
margin-top: 10px;
padding-left: 10px;

}
.statusActive{
    background-color: green;
    border-radius: 5px;
    padding: 1px;
    color: white;
}
.statusInactive{
background-color: red;
border-radius: 5px;
color: white;
padding: 1px;
}
.text-title{
    font-size: 12px;
}
.topBack{
    background-image:url("https://ambcinemas.in/images/screen3.jpg");
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
}
.findfood{
    color: white;
    float: left;
}

.addFav{
    font-size: 25px;
    margin-top: 7px;
    color: red;
}

.addCart{
    margin-top: 7px;
}
</style>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src= "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"> 
    </script>    
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"> 
    </script> 


<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

</head>
<body>
   
    
    <div class="container-fluid">
        <div class="row">
        <c:forEach items="${inf}" var="temp">
            <div class="col-sm-3">
                <div class="card">
                  <!-- <img class="card-img-top" src="https://i.pinimg.com/originals/6a/9b/5c/6a9b5ce9fcb33ac22279436dfe1b07ba.png" alt="Image1"> -->
                    <div class="card-body">
                    <div class="card-title title">
                        <div class="row">
                            <div class="col-8"><label> ${temp.title} </label></div>
                        
                        <div class="col-4">
                            <div class="price"><i class="fa fa-inr">${temp.boxOffice}</i></div>
                        </div>
                        </div>
                    </div>
                    <div class="card-text">
                     <div class="row">
                        <div class="col-6 text-title">
                           <div><label class="statusActive">Active</label> <label> ${temp.genre} </label></div>
                        </div>
                        <div class="col-6 text-title">
                           <div class="float-right">
                            <div>
                               <i class="far fa-clock"></i> Launch
                            </div>    
                            <div>  ${temp.dateOfLaunch}  </div>
                            </div>
                            </div> 
                     </div>           
                     <div class="row">
                        <div class="col-6 addCart">
                            <button type="button" class="btn btn-primary" >
                                View
                              </button>
                     </div>
                        <div class="col-6">
                            <div class="addFav float-right">
                                    <i onclick="myFunction(this)" class="fa fa-heart" data-toggle="modal" data-target="#myModal"></i>
                        </div>
                     </div>
                     </div>
                      
                </div>
                </div>
           </div>
            </div>
          
           </c:forEach>    
               
            </div>
            </div>

  
</body>
</html>