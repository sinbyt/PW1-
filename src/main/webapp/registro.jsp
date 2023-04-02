<%-- 
    Document   : registro
    Created on : Mar 26, 2023, 10:50:28 AM
    Author     : joe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html lang="en"> 
<head> 
  <meta charset="UTF-8"> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
  <title>Crea tu cuenta</title> 
 

</head> 

<body> 
  <div class="wrapper"> 
    <header>Crea tu cuenta</header> 
    <form action="RegisterServlet" method="get" target="_blank" id="registro" > 
 
      <div class="field"> 
        <div class="input-area"> 
            <input type="text" placeholder="Nombre(s)" id="nombre" name="nombre" required> 
          <i class="icon fas fa-envelope"></i> 
          <i class="error error-icon fas fa-exclamation-circle"></i> 
        </div> 
        <div class="error error-txt">Porfavor ingrese su nombre</div> 
      </div> 
 
      <div class="field"> 
        <div class="input-area"> 
            <input type="text" placeholder="Apellidos" id="apellido" name="apellido" required> 
          <i class="icon fas fa-envelope"></i> 
          <i class="error error-icon fas fa-exclamation-circle"></i> 
        </div> 
        <div class="error error-txt">Porfavor ingrese sus Apellidos</div> 
      </div> 
 
      <div class= "field fecha"> 
        <div class="input-area"> 
            <input type="date" id="fecha" name="fecha" required> 
          <i class="fa-solid fa-calendar-days"></i> 
          <i class="error error-icon fas fa-exclamation-circle"></i> 
        </div> 
        <div class="error error-txt">Porfavor ingrese su fecha de nacimiento</div> 
      </div> 
 
      <div class="field email"> 
        <div class="input-area"> 
            <input type="email" placeholder="Correo electronico" id="correo" name="correo" required> 
          <i class="icon fas fa-envelope"></i> 
          <i class="error error-icon fas fa-exclamation-circle"></i> 
        </div> 
        <div class="error error-txt">Porfavor ingrese su correo</div> 
      </div> 
 
      <div class="field"> 
        <div class="input-area"> 
            <input type="text" placeholder="Nombre de usuario" id="usuario" name="usuario" required> 
          
          <i class="fa-solid fa-user"></i> 
          <i class="error error-icon fas fa-exclamation-circle"></i> 
        </div> 
        <div class="error error-txt">Porfavor ingrese su nombre de Usuario</div> 
      </div> 
 
       
      <div class="field password"> 
        <div class="input-area"> 
            <input type="password" placeholder="Contraseña" id="contra"pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" name="contra" required> 
          
          <i class="icon fas fa-lock"></i> 
          <i class="error error-icon fas fa-exclamation-circle"></i> 
        </div> 
        <div class="error error-txt">Porfavor ingrese su nombre de Usuario</div> 
      </div> 
 
     
 
        <div class="field password"> 
            <div class="input-area"> 
                <input type="password" placeholder="Confirmar Contraseña" id="contra1" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" name="contra1" required> 
               
              <i class="icon fas fa-lock"></i> 
                <i class="error error-icon fas fa-exclamation-circle"></i> 
              </div> 
              
              
             <!-- <div class="error error-txt">
                 <ul> 
                      <li id="Mayus">Tiene que se tener Mayusculas </li> 
                      <li id="Minus">Tiene que tener Minusculas </li> 
                      <li id="Num">Tiene que tener numeros </li> 
                      <li id="Sig">Tiene que tener signos </li> 
                      <li id="Lon"> Tiene que ser mayor que 6. </li> 
                 </ul> 
                 
            </div> -->
       </div> 

    
 
         
         
      <input type="submit" value="Crear cuenta"> 
    </form> 
       </div> 


     
       <link rel="stylesheet" href="styleRegistro.css"> 
       
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/> 
       <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css%22/%3E"> -->
      
       <script src="https://code.jquery.com/jquery-3.6.3.min.js"> </script>
       <script src="registro.js"></script>
      </body> 
      </html>
